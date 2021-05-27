#FROM debian:buster-slim
FROM ubuntu:21.04
WORKDIR /home
COPY ./target/release/node-template .
#ARG DEBIAN_FRONTEND=noninteractive
RUN useradd -m -u 1001 -U -s /bin/sh -d /substrate substrate &&\
	mkdir -p /substrate/.local/share && mkdir /data &&\
	chown -R substrate:0 /data && \
	ln -s /data /substrate/.local/share &&\
  	chgrp -R 0 /substrate/.local/share && chmod -R g=u /substrate/.local/share 
#	apt update && apt-get --assume-yes install r-base 
RUN ./node-template --version
USER substrate
EXPOSE 30333 9933 9944
VOLUME ["/data"]

CMD ["./node-template", "--dev", "--ws-external"]
