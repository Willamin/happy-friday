# Happy Friday!

Slack notifier/ping application. The goal of this project is to produce a single
binary which is able to run on most modern Linux distributions.

It is scheduled to run on Fridays at 09:00 eastern time.

# Example

![friday](https://cloud.githubusercontent.com/assets/3905798/19406168/ecebd63c-924e-11e6-8a48-cc32f998e5a4.png)

# System requirements

 - [Rust][rust] `~> 1.12.0` with Cargo
 - GNU make

# Getting started

```bash
# Navigate to the src/ directory
$ cd src

# Copy the example configuration file; edit where appropriate
$ cp config.example.rs config.rs

# Compile the application
$ cargo build

# Run the application
$ cargo run

# Install services and compiled binary
$ make DESTDIR="/" install
```

[rust]: https://www.rust-lang.org/
