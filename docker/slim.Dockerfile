FROM debian:bullseye-slim as fetcher
RUN apt-get update && \
    apt-get install -y wget

RUN wget https://github.com/rustsec/rustsec/releases/download/cargo-audit%2Fv0.17.6/cargo-audit-x86_64-unknown-linux-musl-v0.17.6.tgz && \
    tar -xvf cargo-audit-x86_64-unknown-linux-musl-v0.17.6.tgz && \
    mv cargo-audit-x86_64-unknown-linux-musl-v0.17.6/cargo-audit /usr/local/bin/

FROM rust:1.73-slim
RUN apt-get update && \
    apt-get install -y make perl && \
    rustup component add rustfmt && \
    rustup component add clippy

COPY --from=fetcher /usr/local/bin/cargo-audit /usr/local/bin/cargo-audit
