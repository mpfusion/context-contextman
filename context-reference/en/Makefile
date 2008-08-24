
sources =                  \
  co-backgrounds.tex       \
  co-blocks.tex            \
  co-columns.tex           \
  co-colors.tex            \
  co-descriptions.tex      \
  co-documents.tex         \
  co-figures.tex           \
  co-formulas.tex          \
  co-fonts.tex             \
  co-frames.tex            \
  co-interactive.tex       \
  co-introduction.tex      \
  co-language.tex          \
  co-layers.tex            \
  co-layout.tex            \
  co-metapost.tex          \
  co-modules.tex           \
  co-pagedesign.tex        \
  co-preface.tex           \
  co-references.tex        \
  co-tables.tex            \
  co-tabulate.tex          \
  co-textelements.tex      \
  co-typography.tex        \
  co-verbatim.tex

pagedesign_sources =      \
  pagedesign/co-en-1p.tex \
  pagedesign/co-en-1q.tex \
  pagedesign/co-en-2p.tex \
  pagedesign/co-en-2q.tex \
  pagedesign/co-en-3p.tex \
  pagedesign/co-en-3q.tex \
  pagedesign/co-en-4p.tex \
  pagedesign/co-en-4q.tex \
  pagedesign/co-en-5p.tex \
  pagedesign/co-en-5q.tex \
  pagedesign/co-en-6p.tex \
  pagedesign/co-en-6q.tex \
  pagedesign/co-en-7p.tex \
  pagedesign/co-en-7q.tex

columns_sources =      \
  columns/cols-000.tex \
  columns/cols-001.tex \
  columns/cols-002.tex \
  columns/cols-003.tex \
  columns/cols-004.tex \
  columns/cols-005.tex \
  columns/cols-006.tex \
  columns/cols-007.tex \
  columns/cols-101.tex \
  columns/cols-102.tex \
  columns/cols-103.tex \
  columns/cols-200.tex \
  columns/cols-201.tex \
  columns/cols-202.tex \
  columns/cols-203.tex \
  columns/cols-204.tex \
  columns/cols-205.tex \
  columns/cols-206.tex \
  columns/cols-301.tex \
  columns/cols-401.tex \
  columns/cols-402.tex \
  columns/cols-403.tex \
  columns/cols-404.tex \
  columns/cols-405.tex \
  columns/cols-406.tex \
  columns/cols-407.tex \
  columns/cols-501.tex \
  columns/cols-701.tex \
  columns/cols-702.tex \
  columns/cols-703.tex \
  columns/cols-704.tex \
  columns/cols-801.tex \
  columns/cols-802.tex \
  columns/cols-803.tex \
  columns/cols-804.tex \
  columns/cols-805.tex \
  columns/cols-806.tex

contextref.pdf: contextref.tex contextref-env.tex $(sources)
	context contextref

clean:
	texutil --purgeall
	rm -f contextref-mp.{mpy,pdf,tex}

clear: clean
	rm -f contextref.pdf

co-tables.tex: tables/registers-buffer.tex
	touch co-tables.tex

co-pagedesign.tex: $(pagedesign_sources)
	touch co-pagedesign.tex

co-columns.tex: $(columns_sources)
	touch co-columns.tex

