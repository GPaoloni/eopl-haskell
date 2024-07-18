# Default values
ROOT_PATH ?= .
FILE_NAME ?= main.hs

# Compile target
compile:
	@echo "Generating parser..."
	happy $(ROOT_PATH)/Parser.y
	@echo "\n"
	@echo "Compiling..."
	ghc -Wall -i=$(ROOT_PATH) $(ROOT_PATH)/$(FILE_NAME)
	@echo "\n"

# Clean target
clean:
	rm -f *.o *.hi $(ROOT_PATH)/*.o $(ROOT_PATH)/*.hi $(basename $(FILE_NAME)) $(ROOT_PATH)/Parser.hs

# Help target
help:
	@echo "Usage:"
	@echo "  make compile ROOT_PATH=<path> FILE_NAME=<file>"
	@echo "  make clean ROOT_PATH=<path> FILE_NAME=<file>"
	@echo "  make help"
	@echo ""
	@echo "Parameters:"
	@echo "  ROOT_PATH : The root path for the -i flag (default: .)"
	@echo "  FILE_NAME : The name of the Haskell file to compile (default: main.hs)"

# Set the default target
.DEFAULT_GOAL := compile