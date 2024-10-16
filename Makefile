CC = gcc
CFLAGS = -Wall -Wextra -std=c11
SRCS = math_operations.c main.c
OBJS = $(SRCS:.c=.o)
MAIN = main
DOXYFILE = Doxyfile

all: $(MAIN)

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

docs: $(DOXYFILE)
	doxygen $(DOXYFILE)

$(DOXYFILE):
	doxygen -g $(DOXYFILE)
	@echo "PROJECT_NAME           = \"Math Operations\"" >> $(DOXYFILE)
	@echo "PROJECT_BRIEF          = \"A simple C project demonstrating basic math operations\"" >> $(DOXYFILE)
	@echo "OUTPUT_DIRECTORY       = docs" >> $(DOXYFILE)
	@echo "GENERATE_LATEX         = NO" >> $(DOXYFILE)
	@echo "EXTRACT_ALL            = YES" >> $(DOXYFILE)
	@echo "EXTRACT_PRIVATE        = YES" >> $(DOXYFILE)
	@echo "EXTRACT_STATIC         = YES" >> $(DOXYFILE)
	@echo "INPUT                  = ." >> $(DOXYFILE)
	@echo "FILE_PATTERNS          = *.c *.h" >> $(DOXYFILE)
	@echo "RECURSIVE              = YES" >> $(DOXYFILE)

clean:
	$(RM) *.o $(MAIN)
	$(RM) -r docs

.PHONY: all docs clean