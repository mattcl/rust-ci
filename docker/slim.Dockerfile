FROM rust:1.70-slim

RUN rustup component add rustfmt && \
    rustup component add clippy
