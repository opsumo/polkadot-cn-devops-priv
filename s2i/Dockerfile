FROM ubuntu:20.10

ENV CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH \
    RUST_VERSION=1.52.1

LABEL io.k8s.description="Platform for building Rust Applications" \
     io.k8s.display-name="Rust 1.52.1" \
     io.openshift.expose-services="8000:http" \
     io.openshift.tags="rust" \
     io.openshift.s2i.assemble-input-files="/opt/app-root/src/target/release" \
     io.openshift.builder-base-version="9bc8c42bb" \
     io.openshift.s2i.assemble-input-files="/opt/app-root/src/target/release" \
     io.openshift.s2i.scripts-url="image:///usr/libexec/s2i" \
     io.openshift.tags="rust" \
     io.s2i.scripts-url="image:///usr/libexec/s2i"

RUN adduser --uid 1001  --shell /sbin/nologin --home /opt/app-root/src default
RUN apt -y update &&  apt -y upgrade
RUN apt install -y build-essential git clang libclang-dev pkg-config libssl-dev curl
RUN curl https://sh.rustup.rs -sSf > sh.rustup.rs
RUN bash sh.rustup.rs -y

COPY ./s2i/bin/ /usr/libexec/s2i
COPY fix-permissions /usr/bin
RUN chmod -R a+w /usr/local/cargo

EXPOSE 9944 8000 9615
USER 1001
CMD ["usage"]

