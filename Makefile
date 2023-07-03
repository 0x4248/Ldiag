#!/usr/bin/make 
# ldiag - A simple bash script to create a diagnostic report of the system
# GitHub: https://www.gitub.com/lewisevans2007/ldiag
# By: Lewis Evans
# If there are any issues please create an issue on GitHub

CSCRIPTOUT	= build/diagnostic.c
SOURCE	= diagnostic.sh
OUT	= build/diagnostic
BUILD_DIR = build

all: setup compile run

setup:
	sudo apt-get update
	sudo apt install gcc shc
	if [ ! -d "$(BUILD_DIR)" ]; then mkdir $(BUILD_DIR); fi

compile:
	shc -f $(SOURCE)
	mv diagnostic.sh.x.c build/diagnostic.c
	mv diagnostic.sh.x build/diagnostic
	
clean:
	rm -rf $(BUILD_DIR)

run:
	sudo ./$(OUT)

test:
	./$(OUT)
	sudo ./$(OUT)
	sudo ./$(OUT) -q
	sudo ./$(OUT) -h