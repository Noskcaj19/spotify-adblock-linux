CC=gcc-9
CFLAGS=-Wall -dynamiclib -fPIC
LDLIBS=-ldl -lcurl
TARGET=spotify-adblock

.PHONY: all
all: $(TARGET).dylib

$(TARGET).dylib: $(TARGET).c whitelist.h blacklist.h
	$(CC) $(CFLAGS) -o $@ $(LDLIBS) $^

.PHONY: clean
clean:
	rm -f $(TARGET).dylib