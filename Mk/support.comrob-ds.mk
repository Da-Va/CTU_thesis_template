#
# Date:      2018/12/18 12:07
# Author:    Jan Faigl
#

-include $(MK_DIR)/paths.mk

# EXT_DIR = $(COMROB_DS_EXT_DIR)
# FILES = $(COMROB_DS_FILES)

TOUCH_FILE=$(DEST_DIR)/.done-comrob-ds
DEST_DIR=../../fig
CACHE_DIR = .
# SOURCE_FILES=$(addprefix $(EXT_DIR)/,$(FILES))
DEST_FILES=$(addprefix $(DEST_DIR)/,$(FILES))

all: $(DEST_FILES)

copy: all #$(TOUCH_FILE)

# $(TOUCH_FILE): $(DEST_FILES)
# 	touch $(TOUCH_FILE)

# $(DEST_DIR)/% : $(EXT_DIR)/%
# 	@echo "Copy '$<' to '$@'"
# 	@$(CP) $< $@

$(DEST_DIR)/%: $(CACHE_DIR)/%
	@echo "Copy '$<' to '$@'"
	@$(CP) $< $@

$(DEST_DIR)/%: $(EXT_DIR)/%
	@echo "Copy '$<' to '$@'"
	@$(CP) $< $@
	@echo "Copy '$<' to '$(CACHE_DIR)/$%'"
	@$(CP) $< $(CACHE_DIR)/$%

clean:
	$(RM) $(TOUCH_FILE)


cleanall: clean
	$(RM) $(DEST_FILES)

