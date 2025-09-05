FROM n8nio/n8n:latest
USER root

RUN apk add --no-cache imagemagick ghostscript

# สคริปต์ start ที่จะ chown ให้ user node (uid=1000) ทุกครั้งที่ container เริ่ม
COPY docker-start.sh /usr/local/bin/docker-start.sh
RUN chmod +x /usr/local/bin/docker-start.sh

# ให้สคริปต์เราเป็น entrypoint ใหม่ แล้วค่อยเรียก entrypoint เดิมของ n8n ต่อ
ENTRYPOINT ["/usr/local/bin/docker-start.sh"]
