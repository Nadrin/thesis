.DEFAULT_GOAL = dvi
.PHONY: all clean prepare

TEXCOMPILE=rubber --cache
MAINFILE=thesis
BUILDDIR=build

all: dvi pdf

prepare:
	mkdir -p $(BUILDDIR)
	ln -sf ../chapters $(BUILDDIR)/

dvi: prepare
	$(TEXCOMPILE) --into $(BUILDDIR) $(MAINFILE)

pdf: prepare
	$(TEXCOMPILE) --into $(BUILDDIR) --pdf $(MAINFILE)

clean:
	rm -rf $(BUILDDIR)
