# Unix, using gcc

CC = gcc
TARGET =

HOST_TRIPLET := $(shell $(CC) -dumpmachine 2>/dev/null)

# Default empty; set to .exe for MinGW targets
EXEEXT   :=
ifneq (,$(findstring mingw,$(HOST_TRIPLET)))
  EXEEXT := .exe
endif

TARGETEXTENSION = $(EXEEXT)

CCOUT = -o $(DUMMY)
CFLAGS = -c -std=c90 -g -pedantic -Wno-long-long -DUNIX $(OUTFMTS)

LD = $(CC)
LDOUT = $(CCOUT)
LDFLAGS = -lm

RM = rm -f

include make.rules
