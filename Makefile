
SUPPORTDIR = support

NAME = thesis
TARGET = thesis.pdf

LATEXPDFFLAGS = -halt-on-error -file-line-error  --synctex=1

single:
	$(MAKE) pdf

full:
	$(MAKE) pdf
	$(MAKE) bib
	$(MAKE) pdf
	$(MAKE) pdf

x:
	$(MAKE) cleanall
	$(MAKE) full

#PRE_BUILD=xslt

MK_DIR=Mk
include $(MK_DIR)/common.mk


