.DEFAULT_GOAL := all

.PHONY: all
all: ## Compile for production
	cargo clean
	cargo build --release
	ldd target/release/happy-friday
	strip target/release/happy-friday
	zip -j happyFridayLambda.zip target/release/happy-friday index.js
