FROM m1k1o/neko:chromium

EXPOSE 8080

ENV NEKO_BIND=:8080
ENV NEKO_PASSWORD=
ENV NEKO_CHROME_ARGS="--no-sandbox --disable-dev-shm-usage --disable-gpu --no-first-run --disable-infobars"