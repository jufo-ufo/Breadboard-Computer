import measurement_utile
import sys

if len(sys.argv) < 3:
    sys.stderr.write("Usage: <oscilloscope ipv4 address> <target file>")

osc = measurement_utile.connect_scope(sys.argv[1])

config = measurement_utile.Scope_Config()
config.load_from_osc(osc)
config.save_to_file(sys.argv[2])
