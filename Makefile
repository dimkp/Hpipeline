CC = gcc
CFLAGS = -Wall -Wextra -O2 -std=c11
TARGET = scratch/hello
.PHONY: all test clean
all: $(TARGET)
$(TARGET): scratch/hello.c
	$(CC) $(CFLAGS) $< -o $@
test: $(TARGET)
	./$(TARGET)
clean:
	rm -f $(TARGET)
