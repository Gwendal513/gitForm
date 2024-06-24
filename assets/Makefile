CC=pandoc
CFLAGS=--from gfm --to html5 --standalone --toc

INDIR=docs
OUTDIR=dist

# Default task
all: $(OUTDIR)/welcome.html

# Generate HTML from Markdown
$(OUTDIR)/%.html: $(INDIR)/%.md
	$(CC) $(CFLAGS) --metadata pagetitle="$(basename $(notdir $@))" --output $@ $<

# Remove generated html files
clean:
	rm -rf dist/*.html
