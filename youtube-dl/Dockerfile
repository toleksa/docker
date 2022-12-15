FROM alpine:3.17.0
RUN apk add --no-cache youtube-dl ffmpeg

STOPSIGNAL SIGTERM

ENTRYPOINT ["youtube-dl"]

