FROM ubuntu-minimal
LABEL description="The Polkadot binary"
ARG PROFILE=release
COPY ./polkadot/target/$PROFILE/polkadot /usr/local/bin

RUN useradd -m -u 1000 -U -s /bin/sh -d /polkadot polkadot && \
	mkdir -p /polkadot/.local/share && \
	mkdir /data && \
	chown -R polkadot:polkadot /data && \
	ln -s /data /polkadot/.local/share/polkadot && \
	rm -rf /usr/bin /usr/sbin

USER polkadot
EXPOSE 30333 9933 9944
VOLUME ["/data"]

CMD ["/usr/local/bin/polkadot"]