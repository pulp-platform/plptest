INSTALL_DIR ?= $(CURDIR)/install
BUILD_DIR   ?= $(CURDIR)/build

all: build

$(INSTALL_DIR)/bin/plptest_checker: $(BUILD_DIR)/plptest_checker
	install -D $< $@

$(BUILD_DIR)/plptest_checker: src/plptest_checker.c
	mkdir -p $(BUILD_DIR)
	gcc -O3 -g src/plptest_checker.c -o $(BUILD_DIR)/plptest_checker

build: $(INSTALL_DIR)/bin/plptest_checker
