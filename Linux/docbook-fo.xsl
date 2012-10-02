<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				version='1.0'
				xmlns="http://www.w3.org/TR/xhtml1/transitional"
				exclude-result-prefixes="#default">

<!-- Import main docbook stylesheet -->
<!-- (should be cached in local catalog) -->

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>

<!-- Customize output by setting parameters -->

<xsl:variable name="section.autolabel">1</xsl:variable>
<xsl:variable name="body.font.family">sans-serif</xsl:variable>

</xsl:stylesheet>
