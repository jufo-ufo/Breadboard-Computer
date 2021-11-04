# VTR
The VTR-toolchain (Verilog to Routing) is a toolchain for synthieszing an simulationg Verilog
All documentation to VTR can be found [here](https://docs.verilogtorouting.org/en/latest/).
In this case I'm using VTR version 8.0.0, the latest release at 17.8.2021

# Usage
DISCLAMER: This is all test under Garuda Linux (Arch). This may or may not work for you. I had a lot of throuble getting this all to work so good luck, have fun!

## Installation
The installation is quite a pain, so I build a docker container, wtich installs all of the necessary libarys and complies very thing Simply run the following command in the tools/HDL-tools folder to build the container (this may take a while, in my case 31min)
```bash
docker build -t vtr-toolchain:v8.0.0 .
```

To safe all files, docker maps the /workspace directory to your host ./workspace directory.
After building it, start the container with
```bash
docker run -it --rm --net=host -e DISPLAY=$DISPLAY -v $PWD/workspace:/workspace -v /tmp/.X11-unix:/tmp/.X11-unix vtr-toolchain:v8.0.0 bash
```

WARNING all files get deleted that are not in /workspace after exiting, so put all your imported stuff in /workspace

## Running The Toolchain

For the running this you need two things: The circted written in Verilog and an so called architecture file. This specifies the interall workings of our target FPGA

First of all we use odin II to convert Verilog HDL to an netlist (a list of logic gates and flip-flops) in form of a .odin.blif file. This is done with
```bash
odin_II -a <architecture-file> -V <circet-file> -o <outputfile.odin.bilf>
```

Second step is optimizing an technology mapping: This is done with abc. It process an output.abc\_no\_clock.bilf file. This command should do that:
```bash
abc -c 'read <outputfile.odin.blif>; if -K 6; write_hie <ouputfile.odin.blif> <outputfile.abc_no_clock.blif>'
```

Thired step: Sadly abc removed all clock input for latches, so we need to put them back in with this command. This will process an outputfile.pre-vpr.blif file
```bash
restore_multiclock_latch <outputfile.odin.bilf> <outputfile.abc_no_clock.blif> <outputfile.pre-vpr.blif>
```

Fourthed and last step is to implement this on the FPGA with VPR. This will process a lot of files, so be warned!
```bash
vpr <architecture-file> <outputfile.pre-vpr.blif>
```

You can get an gui by adding `--disp on`. But before running this you need to run `xauth +` to enable the container to connect to your display
