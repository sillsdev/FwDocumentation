
#	Makefile for DocBook documents
#
#	Neil Mayhew - 13 Oct 2004
#
#	$Id$

XSLT        = xsltproc
XSLTFLAGS   = --nonet --xinclude
FO          = fop
FOFLAGS     = -q

XSL_HTML    = docbook-html.xsl
XSL_FO      = docbook-fo.xsl

XML         = $(wildcard *.xml)
HTML	    = $(XML:%.xml=%.html)
PDF 	    = $(XML:%.xml=%.pdf)

%.html: %.xml
	$(XSLT) $(XSLTFLAGS) -o $@ $(XSL_HTML) $^

%.fo: %.xml
	$(XSLT) $(XSLTFLAGS) -o $@ $(XSL_FO) $^

%.pdf: %.fo
	$(FO) $(FOFLAGS) -fo $^ -pdf $@

all:	html

html:	$(HTML)
pdf:	$(PDF)

.PHONY: html pdf clean

clean:
	$(RM) $(HTML) $(PDF)
