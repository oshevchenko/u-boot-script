# Variables
MKIMAGE = mkimage
SRC = boot.txt
OUT = boot.scr
NAME = "My U-Boot Script"

# Default target
all: $(OUT)

# Rule to generate the .scr file from the .txt file
$(OUT): $(SRC)
	$(MKIMAGE) -T script -C none -n $(NAME) -d $(SRC) $(OUT)

# Clean target to remove generated files
clean:
	rm -f $(OUT)

# Declare phony targets (targets that aren't actual files)
.PHONY: all clean
