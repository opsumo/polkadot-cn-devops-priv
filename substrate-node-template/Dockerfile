FROM ubuntu
#FROM debian:buster-slim
#COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

#ENV PATH=/\
#    SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt\
#    SSL_CERT_DIR=/etc/ssl/certs\
#    GITHUB_SHA=$GITHUB_SHA\
#    RUST_BACKTRACE=full\
#    RUST_LOG="warn,subtrate=info"

ADD ./target/release/node-template /

RUN useradd -m -u 1001 -U -s /bin/sh -d /substrate substrate &&\
	mkdir -p /substrate/.local/share && mkdir /data &&\
	chown -R substrate:0 /data && chown -R substrate:0 ./node-template &&\
	ln -s /data /substrate/.local/share/substrate &&\
  	chgrp -R 0 /substrate/.local/share && chmod -R g=u /substrate/.local/share &&\
	apt update && apt -y install r-base r-base-core r-recommended

USER substrate
EXPOSE 30333 9933 9944
VOLUME ["/data"]

ENTRYPOINT ["./node-template", "--dev", "--ws-external"]
