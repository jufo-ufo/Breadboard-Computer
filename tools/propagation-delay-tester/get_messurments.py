from __future__ import with_statement
import sys
import argparse

import time
import serial
import json
import datetime

from ds1054z import DS1054Z

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

# Parsing Args
parser = argparse.ArgumentParser(description="Tool for messureing the propergation delay. Messuring Devices: an rigol1000z Compatible scope connected via USB. Signal-Generator: Arduino with test sketch")
parser.add_argument("-a", "--arduino-port", help="Serial port to access the arduino", required=True)
parser.add_argument("-s", "--scope-address", help="ip4 address for accessing oscilloscope")

parser.add_argument("-c", "--callibrate", help="Simple pulse for oscilloscope calibration", action="store_true")
parser.add_argument("-n", "--number-probes", help="How many probes are used", default=1, type=int, choices=[1, 2, 3])
parser.add_argument("-N", "--number-off-samples", help="Number of test samples", default=100, type=int)
parser.add_argument("-i", "--meta-info", help="Meta information about the tested IC", default="")
parser.add_argument("-t", "--timeout", help="Timeout for chip not responding in ms", default=None, type=int)
parser.add_argument("-o", "--output-file", help="Output file for test results", default=None)
parser.add_argument("-d", "--delay", help="Delay between measurements (This is NOT precise", default=0.01, type=float)
parser.add_argument("-e", "--edge", help="The edge to messure on", default="rising", choices=["rising", "falling"])

parser.add_argument("-w", "--write-current-scope-config", help="Output file for current scope config", default=None)
parser.add_argument("-C", "--scope-config-file", help="Input scope config file", default=None)

args = parser.parse_args()

print("Connecting to oscilloscope... ", end="")

# Making Connections
try:
    osc = DS1054Z(args.scope_address)
except Exception as E:
    throw_error(E, "An error occurred while connecting to oscilloscope")

print("Done!")

# Write Scope Config if needed

if args.write_current_scope_config:
    config = {"channels" : [], "timebase" : osc.query(":TIMebase:MAIN:SCALe?"), "trigger_level" : osc.query(":TRIGger:EDGe:LEVel?")}
    print("Downloading config... ", end="")
    for i in [str(j) for j in range(1, 5)]:
        config["channels"].append({
            "display" : osc.query(f":CHANnel{i}:DISPlay?"),
            "probe" : osc.query(f":CHANnel{i}:PROBe?"),
            "offset" : osc.query(f":CHANnel{i}:OFFSet?"),
            "scale" : osc.query(f":CHANnel{i}:SCALe?")
        })
    print("Done!")

    with open(args.write_current_scope_config, "w") as f:
        f.write(json.dumps(config))
    print("Saved config in {}".format(args.write_current_scope_config))
    exit()

print("Connecting to arduino... ", end="")

try:
    ser = serial.Serial(args.arduino_port)
except Exception as E:
    throw_error(E, "An error occurred while connecting to arduino")

print("Done!")

# Setting up Scope
if args.scope_config_file:
    try:
        with open(args.scope_config_file, "r") as f:
            config = json.loads(f.read())
    except Exception as E:
        throw_error(E, "An error occurred while reading scope config file")

else:
    config = [
        {"channels" : [
            {"display":"ON", "offset":"0", "scale":"2", "probe" : "10"}, 
            {"display":"ON", "offset":"-6", "scale":"2", "probe" : "10"}, 
            {"display":"OFF", "offset":"0", "scale":"2", "probe" : "10"}, 
            {"display":"OFF", "offset":"0", "scale":"2", "probe" : "10"}], "timebase" : "0.00000005", "trigger_level" : 2.8},
        {"channels" : [
            {"display":"ON", "offset":"0", "scale":"2", "probe" : "10"}, 
            {"display":"ON", "offset":"-6", "scale":"2", "probe" : "10"}, 
            {"display":"OFF", "offset":"0", "scale":"2", "probe" : "10"}, 
            {"display":"OFF", "offset":"0", "scale":"2", "probe" : "10"}], "timebase" : "0.00000005", "trigger_level" : 2.8},
        {"channels" : [
            {"display":"ON", "offset":"0", "scale":"2", "probe" : "10"}, 
            {"display":"ON", "offset":"-6", "scale":"2", "probe" : "10"}, 
            {"display":"OFF", "offset":"0", "scale":"2", "probe" : "10"}, 
            {"display":"OFF", "offset":"0", "scale":"2", "probe" : "10"}], "timebase" : "0.00000005", "trigger_level" : 2.8}
    ][args.number_probes]

