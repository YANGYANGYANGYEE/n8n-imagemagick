FROM n8nio/n8n:latest

USER root

# เพิ่มบรรทัดนี้เพื่อ force bust cache
ARG CACHEBUST=2

RUN apt-get update && apt-get install -y --no-install-recommends \
    imagemagick \
    ghostscript \
    && rm -rf /var/lib/apt/lists/*

USER node

COPY docker-start.sh /usr/local/bin/docker-start.sh
RUN chmod +x /usr/local/bin/docker-start.sh
ENTRYPOINT ["/usr/local/bin/docker-start.sh"]
