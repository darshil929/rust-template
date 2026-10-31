# Rust project foundation

A dependency-free starting point for a Rust project. The root package contains an empty `src/lib.rs`, with no application code, examples or tests. Rust 1.99.1 and Edition 2024 are configured; Cargo.lock is included.

## Layout

```text
.
├── Cargo.toml
├── Cargo.lock
├── Makefile
├── rust-toolchain.toml
├── src/lib.rs
├── .editorconfig
├── .gitignore
├── .github/
├── LICENSE-MIT
└── LICENSE-APACHE
```

## Start working

Rename the package in Cargo.toml for your project, then implement its code in `src/lib.rs`. For an executable, add `src/main.rs`; remove `src/lib.rs` if you only need a binary. The root workspace can also accommodate additional packages when needed. Add dependencies with Cargo as your implementation requires them.

The manifest has no framework dependencies, application configuration, custom lint policy or release optimizations. Publication is disabled until you choose a package name and explicitly enable it. Review the existing MIT/Apache-2.0 licensing choice for your project.

## Make commands

| Command | Purpose |
|---|---|
| `make` | List available targets |
| `make setup` | Install or inspect the pinned Rust toolchain |
| `make fmt` | Format Rust source |
| `make fmt-check` | Check formatting |
| `make lint` | Run Clippy with warnings denied |
| `make check` | Check formatting, lints and compilation |
| `make build` | Build the workspace |
| `make release` | Build in release mode |
| `make clean` | Remove build artifacts |

Make and Rust/rustup must be installed. `CARGO` and `RUSTUP` can override executable names. CI configures formatting, linting and builds on Linux, macOS and Windows; Windows uses equivalent Cargo commands without requiring Make.

The ignore rules preserve local environment files and AGENTS.md outside version control. Dependency and GitHub Actions updates are configured in .github/dependabot.yml.
