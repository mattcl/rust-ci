FROM debian:bullseye-slim as fetcher
RUN apt-get update && \
    apt-get install -y wget

RUN wget https://github.com/rustsec/rustsec/releases/download/cargo-audit%2Fv0.17.6/cargo-audit-x86_64-unknown-linux-musl-v0.17.6.tgz && \
    tar -xvf cargo-audit-x86_64-unknown-linux-musl-v0.17.6.tgz && \
    mv cargo-audit-x86_64-unknown-linux-musl-v0.17.6/cargo-audit /usr/local/bin/

RUN wget https://github.com/casey/just/releases/download/1.15.0/just-1.15.0-x86_64-unknown-linux-musl.tar.gz && \
    tar -xvf just-1.15.0-x86_64-unknown-linux-musl.tar.gz && \
    chmod +x just && \
    mv just /usr/local/bin/

FROM rust:1.73-slim-bullseye
RUN apt-get update && \
    apt-get install -y make perl && \
    rustup component add rustfmt && \
    rustup component add clippy

COPY --from=fetcher /usr/local/bin/cargo-audit /usr/local/bin/cargo-audit
COPY --from=fetcher /usr/local/bin/just /usr/local/bin/just
