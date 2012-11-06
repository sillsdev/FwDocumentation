<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:import href="./common/docbook-xsl/xhtml/docbook.xsl"/>
	<xsl:output method="xml" encoding="UTF-8" />
	<!-- indent="yes" messes up the callout links in a code or programlist section -->
	<!--<xsl:output method="xml" encoding="UTF-8" indent="yes"/>-->
	<xsl:strip-space elements="*"/>
	<xsl:param name="admon.graphics" select="1"/>
	<xsl:param name="admon.graphics.path">../images/admon/</xsl:param>
	<xsl:param name="admon.graphics.extension" select="'.gif'"/>
	<xsl:param name="callout.graphics.path">../images/callout/</xsl:param>
	<xsl:param name="callout.graphics.extension" select="'.gif'"/>
	<xsl:param name="html.stylesheet">fieldworks_db_port.css</xsl:param>
	<xsl:param name="section.autolabel" select="'1'"/>
</xsl:stylesheet>
