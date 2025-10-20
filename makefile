SHELL := /bin/zsh

.PHONY: build install uninstall

INSTALL_DIR := $(HOME)/.local/bin
SRC := sshii
TARGET := $(INSTALL_DIR)/$(SRC)

build: install

install:
	@echo "Installing $(SRC) to $(INSTALL_DIR)"
	@mkdir -p "$(INSTALL_DIR)"
	@cp -f "$(SRC)" "$(TARGET)"
	@chmod +x "$(TARGET)"
	@echo "Installed $(TARGET)"

uninstall:
	@echo "Removing $(TARGET)"
	@rm -f "$(TARGET)"
	@echo "Removed $(TARGET)"

