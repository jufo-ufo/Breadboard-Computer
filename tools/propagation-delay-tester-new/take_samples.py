import measurement_utile
import sys
import time

if len(sys.argv) < 3:
    sys.stderr.write("Usage: {} <number of samples> <scope ipv4 address> <storage path> [<scope config>]\n".format(sys.argv[0]))
    exit(-1)

NUMBER_OF_CHANNELS = 4
NUMBER_OF_SAMPLES = int(sys.argv[1])
STORAGE_PATH = sys.argv[3]

if __name__ == "__main__":
    osc = measurement_utile.connect_scope(sys.argv[2])
    storage = measurement_utile.SampleBucket(STORAGE_PATH)
    config = measurement_utile.Scope_Config()

    if len(sys.argv) > 4:
        config.load_from_file(sys.argv[4])
        config.apply_to_osc(osc)
    else:
        config.load_from_osc(osc, channel_number=NUMBER_OF_CHANNELS)

    timescale = measurement_utile.acquire_timescale(osc)
    active_channels = measurement_utile.acquire_active_channels(osc)

    measurement_utile.progressbar(NUMBER_OF_SAMPLES, 0, "Progress")

    start = time.time()
    for i in range(NUMBER_OF_SAMPLES):
        storage.save_sample(i, measurement_utile.acquire_sample(osc, active_channels), timescale, active_channels)
        measurement_utile.progressbar(NUMBER_OF_SAMPLES, i+1, "Progress", "Time remaining {}".format(measurement_utile.format_seconds((time.time()-start)/(i+1) * (NUMBER_OF_SAMPLES-1-i))))

    storage.save_sample_index()
    print("\nDone after {}".format(measurement_utile.format_seconds(time.time()-start)))