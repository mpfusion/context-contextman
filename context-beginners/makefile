# Translations of ConTeXt on Excursion
# 2007 Vit Zyka
#
# Usage examples:
#   make en-print
#   make nl
#   make clean

LANG_EN = en
LANG_NL = nl
LANG_CZ = cz
LANG_ZH = zh
LANG_FR = fr
LANG_VN = vn

LANGS = $(LANG_EN) $(LANG_NL) $(LANG_CZ) $(LANG_ZH) $(LANG_FR) $(LANG_VN)

SCREEN = screen
PRINT  = print

EN = $(LANG_EN)-$(SCREEN) $(LANG_EN)-$(PRINT)

NL = $(LANG_NL)-$(SCREEN) $(LANG_NL)-$(PRINT)

CZ = $(LANG_CZ)-$(SCREEN) $(LANG_CZ)-$(PRINT) $(LANG_CZ)-bulletin

ZH = $(LANG_ZH)-$(SCREEN) $(LANG_ZH)-$(PRINT)

FR = $(LANG_FR)-$(SCREEN) $(LANG_FR)-$(PRINT)

VN = $(LANG_VN)-$(SCREEN) $(LANG_VN)-$(PRINT)

ALL = $(EN) $(NL) $(CZ) $(ZH) $(FR) $(VN)

all: $(ALL)
en: $(EN)
nl: $(NL)
cz: $(CZ)
zh: $(ZH)
fr: $(FR)
vn: $(VN)

.PHONY: $(ALL) clean

CURR_LANG = $(strip $(foreach L,$(LANGS),$(if $(findstring $(L)-,$@),$(L))))
CURR_MODE = $(subst $(CURR_LANG)-,,$@)

CONTEXT = texmfstart texexec --pdf
CLEAN   = texmfstart ctxtools --purge --all

$(ALL):
	$(info ===== Language=$(CURR_LANG)   Mode=$(CURR_MODE) =====)
	cd $(CURR_LANG); \
$(CONTEXT) --mode=$(CURR_MODE) --result=ma-cb-$(CURR_LANG)-$(CURR_MODE).pdf ma-cb-$(CURR_LANG); \
cp -f ma-cb-$(CURR_LANG)-$(CURR_MODE).pdf .. ; \
cd ..

clean:
	$(foreach L,$(LANGS),cd $(L);$(CLEAN);cd ..;)
