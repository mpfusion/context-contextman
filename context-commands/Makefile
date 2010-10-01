# main entry point for creation of pdf and html files

sources = $(shell find . -name "*.tex" -o -name "*.lua" -o -name "*.cid")

# default target
pdf: ctx-ref.pdf

%.pdf: %.cld $(sources) Makefile
	context $<

%-debug.pdf: %.cld $(sources) Makefile
	context --mode=debug --result=$(basename $@) $<

clean:
	context --purgeall

clear: clean
	rm -f ctx-ref.pdf
