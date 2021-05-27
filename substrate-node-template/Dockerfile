FROM debian:buster-slim

ADD ./target/release/node-template /
ARG DEBIAN_FRONTEND=noninteractive
RUN useradd -m -u 1001 -U -s /bin/sh -d /substrate substrate &&\
	mkdir -p /substrate/.local/share && mkdir /data &&\
	chown -R substrate:0 /data && chown -R substrate:0 ./node-template &&\
	ln -s /data /substrate/.local/share/substrate &&\
  	chgrp -R 0 /substrate/.local/share && chmod -R g=u /substrate/.local/share &&\
	apt update && apt-get --assume-yes install clang libssl-dev llvm libudev-dev cmake libclang-dev

USER substrate
EXPOSE 30333 9933 9944
VOLUME ["/data"]

ENTRYPOINT ["./node-template", "--dev", "--ws-external"]
