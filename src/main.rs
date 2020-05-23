#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;

#[get("/")]
fn index() -> &'static str {
    "Trust me, Rust will dominate the World!"
}

#[get("/home")]
fn home() -> &'static str {
    "Just another borring route"
}

fn rocket() -> rocket::Rocket {
    rocket::ignite().mount("/", routes![index, home])
}

fn main() {
    rocket().launch();
}
