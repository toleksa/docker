# Abandoned

As Steam decided to stop "producing" ARS payment cards, keeping this crawler makes completely no sense anymore :(

# Description

##  Get Steam ARS Payment Card in best prices!

General idea is to monitor current prices of Steam ARS Payment Card on popular website. There are two main functionalities:
- Draw price chart -> allows to observe trends
- Alert when price is lowest

![chart](https://raw.githubusercontent.com/toleksa/GameBot/main/docker/ars-price/doc/out.png)

# Usage

Just add ```ars-price.sh``` to crontab:
```*/10 * * * * ~/docker/ars-price/ars-price.sh```

# Requirements

- Docker ofcourse
- /root/alert.sh - any tool of your choice to send messages in format "$0 <message>"

