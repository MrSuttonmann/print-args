# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c11

# Target executable name
TARGET = bin/print-args

# Source files
SRC = print-args.c

# Build rules
build: $(TARGET)

$(TARGET): $(SRC)
	@mkdir -p bin
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean up build artefacts
clean:
	rm -f $(TARGET)

# Run program with optional args: make run ARGS="--help"
run: $(TARGET)
	./$(TARGET) $(ARGS)
