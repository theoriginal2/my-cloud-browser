FROM ghcr.io/linuxserver/baseimage-kasmvnc:debianbookworm

USER root

RUN apt-get update && \
    apt-get install -y chromium && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENV TITLE="Cloud Browser"

EXPOSE 8080

CMD ["/start.sh"]