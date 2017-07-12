FROM ubuntu:16.04

WORKDIR /app

COPY entrypoint.sh /app/

RUN chmod +x entrypoint.sh && \
    apt-get update -y && \
    apt-get install -y cups wget

VOLUME /etc/cups

CMD ["./entrypoint.sh"]
