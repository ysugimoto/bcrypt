extern crate bcrypt;

use bcrypt::{hash, DEFAULT_COST};
use std::env;
use std::io;

fn main() {
    let mut input = String::new();

    let args: Vec<String> = env::args().collect();
    if args.len() > 1 {
        input = args[1].clone()
    } else {
        io::stdin().read_line(&mut input).unwrap();
    }

    let crypted = hash(input.trim_end(), DEFAULT_COST).unwrap();
    println!("crypted {}", crypted);
}
