import sys
import argparse

import json
import random

from matplotlib import pyplot as plt
from matplotlib.ticker import EngFormatter

formatter_freq = EngFormatter(unit='Hz')
formatter_time = EngFormatter(unit='s')
formatter_voltage = EngFormatter(unit='V')

def unit_funktion(n):
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

def average(channel_data, number_of_samples, number_of_traces):
    channels = []
    for i in range(4):
        channels.append([])

        if channel_display[i] == 0:
            continue

        progressbar(number_of_samples, 0,  "Averaging Chanel #{}:".format(i))
        
        for sample_index in range(number_of_samples):
            sum_value = 0
            for trace_index in range(number_of_traces):
                sum_value += channel_data[i][trace_index][sample_index]
            channels[i].append(sum_value/number_of_traces)
            progressbar(number_of_samples, sample_index+1,  "Averaging Chanel #{}:".format(i))
        print("Done!")
    
    return channels

COLOR_PALLET = ["y", "c", "m", "b"]

LOW_VOLTAGE = 0.7
HIGH_VOLTAGE = 3.5

parser = argparse.ArgumentParser(description="Tool for analysing oscilloscope data")
parser.add_argument("-f", "--input-file", help="File to be analysed", required=True)
parser.add_argument("mode_of_operation", help="Mode of Operation", choices=["pd", "avrg", "all"])
args = parser.parse_args()


try:
    with open(args.input_file, "r") as f:
        data = json.loads(f.read())
except Exception as E:
    throw_error(E, "An error occured while loading data")

channel_display = []

for i in data["config"]["channels"]:
    if i["display"] == "ON":
        channel_display.append(1)
    else:
        channel_display.append(0)

channel_data = [[], [], [], []]
number_of_traces = data["number_of_samples"]
number_of_samples = len(data["data"][0][0])

progressbar(number_of_traces, 0, "Extracting:")

for j in range(number_of_traces):
    for i in range(4):
        if channel_display[i] > 0:
            channel_data[i].append([float(k) for k in data["data"][j][i]])
        else:
            channel_data[i].append([])
    progressbar(number_of_traces, j+1, "Extracting:")

print("Done!\n")

if args.mode_of_operation == "avrg":
    channels = average(channel_data, number_of_samples, number_of_traces)

    print("\nDisplaying...")

    plot_number = 0
    time_unit = float(data["config"]["timebase"])*12/(number_of_samples+1)
    time_offset = float(data["config"]["time_offset"]) - float(data["config"]["timebase"])*6
    time_axis = [(i+1)*time_unit + time_offset for i in range(number_of_samples)]

    for i in range(4):
        
        plot_number += 1

        if channel_display[i] == 0:
            continue

        ax = plt.subplot(sum(channel_display), 1, plot_number)
        ax.xaxis.set_major_formatter(formatter_time)
        ax.yaxis.set_major_formatter(formatter_voltage)

        plt.plot(time_axis, channels[i], COLOR_PALLET[i])
        plt.title("Channel #{}".format(i+1), x=-0.1)

    plt.suptitle("Avarage - {}".format(data.get("meta_info")))
    plt.show()

elif args.mode_of_operation == "all":
    print("Displaying...")

    plot_number = 0
    time_unit = float(data["config"]["timebase"])*12/(number_of_samples+1)
    time_offset = float(data["config"]["time_offset"]) - float(data["config"]["timebase"])*6
    time_axis = [(i+1)*time_unit + time_offset for i in range(number_of_samples)]

    for i in range(4):
        
        plot_number += 1

        if channel_display[i] == 0:
            continue

        ax = plt.subplot(sum(channel_display), 1, plot_number)
        ax.xaxis.set_major_formatter(formatter_time)
        ax.yaxis.set_major_formatter(formatter_voltage)

        plt.title("Channel #{}".format(i+1), x=-0.1)
        for j in channel_data[i]:
            plt.plot(time_axis, j, COLOR_PALLET[i])


    plt.suptitle("All Values - {}".format(data.get("meta_info")))
    plt.show()

