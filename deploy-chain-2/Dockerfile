FROM debian:buster-slim
#COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

ENV PATH=/\
    SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt\
    SSL_CERT_DIR=/etc/ssl/certs\
    GITHUB_SHA=$GITHUB_SHA\
    RUST_BACKTRACE=full\
    RUST_LOG="warn,subtrate=info"

COPY ./target/release/node-template /opt/bin/* /

RUN useradd -m -u 1001 -U -s /bin/sh -d /substrate-node-template substrate && \
	mkdir -p /substrate-node-template/.local/share && \
	mkdir /data && \
	chown -R substrate:0 /data && \
	ln -s /data /substrate-node-template/.local/share/substrate && \
  chgrp -R 0 /substrate-node-template/.local/share && \
  chmod -R g=u /substrate-node-template/.local/share && \
	rm -rf /usr/bin /usr/sbin

USER substrate
EXPOSE 30333 9933 9944
VOLUME ["/data"]

CMD ["/opt/bin/node-template", "--dev", "--ws-external"]