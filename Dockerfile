FROM alpine:latest

RUN apk -U add \
        gcc \
        libffi-dev \
        libxml2-dev \
        libxslt-dev \
        musl-dev \
        libressl-dev \
        python-dev \
        py-pillow \
        py-pip \
        curl ca-certificates \
    && update-ca-certificates \
    && rm -rf /var/cache/apk/* \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir pillow scrapy

WORKDIR /runtime/app

COPY entrypoint.sh /runtime/entrypoint.sh
RUN chmod +x /runtime/entrypoint.sh

ENTRYPOINT ["/runtime/entrypoint.sh"]
CMD ["scrapy"]
