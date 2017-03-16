# Simple Dockerized OPENPGPSERVER

Index file taken from https://github.com/mattrude/pgpkeyserver-lite/blob/inline/index.html

## Clone
git clone https://github.com/cesarandreslopez/keyserver_docker_sks.git

## Build
docker build -t cesarandreslopez/keyserver_docker_sks .

## Pull from Docker HUB
docker pull cesarandreslopez/keyserver_docker_sks

## Run
docker run -d --restart=always --name sks-keyserver -p 11370:11370 -p 11371:11371 -p 80:11371 cesarandreslopez/keyserver_docker_sks
