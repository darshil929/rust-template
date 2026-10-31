CARGO ?= cargo
RUSTUP ?= rustup

.DEFAULT_GOAL := help
.PHONY: help setup fmt fmt-check lint check build release clean

help:
	@echo "setup      Install or inspect the pinned Rust toolchain"
	@echo "fmt        Format Rust source"
	@echo "fmt-check  Check Rust source formatting"
	@echo "lint       Run Clippy with warnings denied"
	@echo "check      Check formatting, lints and compilation"
	@echo "build      Build the workspace"
	@echo "release    Build the workspace in release mode"
	@echo "clean      Remove Cargo build artifacts"

setup:
	$(RUSTUP) show

fmt:
	$(CARGO) fmt --all

fmt-check:
	$(CARGO) fmt --all -- --check

lint:
	$(CARGO) clippy --workspace --all-targets --locked -- -D warnings

check: fmt-check lint
	$(CARGO) check --workspace --all-targets --locked

build:
	$(CARGO) build --workspace --locked

release:
	$(CARGO) build --workspace --release --locked

clean:
	$(CARGO) clean
