SHELL := /bin/bash

RUSTC ?= rustc

cargomake:
	$(info Installing CARGO MAKE (RECOMMENDED BUILD SYSTEM))
	rustc --version
	cargo --version
	cargo install cargo-make
	cargo make optimized

unoptimized:
	$(info Making (UNOPTIMIZED) ...)
	rustc --version
	cargo build
	cargo run
optimized: 
	$(info Making (OPTIMIZED) ...)
	rustc --version
	cargo build --release
	cargo run
quiet:
	$(info Making (QUIET) ...)
	rustc --version
	cargo build --quiet
	cargo run
unoptimized-clean:
	$(info Making [CLEAN] (UNOPTIMIZED) ...)
	rustc --version
	cargo clean
	cargo build
	cargo run
optimized-clean: 
	$(info Making [CLEAN] (OPTIMIZED) ...)
	rustc --version
	cargo clean
	cargo build --release
	cargo run
quiet-clean:
	$(info Making [CLEAN] (QUIET) ...)
	rustc --version
	cargo clean
	cargo build --quiet
	cargo run