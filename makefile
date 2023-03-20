# Makefile for building the Twine project generator

# Variables
EXECUTABLE_NAME = twine_project_generator
BUILD_DIR = build/
DART_FILE = bin/twine_project_generator.dart
ifeq ($(OS),Windows_NT)
	EXECUTABLE_NAME := $(EXECUTABLE_NAME).exe
endif

.PHONY: build clean

# Build target
build:
	dart compile exe $(DART_FILE) -o ${BUILD_DIR}$(EXECUTABLE_NAME)

# Clean target
clean:
	rm -f $(BUILD_DIR)$(EXECUTABLE_NAME)