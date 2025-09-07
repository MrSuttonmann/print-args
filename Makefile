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

# Install executable to /usr/local/bin
install: $(TARGET)
	@echo "Installing $(TARGET) to /usr/local/bin..."
	sudo cp $(TARGET) /usr/local/bin/
	sudo chmod +x /usr/local/bin/$(notdir $(TARGET))
	@echo "Installation complete."

# Uninstall executable from /usr/local/bin
uninstall:
	@echo "Removing /usr/local/bin/$(notdir $(TARGET))..."
	sudo rm -f /usr/local/bin/$(notdir $(TARGET))
	@echo "Uninstallation complete."

# Clean up build artefacts
clean:
	rm -f $(TARGET)

# Run program with optional args: make run ARGS="--help"
run: $(TARGET)
	./$(TARGET) $(ARGS)
