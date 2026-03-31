FROM n8nio/n8n:latest

# bust cache
ARG CACHE_DATE=2026-03-31

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    imagemagick \
    ghostscript \
    && rm -rf /var/lib/apt/lists/*

USER node

COPY docker-start.sh /usr/local/bin/docker-start.sh
RUN chmod +x /usr/local/bin/docker-start.sh
ENTRYPOINT ["/usr/local/bin/docker-start.sh"]
