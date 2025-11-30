ARG RUST_TAG=1.91-alpine
FROM rust:$RUST_TAG
ARG RUST_TAG=1.91-alpine

RUN apk add --no-cache musl-dev cargo-audit make perl just wget && \
    rustup component add rustfmt && \
    rustup component add clippy
