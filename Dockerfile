FROM dorowu/ubuntu-desktop-lxde-vnc:focal
RUN rm -f /etc/apt/sources.list.d/google*.list /etc/apt/sources.list.d/google*.list.save
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget bzip2 && \
    wget -qO /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US" && \
    tar -C /opt -xjf /tmp/firefox.tar.bz2 && \
    ln -sf /opt/firefox/firefox /usr/bin/firefox && \
    rm -rf /tmp/firefox.tar.bz2 /var/lib/apt/lists/*
ENV TZ=America/Los_Angeles \
    VNC_PASSWORD=yan1230.0