elif args.mode_of_operation == "pd":
    logic_data = []
    edges = []

    for i in range(4):
        logic_data.append([])

        if channel_display[i] == 0:
            continue
        
        for trace_index in range(number_of_traces):
            logic_data[-1].append([])
            last_state = 0
            for sample_number in range(number_of_samples):
                if channel_data[i][trace_index][sample_number] >= HIGH_VOLTAGE:
                    last_state = 1
                    logic_data[-1][-1].append(1)
                elif channel_data[i][trace_index][sample_number] <= LOW_VOLTAGE:
                    last_state = 0
                    logic_data[-1][-1].append(0)
                else:
                    logic_data[-1][-1].append(last_state)

    for i in range(4):
        edges.append([])

        if channel_display[i] == 0:
            continue

        for trace_index in range(number_of_traces):
            edges[-1].append([])
            last_state = logic_data[i][trace_index][0]
            for sample_number in range(1,number_of_samples):
                if data["edge"] == "rising" and last_state == 0 and logic_data[i][trace_index][sample_number] == 1:
                    edges[-1][-1].append(sample_number+1)
                elif data["edge"] == "rising" and last_state == 1 and logic_data[i][trace_index][sample_number] == 0:
                    edges[-1][-1].append(sample_number+1)
                last_state = logic_data[i][trace_index][sample_number]
    
    time_unit = float(data["config"]["timebase"])*12/(number_of_samples+1)
    time_offset = float(data["config"]["time_offset"]) - float(data["config"]["timebase"])*6
    time_axis = [(i+1)*time_unit + time_offset for i in range(number_of_samples)]
    
    delays = []
    meta_delays = []

    for i in range(1,4):
        delays.append([])
        meta_delays.append({})

        if channel_display[i] == 0:
            continue
        
        for trace_index in range(number_of_traces):
            delays[-1].append((edges[i][trace_index][0] * time_unit + time_offset) - (edges[0][trace_index][0] * time_unit + time_offset))

        meta_delays[-1]["average"] = sum(delays[-1]) / number_of_traces
        meta_delays[-1]["max"] = max(delays[-1])
        meta_delays[-1]["min"] = min(delays[-1])

    print("Displaying...")

    plt.grid(True)
    
    plot_number = 1

    for i in range(4):
        
        if channel_display[i] == 0:
            continue

        ax = plt.subplot(sum(channel_display), 2, plot_number)
        ax.xaxis.set_major_formatter(formatter_time)

        plt.title("Channel #{}".format(i+1), x=-0.1)
        
        trace_index = random.randint(0, number_of_traces)
        plt.plot(time_axis, logic_data[i][trace_index], COLOR_PALLET[i])

        for k in edges[i][trace_index]:
            plt.axvline(k*time_unit + time_offset, 0, 1, color='red')

        plot_number += 2

    plot_number = 4
    last_ax = None

    for i in range(1,4):
        if channel_display[i] == 0:
            continue

        if last_ax:
            ax = plt.subplot(sum(channel_display), 2, plot_number, sharey=last_ax)
        else:
            ax = plt.subplot(sum(channel_display), 2, plot_number)
        
        last_ax = ax
        ax.yaxis.set_major_formatter(formatter_time)
        
        plt.bar(list(range(1, number_of_traces+1)), delays[i-1])

        plot_number += 2

    plt.subplot(sum(channel_display), 2, 2)
    plt.text(0, 0, "".join(["Channel #{} - max: {}s min: {}s average: {}s\n".format(i+1, 
        unit_funktion(meta_delays[i-1]["max"]), 
        unit_funktion(meta_delays[i-1]["min"]), 
        unit_funktion(meta_delays[i-1]["average"])) for i in range(1,4) if channel_display[i] != 0]
        ), fontsize=15)
    plt.axis('off')

    plt.suptitle("Propergation-Delay - {}".format(data.get("meta_info")))
    plt.show()
