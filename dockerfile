FROM ros:noetic

WORKDIR  /usr/catkin_ws
COPY src src
COPY scripts scripts

RUN echo "source /opt/ros/noetic/setup.bash" >> /etc/bash.bashrc

RUN . /opt/ros/noetic/setup.sh && \
    catkin_make

RUN echo "source devel/setup.bash" >> /etc/bash.bashrc
# CMD /bin/sh src/scripts/launch.sh