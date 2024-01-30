# leads comments in a line 
# Build all: default target

CC := gcc
CFLAGS := -Wall -g
EXE_NAME := ToolTest
OBJECTS := functions.o main.o
VALGRIND_FLAGS := --leak-check=yes

.PHONY: all
all : $(OBJECTS)
	$(CC) $(CFLAGS) -o $(EXE_NAME) $(OBJECTS)

.PHONY: clean
clean :
	rm -f $(OBJECTS) $(EXE_NAME)

.PHONY: check
check: all
	./$(EXE_NAME)

.PHONY: valgrind
valgrind: $(EXE_NAME)
	valgrind $(VALGRIND_FLAGS) ./$(EXE_NAME)

functions.o: functions.h ToolsCRP/functions.c
	$(CC) $(CFLAGS) -c functions.c

main.o: main.c
	$(CC) $(CFLAGS) -c main.c




