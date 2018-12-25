FROM ubuntu:18.04
# Do not exclude man pages & other documentatio
RUN rm /etc/dpkg/dpkg.cfg.d/excludes
# Reinstall all currently installed packages in order to get the man pages back
RUN apt-get update &&  dpkg -l | grep ^ii | cut -d' ' -f3 | xargs apt-get install -y --reinstall &&  rm -r /var/lib/apt/lists/*

RUN apt-get update

RUN apt-get -y install \
	ubuntu-drivers-common \
	mesa-utils \
	mesa-utils-extra \ 
	xorg \
	xserver-xorg \
	xterm \
	ttf-wqy-microhei \
	sudo \
	pulseaudio

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install i3

RUN apt-get purge --auto-remove && rm -rf /tmp/* /var/lib/apt/lists/* && apt-get -s clean

WORKDIR /app

ADD ./start /app
ADD ./config /app
ADD ./.Xresources /app

CMD ["./start"]

