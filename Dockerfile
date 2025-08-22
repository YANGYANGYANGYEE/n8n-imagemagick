FROM n8nio/n8n:latest
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    imagemagick ghostscript && \
    rm -rf /var/lib/apt/lists/*
USER node
