﻿# Rust Rocket / Cargo Doccker Base Project 

Example project to test Rust, it looks like a language that you definitly you need to learn in next years.

I fact that I learn in my path as a developer is that learn new things it is always important/critical/required for us.

## References 

- https://crates.io/crates/cargo-rocket-docker
- https://github.com/Gary-Ascuy/cargo-rocket-docker
- https://github.com/Gary-Ascuy/rust-rest-api
- https://hub.docker.com/repository/docker/garyascuy/cargo-rocket-example

## Goals

- Rust
- Rocket
- Cargo
- WSL
- Windows Tools / 2020
- Windows Terminal
- WSL/Ubuntu

## VS Code

Open a WSL/Ubuntu in new Windows Terminal, Navigate to a folder you'd like to open in VS Code, like `/mnt/d/develop`, then:

```sh
$ code .
```

##### Ref
- https://code.visualstudio.com/docs/remote/wsl

## Development Setup

Environment - nightly build it is required for rocket.
```
$ rustc --version
$ rustc 1.45.0-nightly (a74d1862d 2020-05-14)
$ cargo --version
$ cargo 1.45.0-nightly (cb06cb269 2020-05-08)
```

To install Nightly Version
```sh
$ rustup default nightly
$ rustup override set nightly
```

Fix for `cargo-watch` and `cargo-edit` only Win/WSL-Ubuntu.
```
sudo apt install gcc libssl-dev pkg-config
```

Install tool sub-commands
```sh
$ cargo install cargo-watch
$ cargo install cargo-edit
$ cargo install cargo-rocket-docker
```

#### Development Mode

Run in Watch Mode
```sh
$ cargo watch -x run
```

Alternative when has problems
```sh
$ cargo watch -s 'cargo run'
```

#### Release Mode

Build Project
```sh
$ cargo build --release
```

Run Project
```sh
$ cargo run --release
```

## Production Build Setup

```sh
cargo docker --build
cargo docker --push
```

and Docker images are available into
[Docker Hub/Gary Ascuy][dockerhub]

```
garyascuy/cargo-rocket-example:1.0.0
OS/ARCH: linux/amd64
SIZE: 4.31 MB
LAST PUSHED: 12 minutes ago by garyascuy
```

Run Containers
```sh
$ docker run -d -p 3666:3666 garyascuy/cargo-rocket-example
```

and you can use the docker images production in everywhere like K8s.
```sh
open http://localhost:3666
open http://localhost:3666/home
```

[dockerhub]: https://hub.docker.com/repository/docker/garyascuy/cargo-rocket-example

## Links
- https://www.rust-lang.org/
- https://crates.io/
- https://doc.rust-lang.org/1.4.0/book/hello-cargo.html
- https://rocket.rs/v0.4/guide/introduction/
- https://rocket.rs/v0.4/guide/quickstart/
- https://github.com/SergioBenitez/Rocket
- https://docs.rs/crate/cargo-watch/7.0.2
- https://github.com/passcod/cargo-watch
- https://github.com/killercup/cargo-edit
- https://doc.rust-lang.org/1.7.0/book/README.html

## Tools
Disclaimer: I really hate M$/Windows stacks since it is really sad for opensource projects, but it looks interesting

- https://github.com/microsoft/terminal
- https://docs.microsoft.com/en-us/windows/wsl/install-win10
- https://ubuntu.com/wsl
- https://code.visualstudio.com/docs/remote/wsl

## About

Created by [Gary Ascuy][garyascuygithub] and Follow me in [LinkedIn][garyascuylinkedin] or [GitHub][garyascuygithub] if you want :P.

[garyascuygithub]: https://github.com/gary-ascuy
[garyascuylinkedin]: https://www.linkedin.com/in/gary-ascuy-6619bbb9/
