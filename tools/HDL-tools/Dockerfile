FROM ubuntu:20.04

# Installing compiler
RUN apt-get -y update
RUN apt-get -y install apt-utils
RUN apt-get -y install build-essential
RUN apt-get -y install gcc-10

# Setting timezone, because I have to
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Insatlling all manetory packages
RUN apt-get -y install flex
RUN apt-get -y install bison 
RUN apt-get -y install cmake
RUN apt-get -y install fontconfig
RUN apt-get -y install libcairo2-dev
RUN apt-get -y install libfontconfig1-dev
RUN apt-get -y install libx11-dev
RUN apt-get -y install libxft-dev
RUN apt-get -y install libgtk-3-dev
RUN apt-get -y install perl
RUN apt-get -y install liblist-moreutils-perl
RUN apt-get -y install python
RUN apt-get -y install time

# Some util-stuff I have to install
RUN apt-get -y install git 
RUN apt-get -y install valgrind 
RUN apt-get -y install gdb 
RUN apt-get -y install ctags
RUN apt-get -y install curl
RUN apt-get -y install libssl-dev
RUN apt-get -y install python3-pip

# Setting up CMake
WORKDIR /tmp
ENV CMAKE=cmake-3.17.0
RUN curl -s https://cmake.org/files/v3.17/${CMAKE}.tar.gz | tar xvzf -
RUN cd ${CMAKE} && ./configure && make && make install

# Download VTR
WORKDIR /
RUN git clone https://github.com/verilog-to-routing/vtr-verilog-to-routing/
RUN mv vtr-verilog-to-routing/ /vtr 


# Compile and Test VTR
WORKDIR /vtr
RUN rm -rf .git
RUN pip3 install -r requirements.txt
RUN make
RUN ./run_quick_test.py

# Setting up workspace
RUN mkdir /workspace
WORKDIR /workspace
RUN ln -s /vtr/ODIN_II/odin_II /usr/bin/odin_II
RUN sed -i "1iforce_color_prompt=yes" /root/.bashrc

CMD [ "/bin/bash" ]
