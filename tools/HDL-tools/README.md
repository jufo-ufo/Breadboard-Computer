# VTR
The VTR-toolchain (Verilog to Routing) is a toolchain for synthieszing an simulationg Verilog
All documentation to VTR can be found [here](https://docs.verilogtorouting.org/en/latest/).
In this case I'm using VTR version 8.0.0, the latest release at 17.8.2021

# Usage
The installation is quite a pain, so I build a docker container, wtich installs all of the necessary libarys and complies very thing Simply run the following command in the tools/HDL-tools folder to build the container (this may take a while, in my case 31min)
```bash
docker build -t vtr-toolchain:v8.0.0 .
```
And to run the enviroment use this command:
```bash
docker run --rm -it docker run --rm -v "$PWD/workspace:/workspace" -it --network host vtr-toolchain:v8.0.0
```
To safe all files, docker maps the /workspace directory to your host ./workspace directory.

