FROM nurdism/neko:base

USER root
RUN apt-get update && apt-get install -y chromium && rm -rf /var/lib/apt/lists/*

# Back4app requires explicitly exposing a port to route traffic
EXPOSE 8080

# Disable the login page as requested earlier
ENV NEKO_NEKOPASSWD=false

# RAM OPTIMIZATION: Extra flags to stop background processes from eating memory
ENV NEKO_CHROME_ARGS="--app=https://google.com --no-sandbox --no-first-run --disable-infobars --disable-dev-shm-usage --disable-gpu --js-flags='--max-old-space-size=128'"

USER neko