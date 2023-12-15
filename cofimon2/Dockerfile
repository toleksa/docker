# Dockerfile

FROM alpine:3.17.0
RUN apk add --no-cache py3-django py3-pillow py3-dateutil py3-dotenv

EXPOSE 8001
STOPSIGNAL SIGTERM

WORKDIR /app/mon
CMD python3 manage.py runserver 0:8001 2>&1

