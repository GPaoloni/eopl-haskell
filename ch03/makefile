# Default values
ROOT_PATH ?= .
FILE_NAME ?= Main.hs
EXECUTABLE ?= Main
PARSER_LOCATION ?= src

# Compile target
compile:
	@echo "Generating parser..."
	@cd $(ROOT_PATH) && happy $(PARSER_LOCATION)/Parser.y
	@echo "\n"
	@echo "Compiling with Cabal..."
	@cd $(ROOT_PATH) && cabal build
	@echo "\n"

# Run target
run:
	@cd $(ROOT_PATH) && cabal run $(EXECUTABLE) -- $(PWD)/$$PARSE_TARGET

# Build target using Cabal
build:
	@cd $(ROOT_PATH) && cabal build

buildrun: compile run

# Test target using Cabal
test:
	@cd $(ROOT_PATH) && cabal test --test-option=--color

# Clean target
clean:
	@cd $(ROOT_PATH) && cabal clean
# @echo "Removing generated files"
# @rm -f *.o *.hi $(ROOT_PATH)/*.o $(ROOT_PATH)/*.hi $(basename $(FILE_NAME)) $(ROOT_PATH)/Parser.hs


# Help target
help:
	@echo "Usage:"
	@echo "  TO-DO"

# Set the default target
.DEFAULT_GOAL := compile
