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