#!/bin/bash

VOLUMES="-v /sys:/sys -v $(pwd):/root/catkin_ws/src/MultiCamSLAM -v /tmp:/tmp -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev:/dev"

docker run -it --entrypoint "/bin/bash" --rm --env DISPLAY=unix$DISPLAY --privileged --net=host --ipc=host ${VOLUMES} multicamslam