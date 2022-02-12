
CHAPTERS := metadata.yml book.md
PANDOC := ~/apps/bin/pandoc

OPTS_ALL := --toc -f markdown-smart \
            --top-level-division=chapter

PDF_OPTS := $(OPTS_ALL) \
            --default-image-extension=pdf

EPUB_OPTS := $(OPTS_ALL) \
	--default-image-extension=png \
	-t epub3 --toc-depth=1 \
	--epub-cover-image=cover.png

all: book.pdf book.epub book.docx

book.pdf: $(CHAPTERS) Makefile
	$(PANDOC) $(PDF_OPTS) -o $@ $(CHAPTERS)

book.epub: $(CHAPTERS) Makefile
	$(PANDOC) $(EPUB_OPTS) -o $@ $(CHAPTERS)
book.docx: $(CHAPTERS) Makefile
	$(PANDOC) $(PDF_OPTS) -o $@ $(CHAPTERS)
clean:
	rm book.pdf book.epub book.docx


