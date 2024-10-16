CC = gcc
CFLAGS = -Wall -Wextra -std=c11
SRCS = math_operations.c
OBJS = $(SRCS:.c=.o)
MAIN = main
DOXYFILE = Doxyfile

all: $(MAIN)

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

docs:
	doxygen $(DOXYFILE)

clean:
	$(RM) *.o $(MAIN)

.PHONY: all docs clean