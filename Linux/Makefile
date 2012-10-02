
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
LINT        = $(XML:%.xml=%.lint)
TIDY        = $(XML:%.xml=%-tidy.html)

%.html: %.xml
	$(XSLT) $(XSLTFLAGS) -o $@ $(XSL_HTML) $^

%.fo: %.xml
	$(XSLT) $(XSLTFLAGS) -o $@ $(XSL_FO) $^

%.pdf: %.fo
	$(FO) $(FOFLAGS) -fo $^ -pdf $@

%-tidy.html %.lint: %.html
	-xmllint $(XSLTFLAGS) --valid --format -o $*-tidy.html $^ 2>$*.lint
	@cat $*.lint

all:	html pdf tidy

html:	$(HTML)
pdf:	$(PDF)
tidy:	$(TIDY)
lint:	$(LINT)

.PHONY: html pdf tidy lint clean

clean:
	$(RM) $(HTML) $(PDF) $(TIDY) $(LINT)
