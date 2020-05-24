# Build Stage
FROM rustlang/rust:nightly as builder
LABEL maintainer="Gary Ascuy<gary.ascuy@gmail.com>"

WORKDIR /code
COPY . .
RUN cargo build --release

# Image Stage
FROM debian:buster-slim
LABEL maintainer="Gary Ascuy<gary.ascuy@gmail.com>"

ENV ROCKET_ENV=production ROCKET_ADDRESS=0.0.0.0 ROCKET_PORT=3666 ROCKET_LOG=critical  
EXPOSE 3666

COPY --from=builder /code/target/release/server /usr/local/bin/server
CMD server
