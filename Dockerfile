FROM ubuntu:18.04
# Do not exclude man pages & other documentatio
RUN rm /etc/dpkg/dpkg.cfg.d/excludes
# Reinstall all currently installed packages in order to get the man pages back
RUN apt-get update &&  dpkg -l | grep ^ii | cut -d' ' -f3 | xargs apt-get install -y --reinstall &&  rm -r /var/lib/apt/lists/*


RUN /lib/systemd/systemd-udevd --debug & udevadm trigger

RUN apt-get install \
	ubuntu-drivers-common \
	mesa-utils \
	mesa-utils-extra \ 
	xorg \
	xserver-xorg \
	wget \
	unzip \
	zsh \
	xterm \
	vim \
	tmux \
	libssl1.0.0 \
	ttf-wqy-microhei \
	dbus-x11 \
	tzdata \
	sudo	

WORKDIR /app
ADD . /app

CMD ["./start"]

