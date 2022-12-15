#!/bin/bash

docker run --rm -i --name youtube-dl youtube-dl toleksa/youtube-dl -p --mount type=bind,source=~/.netrc,target=/root/.netrc -e --netrc -f bestvideo+bestaudio $1 > movie.mp4

