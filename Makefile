# A Nice Makefile
TARGETS=bad_memory

CROSS_TOOL =
CC_CPP= $(CROSS_TOOL)g++
CC_C = $(CROSS_TOOL)gcc

CFLAGS= -Wall -Werror -Wextra -g -std=c99

all: clean $(TARGETS)

$(TARGETS):
		$(CC) $(CFLAGS) $@.c -o $@

clean:
		rm -f $(TARGETS)
