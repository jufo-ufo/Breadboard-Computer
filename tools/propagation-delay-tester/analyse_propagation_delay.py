from os import device_encoding
import sys
import json

from matplotlib import pyplot as plt
from matplotlib.ticker import EngFormatter

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

formatter_time = EngFormatter(unit='s')
formatter_voltage = EngFormatter(unit='V')

with open(sys.argv[1], "r") as f:
    data = json.loads(f.read())

HIGH_LEVEL = 3
LOW_LEVEL = 0.7
COLOR_PALLET = ["y", "c", "m", "b"]

def decode_voltage(x: int, last: bool) -> bool:
    if x >= HIGH_LEVEL:
        return True
    elif x <= LOW_LEVEL:
        return False
    else:
        return last

number_of_channels = sum(i.get("display") == "ON" for i in data["config"]["channels"])
number_of_samples = data["number_of_samples"]

time_unit = float(data["config"]["timebase"])*12 / len(data["data"][0][0])
time_offset = float(data["config"]["time_offset"]) - float(data["config"]["timebase"])*6
time_axis = [(i+1)*time_unit + time_offset for i in range(len(data["data"][0][0]))]

# Reading Raw data
voltage_data = []

for i in range(number_of_samples):
    voltage_data.append([])
    for j in range(number_of_channels):
        voltage_data[-1].append([float(data_point) for data_point in data["data"][i][j]])

# Decode as Logic values and edge detection
logic_data = []
edges = []

for i in range(number_of_samples):
    logic_data.append([])
    edges.append([])
    for j in range(number_of_channels):
        logic_trace = []
        edges[-1].append([])
        last_value = decode_voltage(voltage_data[i][j][0], False)

        for l,k in enumerate(voltage_data[i][j]):
            v = decode_voltage(k, last_value)
            logic_trace.append(v)
            
            if last_value != v:
                edges[-1][-1].append(l)
            
            last_value = v
            

        logic_data[-1].append(logic_trace)

# Calculating Progration Delays
delays = []

for i in range(number_of_samples):
    delays.append([])

    for j in range(number_of_channels-1):
        delays[-1].append(edges[i][j+1][-1]*time_unit - edges[i][0][-1]*time_unit)

# Printing Summery
print("="*19, "Summery", "="*19)

print("Info:", data["meta_info"], "\n")
print("Oscilloscope:", data["oscilloscope"])
print("Sample Size:", number_of_samples)
print("Number of Sample Channels:", number_of_channels - 1, "\n")

last_ax_plot = None
last_ax_bar = None
plt.grid(True)

# Ploting Voltages for Ref Channel
ax = plt.subplot(number_of_channels, 3, 1)
ax.xaxis.set_major_formatter(formatter_time)
ax.yaxis.set_major_formatter(formatter_voltage)
for k in range(number_of_samples):
    plt.plot(time_axis, voltage_data[k][0], COLOR_PALLET[0])
last_ax_plot = ax
plt.title("Channel Ref - Voltage Traces".format(j+1), x=0.5)

# Ploting Logic Values for Ref Channel
ax = plt.subplot(number_of_channels, 3, 2)
ax.xaxis.set_major_formatter(formatter_time)
for k in range(number_of_samples):
    plt.plot(time_axis, logic_data[k][0], COLOR_PALLET[0])
plt.title("Channel Ref - Logic Values".format(j+1), x=0.5)

for j in range(number_of_channels-1):
    average = 0
    max_delay = 0
    min_delay = 10**100

    for i in range(number_of_samples):
        v = delays[i][j]
        max_delay = v if v > max_delay else max_delay
        min_delay = v if v < min_delay else min_delay
        average += v

    average /= number_of_samples

    print("Channel #{}:".format(j+1))
    print("\tmax     :", unit_funktion(max_delay) + "s")
    print("\tmin     :", unit_funktion(min_delay) + "s")
    print("\taverage :", unit_funktion(average) + "s", "\n")

    # Ploting Voltages
    ax = plt.subplot(number_of_channels, 3, (j+1)*3 + 1, sharey=last_ax_plot)
    ax.xaxis.set_major_formatter(formatter_time)
    ax.yaxis.set_major_formatter(formatter_voltage)
    for k in range(number_of_samples):
        plt.plot(time_axis, voltage_data[k][j+1], COLOR_PALLET[j+1])
    last_ax_plot = ax
    plt.title("Channel #{} - Voltage Traces".format(j+1), x=0.5)

    # Ploting Logic Values
    ax = plt.subplot(number_of_channels, 3, (j+1)*3 + 2)
    ax.xaxis.set_major_formatter(formatter_time)
    for k in range(number_of_samples):
        plt.plot(time_axis, logic_data[k][j+1], COLOR_PALLET[j+1])
    plt.title("Channel #{} - Logic Values".format(j+1), x=0.5)

    # Ploting Delays
    ax = plt.subplot(number_of_channels, 3, (j+1)*3 + 3, sharex=last_ax_bar)
    ax.yaxis.set_major_formatter(formatter_time)
    plt.bar(list(range(1, number_of_samples+1)), delays[j])
    last_ax_bar = ax
    plt.title("Channel #{} - Delays".format(j+1), x=0.5)


print("="*47)

plt.suptitle("Propergation-Delay - {}".format(data["meta_info"]))
plt.show()
