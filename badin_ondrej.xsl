<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: https://github.com/badinOndrej/Browser_config -->
<!-- vypise vsechny aktivni pluginy v JSON formatu -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/Browser_config">
        [
        <xsl:for-each select="installed_plugins/plugin[active = 'true']">
            {
                "name": "<xsl:value-of select="name" />",
                "version": "<xsl:value-of select="version" />",
                "author": "<xsl:value-of select="author" />",
                "description": "<xsl:value-of select="description" />",
                "active": "<xsl:value-of select="active" />"
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
    </xsl:template>
</xsl:stylesheet>
