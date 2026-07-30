FROM m1k1o/neko:chromium

EXPOSE 8080

ENV NEKO_BIND=:8080

# Disable authentication
ENV NEKO_PASSWORD=Chris
ENV NEKO_PASSWORD_ADMIN=Chris

# Start Chromium with Google
ENV NEKO_CHROME_ARGS="\
--no-sandbox \
--disable-dev-shm-usage \
--disable-gpu \
--no-first-run \
--no-default-browser-check \
--app=https://www.google.com"