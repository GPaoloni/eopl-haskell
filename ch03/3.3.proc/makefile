# Child Makefile

# Path to the parent directory
PARENT_DIR := ..

# Default target
.DEFAULT_GOAL := build

# Targets that pass through to the parent Makefile
compile run build test clean help buildrun:
	@$(MAKE) -C $(PARENT_DIR) $@ ROOT_PATH=$(CURDIR) FILE_NAME=Main.hs EXECUTABLE=proc --no-print-directory


.PHONY: compile run build test clean help buildrun