# Dockerfile

FROM alpine:edge
#FROM alpine:3.16.0
RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ py3-pip py3-pycryptodome py3-filelock py3-tqdm py3-colorama py3-pillow py3-flask py3-google-api-python-client py3-zstandard
#RUN apk add --no-cache py3-pip py3-pycryptodome py3-filelock py3-tqdm py3-colorama py3-pillow py3-flask py3-google-api-python-client py3-zstandard
RUN pip install bs4 Image google_auth_oauthlib

EXPOSE 9000
STOPSIGNAL SIGTERM

WORKDIR /app
COPY nut-3.1 /app/nut
COPY nut.conf /app/nut/conf/
COPY users.conf /app/nut/conf/
RUN mkdir -p /library
COPY nut-run.sh /app/nut/run.sh
CMD ["/app/nut/run.sh"]

