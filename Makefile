#
# Makefile for term-wipe
#
# rum trundle tum rumble
#

SRC = src/term-wipe.AppleScript
EXE = bin/term-wipe

build: $(SRC)
	@echo "  Making an executable script..."
	@mkdir bin
	@echo "#!/usr/bin/osascript" > $(EXE)
	@cat $(SRC) >> $(EXE)
	@chmod +x $(EXE)

clean: $(EXE)
	@echo "  Removing generated term-wipe"
	@rm -rf bin
