# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c11

# Target executable name
TARGET = args

# Source files
SRC = main.c

# Build rules
all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean up build artefacts
clean:
	rm -f $(TARGET)

# Run program with optional args: make run ARGS="--help"
run: $(TARGET)
	./$(TARGET) $(ARGS)
