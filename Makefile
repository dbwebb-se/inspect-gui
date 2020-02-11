#!/usr/bin/env make
#
# dbwebb utility, to work with a dbwebb course.
# See organisation on GitHub: https://github.com/dbwebb-se

# ------------------------------------------------------------------------
#
# General stuff, reusable for all Makefiles.
#

# Detect OS
OS = $(shell uname -s)

# Defaults
ECHO = echo

# Make adjustments based on OS
ifneq (, $(findstring CYGWIN, $(OS)))
	ECHO = /bin/echo -e
endif

# Colors and helptext
NO_COLOR	= \033[0m
ACTION		= \033[32;01m
OK_COLOR	= \033[32;01m
ERROR_COLOR	= \033[31;01m
WARN_COLOR	= \033[33;01m

# Print out colored action message
ACTION_MESSAGE = $(ECHO) "$(ACTION)---> $(1)$(NO_COLOR)"

# Which makefile am I in?
WHERE-AM-I = "$(CURDIR)/$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))"
THIS_MAKEFILE := $(call WHERE-AM-I)

# Echo some nice helptext based on the target comment
HELPTEXT = $(call ACTION_MESSAGE, $(shell egrep "^\# target: $(1) " $(THIS_MAKEFILE) | sed "s/\# target: $(1)[ ]*-[ ]* / /g"))

# Check version  and path to command and display on one line
CHECK_VERSION = printf "%-15s %-13s %s\n" "`basename $(1)`" "`$(1) --version $(2)`" "`which $(1)`"

# Get current working directory, it may not exist as environment variable.
PWD = $(shell pwd)

# target: help                    - Displays help.
.PHONY:  help
help:
	@$(call HELPTEXT,$@)
	@sed '/^$$/q' $(THIS_MAKEFILE) | tail +3 | sed 's/#\s*//g'
	@$(ECHO) "Usage:"
	@$(ECHO) " make [target] ..."
	@$(ECHO) "target:"
	@egrep "^# target:" $(THIS_MAKEFILE) | sed 's/# target: / /g'



# ------------------------------------------------------------------------
#
# Specifics for this project.
#
# # Default values for arguments
# container ?= cli
# 
# # Add local bin path for test tools
# PATH := $(PWD)/bin:$(PWD)/vendor/bin:$(PWD)/node_modules/.bin:$(PATH)
# SHELL := env PATH='$(PATH)' $(SHELL)
# 
# # Tools
# DBWEBB   		:= bin/dbwebb
# DBWEBB_VALIDATE := bin/dbwebb-validate
# DBWEBB_INSPECT  := bin/dbwebb-inspect
# PHPCS   := bin/phpcs
# PHPMD   := bin/phpmd



# ----------------------------------------------------------------------------
#
# Highlevel targets
#
# # target: prepare                 - Prepare the build directory.
# .PHONY: prepare
# prepare:
# 	@$(call HELPTEXT,$@)
# 	[ -d build ]   || install -d build/webroot
# 	[ -d bin/pip ] || install -d bin/pip



# target: install                 - Install needed utilities locally.
.PHONY: install
install:
	@$(call HELPTEXT,$@)
	install --mode 0755 gui.bash /usr/local/bin/dbwebb-inspect-gui



# target: deinstall               - Deinstall needed utilities locally.
.PHONY: deinstall
deinstall:
	@$(call HELPTEXT,$@)
	rm /usr/local/bin/dbwebb-inspect-gui



# target: test                    - Run tests.
.PHONY: test
test:
	@$(call HELPTEXT,$@)


# target: clean                   - Remove all generated files.
.PHONY:  clean
clean:
	@$(call HELPTEXT,$@)