print("Configurating Oscilloscope... ", end="")

osc.write(f":TIMebase:MAIN:SCALe {config['timebase']}")

for i in range(1,5):
    osc.write(f":CHANnel{str(i)}:DISPlay {config['channels'][i-1]['display']}")
    osc.write(f":CHANnel{str(i)}:PROBe {config['channels'][i-1]['probe']}")
    osc.write(f":CHANnel{str(i)}:SCALe {config['channels'][i-1]['scale']}")
    osc.write(f":CHANnel{str(i)}:OFFSet {config['channels'][i-1]['offset']}")

osc.write(":TRIGger:MODE EDGE")
osc.write(":TRIGger:EDGe:SOURce CHANnel1")
osc.write(f":TRIGger:EDGe:LEVel {config['trigger_level']}")
osc.write(":RUN")
osc.write("*WAI")

print("Done!")

if args.edge == "rising":
    osc.write("")

if args.callibrate: 
    print("Starting callibration\nWrite \"exit\" to end callibartion\n")

    i = 1
    while True:
        if args.edge == "rising":
            ser.write(b"\x00")
        else:
            ser.write(b"\xff")

        time.sleep(args.delay)

        if args.edge == "rising":
            ser.write(b"\xff")
        else:
            ser.write(b"\x00")

        print(f"\033[F(Pulse #{str(i)}) ", end="")
        i += 1

        try:
            if input() == "exit":
                break
        except KeyboardInterrupt:
            break
    print("Bye!")
    print()

else: # Takeing measurements
    print("Starting measurement!")
    data = {"config" : config, "oscilloscope" : osc.query("*IDN?"), "data" : []}

    if args.output_file == None:
        if args.meta_info == "":
            args.meta_info = "Sample"
        output_file = open(args.meta_info + datetime.datetime.now().strftime('-%Y:%m:%d-%H:%M:%S.json'), "w")
    else:
        output_file = open(args.output_file + datetime.datetime.now().strftime('-%Y:%m:%d-%H:%M:%S.json'), "w")

    osc.write(":WAVeform:MODE NORMal")
    osc.write(":WAVeform:FORMat ASCii")

    progressbar(args.number_off_samples, 0, "Progess:", "{}/{}".format(0, args.number_off_samples))

    start = time.time()

    for i in range(args.number_off_samples):
        
        osc.write(":SINGle")
        
        while osc.query(":TRIGger:STATus?") != "WAIT":
            pass

        if args.edge == "rising":
            ser.write(b"\x00")
        else:
            ser.write(b"\xff")
        time.sleep(1)
        if args.edge == "rising":
            ser.write(b"\xff")
        else:
            ser.write(b"\x00")

        data["data"].append([])

        while osc.query(":TRIGger:STATus?") != "STOP":
            pass

        for j in range(1, args.number_probes+1):
            osc.write(f":WAVeform:SOURce CHANnel{str(j)}")
            data["data"][-1].append(osc.query(":WAVeform:DATA?"))

        delta_time = time.time()-start
        time_total = (delta_time/(i+1)) * args.number_off_samples
        progressbar(args.number_off_samples, i+1, "Progess:", "{}/{} (finished in {})".format(i+1, args.number_off_samples, str(datetime.timedelta(seconds=int(time_total - delta_time)))))

    print("\nFinished after {}".format(str(datetime.timedelta(seconds=int(time.time() - start)))))
    output_file.write(json.dumps(data))
    output_file.close()

osc.close()
ser.close()