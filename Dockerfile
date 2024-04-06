FROM rust:1.77.1-bullseye
RUN apt-get update && apt-get install lz4 wabt && apt-get clean
RUN rustup target add wasm32-unknown-unknown && rustup component add clippy rustfmt
