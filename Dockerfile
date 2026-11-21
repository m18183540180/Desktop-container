FROM dorowu/ubuntu-desktop-lxde-vnc:latest
ENV TZ=America/Los_Angeles \
    VNC_PASSWORD=yan1230.0
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone