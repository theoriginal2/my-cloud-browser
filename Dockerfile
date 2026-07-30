# Modern Neko image with Chromium already installed
FROM m1k1o/neko:chromium

# Back4App routes traffic through this port
EXPOSE 8080

# Disable password protection
ENV NEKO_PASSWORD=

# Chromium startup flags
ENV NEKO_CHROME_ARGS="--no-sandbox --disable-dev-shm-usage --disable-gpu --no-first-run --disable-infobars"

# Start Neko
CMD ["/usr/bin/neko"]
