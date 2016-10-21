.DEFAULT_GOAL := all

.PHONY: all
all: ## Compile for production
	cargo build --release

.PHONY: clean
clean: ## Clean compiled files and dependencies
	cargo clean

.PHONY: install
install: ## Install files to the system
	mkdir -p $(DESTDIR)
	install -Dm644 systemd/happy-friday.service $(DESTDIR)etc/systemd/system/happy-friday.service
	install -Dm644 systemd/happy-friday.timer $(DESTDIR)etc/systemd/system/happy-friday.timer
	install -Dm755 target/release/happy-friday $(DESTDIR)usr/bin/happy-friday
