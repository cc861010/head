## start 
```
    docker run -it --privileged cc861010/head

    or

    docker run --privileged -e USER_NAME=cc -e USER_PASSWORD=ff cc861010/head
```
* first to install a [server ubuntu](https://help.ubuntu.com/community/Installation/MinimalCD) with docker server,other linux ,like coreos,is ok but it was not tested

## what 
* run a i3wm desktop envicerment in a host which has display and input devices 
* the host is a command line linux which can only has a docker service

## why
1. run different system envicerment at the same time on one machine eg,game,development,and so on
2. to isolate different environments
3. install a system with desktop quickly,just one command

## support sound playing
* apt install -y cmus && cmus

## support opengl game playing
```
sudo apt-get install cmake libglew-dev xorg-dev libcurl4-openssl-dev git
sudo apt-get build-dep glfw
git clone https://github.com/fogleman/Craft.git
cd Craft
cmake .
make
./craft
```
