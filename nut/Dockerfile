# Dockerfile

FROM alpine:3.16.0
RUN apk add --no-cache py3-pip py3-pycryptodome py3-filelock py3-tqdm py3-colorama py3-pillow py3-flask py3-google-api-python-client \
    && apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community py3-zstandard\
    && rm -rf /var/cache/apk/*
RUN pip install bs4 Image google_auth_oauthlib

EXPOSE 9000
STOPSIGNAL SIGTERM

WORKDIR /app
COPY src/nut-3.1 /app/nut
COPY nut.conf /app/nut/conf/
COPY users.conf /app/nut/conf/
RUN mkdir -p /library
COPY nut-run.sh /app/nut/run.sh
CMD ["/app/nut/run.sh"]

