FROM n8nio/n8n:lasted
USER root

RUN apk add --no-cache imagemagick ghostscript

COPY docker-start.sh /usr/local/bin/docker-start.sh
RUN chmod +x /usr/local/bin/docker-start.sh

ENTRYPOINT ["/usr/local/bin/docker-start.sh"]
