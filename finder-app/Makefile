# Define the cross-compiler
CC = $(CROSS_COMPILE)gcc

# Define the target executable
TARGET = writer

# Define the source files
SRC = writer.c

# Default target: compile the writer application
$(TARGET): $(SRC)
	$(CC) -o $(TARGET) $(SRC)

# Clean up generated files
clean:
	rm -f $(TARGET) *.o
