FROM rustlang/rust:nightly-slim
RUN apt-get update && \
    apt-get install -y make perl && \
    rustup component add rustfmt && \
    rustup component add clippy
