#! /bin/sh

# build docker
docker build -t mori/carla .

# open XSOCK for diplay
XSOCK=/tmp/.X11-unix
xhost +

# run container
docker run \
	--rm --gpus 1 -it \
	--network="host" \
	-v $PWD:/tmp/dev \
	-v $XSOCK:$XSOCK -e DISPLAY=$DISPLAY \
	-w /tmp/ \
	mori/carla

xhost -
