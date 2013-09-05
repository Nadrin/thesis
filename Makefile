.DEFAULT_GOAL = dvi
.PHONY: all clean

TEXCOMPILE=latexmk
MAINFILE=thesis

all: dvi pdf

dvi:
	$(TEXCOMPILE) $(MAINFILE)

pdf:
	$(TEXCOMPILE) -pdf $(MAINFILE)

clean:
	$(TEXCOMPILE) -C $(MAINFILE)
