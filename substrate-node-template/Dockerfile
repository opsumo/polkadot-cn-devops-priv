FROM paritytech/ci-linux:production as builder
LABEL description="This is the build stage for Polkadot. Here we create the binary."

ARG PROFILE=release
WORKDIR /sustrate

COPY . /substrate 
#RUN git clone -b v3.0.0 --depth 1 https://github.com/substrate-developer-hub/substrate-node-template && \
#    cd substrate-node-template && 
RUN pwd && cd /substrate && cargo build --$PROFILE
# ===== SECOND STAGE ======

FROM ubuntu:18.04
#FROM debian:buster-slim
LABEL description="Substrate"
ARG PROFILE=release
#ADD ./target/$PROFILE/node-template /usr/local/bin
COPY --from=builder /substrate/target/$PROFILE/node-template /usr/local/bin

RUN useradd -m -u 1000 -U -s /bin/sh -d /substrate substrate && \
	mkdir -p /substrate/.local/share && \
	mkdir /data && \
	chown -R substrate:substrate /data && \
	ln -s /data /substrate/.local/share/substrate && \
	rm -rf /usr/bin /usr/sbin

#  chgrp -R 0 /substrate/.local/share && \
#  chmod -R g=u /substrate/.local/share &&\
  
USER substrate
EXPOSE 30333 9933 9944
VOLUME ["/data"]

#CMD ["ls", "-al", "/usr/local/bin"]
ENTRYPOINT ["/usr/local/bin/node-template"]
CMD ["--dev"]
