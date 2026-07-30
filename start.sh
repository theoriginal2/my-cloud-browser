#!/bin/bash

# Wait a moment for the desktop environment
sleep 2

chromium \
  --kiosk \
  --incognito \
  --no-first-run \
  --no-default-browser-check \
  --no-sandbox \
  --disable-dev-shm-usage \
  --disable-gpu \
  --disable-extensions \
  --disable-sync \
  --disable-background-networking \
  --disable-background-timer-throttling \
  --disable-default-apps \
  --disable-translate \
  --disable-popup-blocking \
  --disable-features=TranslateUI \
  https://www.google.com &

exec /init