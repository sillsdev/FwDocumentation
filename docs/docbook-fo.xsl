<?xml version='1.0'?>
<xsl:stylesheet version='1.0'
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!-- Import main docbook stylesheet -->
<!-- (should be cached in local catalog) -->

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>

<!-- Customize output by setting parameters -->

<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="toc.section.depth">1</xsl:param>
<xsl:param name="generate.section.toc.level">0</xsl:param>
<xsl:param name="use.extensions" select="1"/>
<!--xsl:param name="generate.toc">article title</xsl:param--> <!-- Suppress TOC -->

<xsl:param name="ulink.hyphenate" select="'&#xAD;'"/>
<xsl:param name="ulink.footnotes" select="1"/>
<xsl:attribute-set name="xref.properties">
  <xsl:attribute name="text-decoration">underline</xsl:attribute>
  <xsl:attribute name="color">#000088</xsl:attribute>
</xsl:attribute-set>

<xsl:param name="title.font.family">Palatino</xsl:param>
<xsl:param name="body.font.family">Palatino</xsl:param>
<xsl:param name="body.margin.top" select="'0.75in'"/>
<xsl:param name="body.start.indent" select="'0pt'"/>
<xsl:param name="column.count.body" select="1"/>
<xsl:param name="line-height" select="1.4"/>
<xsl:param name="body.font.master" select="12"/>
<xsl:param name="xep.extensions" select="1"/>
<xsl:param name="title.margin.left" select="'0pt'"/> <!-- Needed when fop.extensions is on -->

<!-- Title page font sizes -->

<xsl:attribute-set name="article.titlepage.recto.style">
  <xsl:attribute name="font-family">
	<xsl:value-of select="$title.font.family"/>
  </xsl:attribute>
  <xsl:attribute name="font-weight">normal</xsl:attribute>
  <xsl:attribute name="font-style">italic</xsl:attribute>
  <xsl:attribute name="font-size">10pt</xsl:attribute>
  <!--xsl:attribute name="line-height">1.3</xsl:attribute-->
  <!--xsl:attribute name="text-align">left</xsl:attribute-->
</xsl:attribute-set>

<!-- Title page text handling -->

<xsl:template match="author" mode="titlepage.mode">
  <fo:block font-size="12pt">
	<fo:block>
	  <xsl:call-template name="anchor"/>
	  <xsl:call-template name="person.name"/>
	</fo:block>
	<xsl:if test="affiliation/orgname">
	  <fo:block>
		<xsl:apply-templates select="affiliation/orgname" mode="titlepage.mode"/>
	  </fo:block>
	</xsl:if>
	<xsl:if test="email|affiliation/address/email">
	  <fo:block font-size="10pt">
		<xsl:apply-templates select="(email|affiliation/address/email)[1]"/>
	  </fo:block>
	</xsl:if>
  </fo:block>
</xsl:template>

<!-- Section title font colour -->

<xsl:attribute-set name="section.title.properties">
  <xsl:attribute name="font-family">
	<xsl:value-of select="$title.font.family"/>
  </xsl:attribute>
  <xsl:attribute name="font-weight">bold</xsl:attribute>
  <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
  <xsl:attribute name="text-align">left</xsl:attribute>
  <xsl:attribute name="space-before.minimum">0.8em</xsl:attribute>
  <xsl:attribute name="space-before.optimum">1.0em</xsl:attribute>
  <xsl:attribute name="space-before.maximum">1.2em</xsl:attribute>
  <!--xsl:attribute name="color">#990000</xsl:attribute-->
</xsl:attribute-set>

<!-- Section title font sizes -->

<xsl:attribute-set name="section.title.level1.properties">
  <xsl:attribute name="font-size">
	<xsl:value-of select="$body.font.master * 1.33"/>
	<xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level2.properties">
  <xsl:attribute name="font-size">
	<xsl:value-of select="$body.font.master * 1.21"/>
	<xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level3.properties">
  <xsl:attribute name="font-size">
	<xsl:value-of select="$body.font.master * 1.1"/>
	<xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level4.properties">
  <xsl:attribute name="font-size">
	<xsl:value-of select="$body.font.master * 1.0"/>
	<xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<!-- Lists -->

<xsl:attribute-set name="list.block.spacing">
  <xsl:attribute name="margin-left">1em</xsl:attribute>
  <xsl:attribute name="space-after.optimum">0em</xsl:attribute>
  <xsl:attribute name="space-after.minimum">0em</xsl:attribute>
  <xsl:attribute name="space-after.maximum">0.2em</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="list.item.spacing">
  <xsl:attribute name="space-before.optimum">0em</xsl:attribute>
  <xsl:attribute name="space-before.minimum">0em</xsl:attribute>
  <xsl:attribute name="space-before.maximum">0.2em</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>
