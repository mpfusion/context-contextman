# main entry point for creation of pdf and html files

sources = $(shell find . -name "*.tex" -o -name "*.lua" -o -name "*.cid")

# default target
pdf: ctx-ref.pdf

%.pdf: %.cld $(sources) Makefile
	context $<

clean:
	context --purgeall

clear: clean
	rm -f ctx-ref.pdf
