# LaTeX Makefile using latexmk
# Builds $(PROJNAME).pdf in project root, with intermediates in $(OUT_DIR)
#
# Originally from: https://tex.stackexchange.com/a/40759
# Based on a Makefile with contributions by:
#   - Dogukan Cagatay <dcagatay@gmail.com>
#   - Philipp Jund
#   - Andre Schlegel (October 2023)
#
# Thanks to the authors and contributors for sharing.

PROJNAME := main
OUT_DIR  := out

LATEXMK  := latexmk
LATEXMK_FLAGS := -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUT_DIR)

.PHONY: all dir clean cleanall

all: $(PROJNAME).pdf

# Ensure output directory exists
dir:
	@mkdir -p "$(OUT_DIR)"

# Build PDF
$(PROJNAME).pdf: $(PROJNAME).tex | dir
	$(LATEXMK) $(LATEXMK_FLAGS) $<
	@cp "$(OUT_DIR)/$(PROJNAME).pdf" "$(PROJNAME).pdf"

# Remove latexmk temporary files in OUT_DIR (keeps PDFs)
clean: | dir
	$(LATEXMK) -outdir="$(OUT_DIR)" -c

# Remove everything generated (OUT_DIR + copied PDF)
cleanall:
	$(LATEXMK) -outdir="$(OUT_DIR)" -C 2>/dev/null || true
	@rm -rf "$(OUT_DIR)"
	@rm -f "$(PROJNAME).pdf"
