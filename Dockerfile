FROM lscr.io/linuxserver/chromium:latest

ENV TZ=Asia/Shanghai \
    PUID=1000 \
    PGID=1000 \
    CUSTOM_USER=abc \
    PASSWORD=changeme \
    TITLE="Web Browser" \
    CHROME_CLI="--no-first-run --no-default-browser-check --disable-dev-shm-usage --lang=zh-CN --start-maximized"