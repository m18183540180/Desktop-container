FROM lscr.io/linuxserver/chromium:latest

ENV TZ=America/Los_Angeles \
    PUID=1000 \
    PGID=1000 \
    CUSTOM_USER=admin \
    PASSWORD=yan1230.0 \
    TITLE="远程连接桌面" \
    CHROME_CLI="--no-first-run --no-default-browser-check --disable-dev-shm-usage --lang=zh-CN --start-maximized"