# Build Stage
FROM rustlang/rust:nightly as builder
LABEL maintainer="Gary Ascuy<gary.ascuy@gmail.com>"

WORKDIR /code
COPY . .
RUN cargo build --release

# Image Stage
FROM debian:buster-slim
LABEL maintainer="Gary Ascuy<gary.ascuy@gmail.com>"

COPY --from=builder /code/target/release/server /usr/local/bin/server
CMD server
