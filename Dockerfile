FROM ubuntu:trusty
RUN dpkg --add-architecture i386
RUN apt update
RUN apt install curl --yes
RUN apt install unzip --yes
RUN apt install libx11-6:i386 --yes
RUN apt install libgl1-mesa-glx:i386 --yes
RUN apt install libfontconfig1:i386 --yes
RUN apt install libssl1.0.0:i386 --yes
WORKDIR /pharo
RUN curl get.pharo.org | bash
RUN ./pharp Pharo.image eval 2+9
