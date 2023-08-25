FROM rust:1.72-alpine

RUN apk add --no-cache musl-dev cargo-audit && \
    rustup component add rustfmt && \
    rustup component add clippy
