.PHONY: clean test install

SCRIPT_NAME := saam
INSTALL_DIR := /usr/local/bin
TAG_DIR := $(TMPDIR)saam__/

test:
	shellcheck $(SCRIPT_NAME)
	./test.sh

clean:
	@echo "Uninstalling $(SCRIPT_NAME)"
	@rm -rf $(TAG_DIR)
	@rm -rf $(INSTALL_DIR)/$(SCRIPT_NAME)

install:
	@echo "Installing $(SCRIPT_NAME)"
	@mkdir $(TAG_DIR)
	@cp $(SCRIPT_NAME) $(INSTALL_DIR)
	@chmod +x $(INSTALL_DIR)/$(SCRIPT_NAME)
