FROM dorowu/ubuntu-desktop-lxde-vnc:focal
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget ca-certificates && \
    wget -qO /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y /tmp/chrome.deb && \
    sed -i 's|exec -a "$0" "$HERE/chrome"|exec -a "$0" "$HERE/chrome" --no-sandbox|' /opt/google/chrome/google-chrome && \
    rm -rf /tmp/chrome.deb /var/lib/apt/lists/*
ENV TZ=America/Los_Angeles \
    VNC_PASSWORD=yan1230.0