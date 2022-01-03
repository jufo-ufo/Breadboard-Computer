from posix import times_result
import matplotlib.pyplot as plt
from matplotlib.ticker import EngFormatter

from ds1054z import DS1054Z

import sys
import os

import datetime
import time

import csv
import json
import configparser

# Simple Util-Functions

def throw_error(E: Exception, msg: str):
    sys.stderr.write(f"{msg}\n     {str(E)}\n")
    sys.stderr.flush()
    exit(-1)

def progressbar(sum, iteration, suffix="", prefix="", length=50):
    percent = ("{0:." + str(1) + "f}").format(100 * (iteration / sum))
    filledLength = int(length * iteration // sum)
    bar = "█" * filledLength + '-' * (length - filledLength)
    sys.stdout.write('\r%s |%s| %s%% %s' % (suffix, bar, percent, prefix))
    sys.stdout.flush()

def format_seconds(value: float) -> str:
    return "{:02.0f}:{:02.0f}:{:02.3f}".format(value / 3600, value / 60, value)

def format_metric_units(n):
    if n > 10**14:
        return "    {:3.2f} P".format(n/(10**15))[-7:]
    elif n > 10**11:
        return "    {:3.2f} T".format(n/(10**12))[-7:]
    elif n > 10**8:
        return "    {:3.2f} G".format(n/(10**9))[-7:]
    elif n > 10**5:
        return "    {:3.2f} M".format(n/(10**6))[-7:]
    elif n > 10**2:
        return "    {:3.2f} k".format(n/(10**3))[-7:]
    elif n >= 1:
        return "    {:3.2f}  ".format(n)[-7:]
    elif n > 10**-4:
        return "    {:3.2f} m".format(n/(10**-3))[-7:]
    elif n > 10**-7:
        return "    {:3.2f} µ".format(n/(10**-6))[-7:]
    elif n > 10**-10:
        return "    {:3.2f} n".format(n/(10**-9))[-7:]
    elif n > 10**-13:
        return "    {:3.2f} p".format(n/(10**-12))[-7:]
    else:
        return "    {:3.2f} f".format(n/(10**-15))[-7:]

# Ploting and processing samples

formatter_time = EngFormatter(unit='s')
formatter_voltage = EngFormatter(unit='V')

def plot_voltage_time(voltage: list[float], timescale: list[float], ax: plt.axes):
    ax.xaxis.set_major_formatter(formatter_time)
    ax.yaxis.set_major_formatter(formatter_voltage)
    plt.plot(timescale, voltage)

def extrat_binary(data: list[float], HIGH_LEVEL = 4.5, LOW_LEVEL=0.7) -> list[bool]:
    res = []
    last_value = False
    for i in data:
        if i >= HIGH_LEVEL:
            res.append(True)
            last_value = True
        elif i <= LOW_LEVEL:
            res.append(False)
            last_value = False
        else:
            res.append(last_value)
    
    return res

def detect_edges(data: list[bool], timescale: list[float], edge="r") -> list[float]:
    edges = []
    last_state = data[0]
    for j,i in enumerate(data):
        if last_state != i:
            if (edge == "r" and last_state == False) or (edge == "f" and last_state == True) or (edge == "fr" or edge == "rf"):
                edges.append(timescale[j])

        last_state = i

    return edges

# Storing Samples

class SampleBucket:

    def __init__(self, storage_path: str) -> None:
        self.path = storage_path
        if not os.path.exists(self.path):
            os.mkdir(self.path)

        self.sample_index = {

        }

    def save_sample(self, sample_number: int, data: list[list[float]], timescale: list[float], active_channels: list[int], temp=21.0) -> None:
        with open(self.path + "/sample_{}.csv".format(sample_number), "w", newline="") as csvfile:
            csv_writer = csv.writer(csvfile, delimiter=" ", quotechar="|", quoting=csv.QUOTE_MINIMAL)
            csv_writer.writerow(["time"] + ["channel{}".format(i) for i in active_channels])
            
            for i in range(1200):
                csv_writer.writerow([timescale[i]] + [j[i] for j in data])

        self.sample_index.update({
            "sample_{}.csv".format(sample_number) : {
                "channels" : active_channels,
                "timestamp" : time.time(),
                "ambient_temperature" : temp
            }
        })

    def save_sample_index(self) -> None:
        with open(self.path + "/sample_index.json", "w") as f:
            f.write(json.dumps(self.sample_index, ))

    def load_sample_index(self) -> None:
        with open(self.path + "/sample_index.json", "r") as f:
            self.sample_index = json.loads(f.read())

    def query_samples(self) -> list[str]:
        return list(self.sample_index.keys())
    
    def query_sample_meta(self, index: str) -> dict:
        return self.sample_index[index]

    def query_sample(self, index: str) -> list[list[float]]:

        with open(self.path + "/{}".format(index), "r") as f:
            reader = csv.reader(f)
            data = list(reader)
            header = data[0][0].split(" ")
            data_raw = data[1:]
            data_res = [[float(j) for j in i[0].split(" ")] for i in data_raw]
            return [[data_res[j][i] for j in range(len(data_res))] for i in range(len(header))]

# Controlling oscilloscope

def connect_scope(address: str) -> DS1054Z:
    try:
        return DS1054Z(address)
    except Exception as E:
        throw_error(E, "An error occurred while connecting to oscilloscope")

def acquire_sample(osc: DS1054Z, active_channels: list[int]):
    osc.run()
    osc.single()

    while osc.query(":TRIGger:STATus?") != "STOP":
        pass

    return [osc.get_waveform_samples(i) for i in active_channels]

def acquire_timescale(osc: DS1054Z) -> list[float]:
    return osc.waveform_time_values

def acquire_active_channels(osc: DS1054Z) -> list[int]:
    return [int(i[-1]) for i in osc.displayed_channels]

class Scope_Config:

    def __init__(self) -> None:
        self.channels_display = [True, False, False, False]
        self.channels_offset = [0, 0, 0, 0]
        self.channels_scale = [2, 2, 2, 2]
        self.channels_probe_ration = [10, 10, 10, 10]

        self.timebase_scale = 20E-6
        self.timebase_offset = 0

        self.trigger_mode = "edge"
        self.trigger_edge_source = 1
        self.trigger_edge_slope = "POS"
        self.trigger_edge_level = 2.5

    def load_from_file(self, filepath: str):
        osc_config = configparser.ConfigParser()
        with open(filepath, "r") as f:
            osc_config.read_file(f)

        channels = osc_config["CHANNELS"]
        self.channels_display = [i.strip() == "True" for i in channels["display"].split(",")]
        self.channels_offset = [float(i) for i in channels["offset"].split(",")]
        self.channels_scale = [float(i) for i in channels["scale"].split(",")]
        self.channels_probe_ration = [float(i) for i in channels["probe_ratio"].split(",")]
        
        timebase = osc_config["TIMEBASE"]
        self.timebase_scale = timebase.getfloat("scale")
        self.timebase_offset = timebase.getfloat("offset")

        trigger = osc_config["TRIGGER"]
        if trigger["mode"] == "EDGE":
            self.trigger_mode = "EDGE"
            self.trigger_edge_source = trigger.getint("source")
            self.trigger_edge_slope = trigger.get("slop")
            self.trigger_edge_level = trigger.getfloat("level")

    def save_to_file(self, filepath: str):
        osc_config = configparser.ConfigParser()
        osc_config["CHANNELS"] = {
            "display" : "".join(["{}, ".format(i) for i in self.channels_display]),
            "offset" : "".join(["{}, ".format(i) for i in self.channels_offset]),
            "scale" : "".join(["{}, ".format(i) for i in self.channels_scale]),
            "probe_ratio" : "".join(["{}, ".format(i) for i in self.channels_probe_ration]),
        }

        osc_config["TIMEBASE"] = {
            "scale" : self.timebase_scale,
            "offset" : self.timebase_offset
        }

        if self.trigger_mode == "edge":
            osc_config["TRIGGER"] = {
                "mode" : "EDGE",
                "source" : self.trigger_edge_source,
                "slop" : self.trigger_edge_slope,
                "level" : self.trigger_edge_level
            }

        else:
            osc_config["TRIGGER"] = {
                "mode" : self.trigger_mode
            }

        with open(filepath, "w") as f:
            osc_config.write(f)

    def load_from_osc(self, osc: DS1054Z, channel_number=4):
        
        self.channels_display = []
        self.channels_scale = []
        self.channels_offset = []
        self.channels_probe_ration = []

        for channel in range(1, channel_number+1):
            self.channels_display.append("CHAN{}".format(channel) in osc.displayed_channels)
            self.channels_scale.append(osc.get_channel_scale(channel))
            self.channels_offset.append(osc.get_channel_offset(channel))
            self.channels_probe_ration.append(osc.get_probe_ratio(channel))

        self.timebase_scale = osc.timebase_scale
        self.timebase_offset = osc.timebase_offset

        self.trigger_mode = osc.query(":TRIGger:MODE?")

        if self.trigger_mode == "EDGE":
            self.trigger_edge_source = int(osc.query(":TRIGger:EDGe:SOURce?")[-1])
            self.trigger_edge_slope = osc.query(":TRIGger:EDGe:SLOPe?")
            self.trigger_edge_level = float(osc.query(":TRIGger:EDGe:LEVel?"))

    def apply_to_osc(self, osc: DS1054Z):
        
        for channel,display in enumerate(self.channels_display):
            osc.display_channel(channel+1, enable=display)

        for channel,offset in enumerate(self.channels_offset):
            osc.set_channel_offset(channel+1, offset)

        for channel,scale in enumerate(self.channels_scale):
            osc.set_channel_scale(channel+1, scale)

        for channel,ratio in enumerate(self.channels_probe_ration):
            osc.set_probe_ratio(channel+1, ratio)

        osc.timebase_offset = self.timebase_offset
        osc.timebase_scale = self.timebase_scale

        osc.write(":TRIGger:MODE {}".format(self.trigger_mode))
        if self.trigger_mode == "EDGE":
            osc.write(":TRIGger:EDGe:SOURc CHAN{}".format(self.trigger_edge_source))
            osc.write(":TRIGger:EDGe:SLOP {}".format(self.trigger_edge_slope))
            osc.write(":TRIGger:EDGe:LEVel {}".format(self.trigger_edge_level))


if __name__ == "__main__":
    data_storage = SampleBucket("data/test")
    data_storage.load_sample_index()

    print(data_storage.query_samples())
    print(data_storage.query_sample("sample_5.csv"))