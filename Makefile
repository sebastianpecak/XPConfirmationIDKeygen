CC ?= gcc
CFLAGS ?= -O2 -std=c11 -Wall -Wextra -pedantic

BIN := xpconfirm_cli
SRC := main.c

.PHONY: all clean

all: $(BIN)

$(BIN): $(SRC)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(BIN)
