# Hello World - Rust

Example project to test Rust, it looks like a language that you definitly you need to learn in next years.

I fact that I learn in my path as a developer is that learn new things it is always important/critical/required for us.

### Goals

- Rust
- Rocket
- Cargo
- WSL
- Windows Tools / 2020
- Windows Terminal
- WSL/Ubuntu

### VS Code 

Open a WSL/Ubuntu in new Windows Terminal, Navigate to a folder you'd like to open in VS Code, like `/mnt/d/develop`, then:

```sh
$ code .
```

##### Ref
- https://code.visualstudio.com/docs/remote/wsl

### Development Setup 

Environment - nightly build it is required for rocket.
```
$ rustc --version
$ rustc 1.45.0-nightly (a74d1862d 2020-05-14)
$ cargo --version
$ cargo 1.45.0-nightly (cb06cb269 2020-05-08)
```

Adding nodemon for hot realoading since `cargo-watch` has a bug
```
$ yarn global add nodemon
```

Build Project
```sh
$ cargo build 
```

Run Project
```sh
$ cargo run
```

### References 
- https://www.rust-lang.org/
- https://crates.io/
- https://doc.rust-lang.org/1.4.0/book/hello-cargo.html
- https://rocket.rs/v0.4/guide/introduction/
- https://rocket.rs/v0.4/guide/quickstart/
- https://github.com/SergioBenitez/Rocket
- https://github.com/passcod/cargo-watch

### Tools 
Disclaimer: I really hate M$/Windows stacks since it is really sad for opensource projects, but it looks interesting

- https://github.com/microsoft/terminal
- https://docs.microsoft.com/en-us/windows/wsl/install-win10
- https://ubuntu.com/wsl
- https://code.visualstudio.com/docs/remote/wsl

