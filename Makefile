#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = -Wall
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/VirtualPet

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/VirtualPet

OBJ_DEBUG = $(OBJDIR_DEBUG)/src/game.o $(OBJDIR_DEBUG)/src/main.o $(OBJDIR_DEBUG)/src/pet/pet.o $(OBJDIR_DEBUG)/src/util/util.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/src/game.o $(OBJDIR_RELEASE)/src/main.o $(OBJDIR_RELEASE)/src/pet/pet.o $(OBJDIR_RELEASE)/src/util/util.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src
	test -d $(OBJDIR_DEBUG)/src/pet || mkdir -p $(OBJDIR_DEBUG)/src/pet
	test -d $(OBJDIR_DEBUG)/src/util || mkdir -p $(OBJDIR_DEBUG)/src/util

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/src/game.o: src/game.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/game.c -o $(OBJDIR_DEBUG)/src/game.o

$(OBJDIR_DEBUG)/src/main.o: src/main.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/main.c -o $(OBJDIR_DEBUG)/src/main.o

$(OBJDIR_DEBUG)/src/pet/pet.o: src/pet/pet.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/pet/pet.c -o $(OBJDIR_DEBUG)/src/pet/pet.o

$(OBJDIR_DEBUG)/src/util/util.o: src/util/util.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/util/util.c -o $(OBJDIR_DEBUG)/src/util/util.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)/src
	rm -rf $(OBJDIR_DEBUG)/src/pet
	rm -rf $(OBJDIR_DEBUG)/src/util

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src
	test -d $(OBJDIR_RELEASE)/src/pet || mkdir -p $(OBJDIR_RELEASE)/src/pet
	test -d $(OBJDIR_RELEASE)/src/util || mkdir -p $(OBJDIR_RELEASE)/src/util

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/src/game.o: src/game.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/game.c -o $(OBJDIR_RELEASE)/src/game.o

$(OBJDIR_RELEASE)/src/main.o: src/main.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/main.c -o $(OBJDIR_RELEASE)/src/main.o

$(OBJDIR_RELEASE)/src/pet/pet.o: src/pet/pet.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/pet/pet.c -o $(OBJDIR_RELEASE)/src/pet/pet.o

$(OBJDIR_RELEASE)/src/util/util.o: src/util/util.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/util/util.c -o $(OBJDIR_RELEASE)/src/util/util.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)/src
	rm -rf $(OBJDIR_RELEASE)/src/pet
	rm -rf $(OBJDIR_RELEASE)/src/util

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

