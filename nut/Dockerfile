# Dockerfile

#FROM alpine:edge
FROM alpine:3.16.0
RUN apk upgrade --no-cache
RUN apk add --no-cache py3-pip py3-pycryptodome py3-filelock py3-tqdm py3-colorama py3-pillow py3-flask py3-google-api-python-client py3-curl
RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community py3-zstandard py3-watchdog
#RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main curl-dev
#ENV PYCURL_SSL_LIBRARY=openssl
#RUN apk add --no-cache --virtual .build-deps build-base curl-dev python3-dev \
#    && pip install pycurl \
#    && apk del --no-cache --purge .build-deps \
#    && rm -rf /var/cache/apk/*
RUN pip install bs4 Image google_auth_oauthlib

EXPOSE 9000
STOPSIGNAL SIGTERM

WORKDIR /app
COPY src/nut /app/nut
COPY nut.conf /app/nut/conf/
COPY users.conf /app/nut/conf/
RUN mkdir -p /library
COPY nut-run.sh /app/nut/run.sh
CMD ["/app/nut/run.sh"]

