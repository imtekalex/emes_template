# Latex Makefile using latexmk
# Modified by Dogukan Cagatay <dcagatay@gmail.com>
# Modified by Philipp Jund
# Modified by Andre Schlegel, October of 2023
# Originally from : http://tex.stackexchange.com/a/40759

# Name for your pdf.
PROJNAME=main

# Name for your output folder, containing all generated latex files. Note: The generated pdf will be copied into the project folder for easier access.
OUT_DIR=out

.PHONY: $(PROJNAME).pdf all clean

all: dir $(PROJNAME).pdf

# Create the output directory.
dir:
	mkdir -p $(OUT_DIR)

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk -outdir=$(OUT_DIR) $<
	cp $(OUT_DIR)/$(PROJNAME).pdf $(PROJNAME).pdf

cleanall:
	rm -rf $(OUT_DIR)/*

# Deletes temporary files in the output folder.
clean:
	latexmk -outdir=$(OUT_DIR)/ -c
