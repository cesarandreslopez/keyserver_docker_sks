FROM ubuntu:16.04

MAINTAINER  Cesar Andres Lopez "cesar.lopez@senseta.com"

RUN apt-get update && apt-get install -y curl nano htop wget git gcc ocaml libdb-dev gnupg sks iputils-ping
RUN sks build
RUN mkdir /var/run/sks

ADD Manifest /Manifest
ADD index.html /var/lib/sks/www/index.html
ADD run.sh ./run.sh


EXPOSE 11370 11371

CMD ["./run.sh"]
