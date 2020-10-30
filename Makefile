# Generate pdfs from md files

# Directory containing output pdf files
OUTPUT_DIR := pdf

# All files ends with .md is considered to be converted
SOURCES := $(wildcard *.md)

##### For building individual pdf 
# These are the targets
OBJECTS := $(SOURCES:%.md=$(OUTPUT_DIR)/%.pdf)

individual: $(OBJECTS)

# Recipe for converting a Markdown file into PDF using Pandoc
$(OUTPUT_DIR)/%.pdf: %.md
	pandoc $< \
	-V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" \
	-V colorlinks \
	-o $@

##### For building a combined pdf
# The target
COMBINED := $(OUTPUT_DIR)/combined.pdf

combine: $(COMBINED)

# Recipe
$(OUTPUT_DIR)/combined.pdf: $(wildcard protocol*.md)
	pandoc -s $^ \
	-V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" \
	-V colorlinks \
	-V toc \
	-V toc-depth=1 \
	-o $@

.PHONY : clean cleanc

clean:
	rm -f $(OUTPUT_DIR)/*.pdf

cleanc:
	rm $(COMBINED)