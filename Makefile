check:
	cargo watch -x check -x test -x run

coverage:
	cargo tarpaulin --ignore-tests

lint:
	cargo clippy -- -D warnings

fmt:
	cargo fmt -- --check

security:
	cargo audit

expand:
	cargo expand

udeps:
	cargo +nightly udeps --all-targets

# We are using the `bunyan` CLI to prettify the outputted logs
# The original `bunyan` requires NPM, but you can install a Rust-port with
# `cargo install bunyan`
test:
	TEST_LOG=true cargo test health_check_works | bunyan