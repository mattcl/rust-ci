FROM rust:1.70-alpine

RUN apk add --no-cache musl-dev && \
    rustup component add rustfmt && \
    rustup component add clippy
