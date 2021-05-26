FROM debian:buster-slim


# show backtraces
ENV RUST_BACKTRACE 1

# install tools and dependencies
# add user and link ~/.local/share/substrate to /data
RUN useradd -m -u 1001 -U -s /bin/sh -d /substrate substrate && \
	mkdir -p /data /substrate/.local/share && \
	chown -R substrate:substrate /data && \
	ln -s /data /substrate/.local/share/substrate

# add polkadot binary to docker image
COPY ./target/release/node-template /usr/local/bin

USER substrate

# check if executable works in this container
RUN /usr/local/bin/node-template --version

EXPOSE 30333 9933 9944
VOLUME ["/substrate"]

ENTRYPOINT ["/usr/local/bin/node-template"]
