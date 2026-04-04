FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y imagemagick ghostscript && rm -rf /var/lib/apt/lists/*

COPY docker-start.sh /usr/local/bin/docker-start.sh
RUN chmod +x /usr/local/bin/docker-start.sh

ENTRYPOINT ["/usr/local/bin/docker-start.sh"]
