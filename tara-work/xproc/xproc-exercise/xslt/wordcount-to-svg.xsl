<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:svg="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <svg:svg width="1200" height="450" xmlns:svg="http://www.w3.org/2000/svg">
            <svg:line x1="0" y1="350" x2="1200" y2="350" stroke="black" stroke-width="2"/>
            <xsl:variable name="max" select="max(//section/@words ! number(.))"/>
            <xsl:for-each select="//section">
                <xsl:variable name="i" select="position()"/>
                <xsl:variable name="h" select="(number(@words) div $max) * 300"/>
                <xsl:variable name="x" select="($i - 1) * 40"/>
                <svg:rect x="{$x}" y="{350 - $h}" width="30" height="{$h}" fill="steelblue"/>
                <svg:text x="{$x + 15}" y="{350 - $h - 5}" font-size="10" text-anchor="middle">
                    <xsl:value-of select="@words"/>
                </svg:text>
                <svg:text x="{$x + 15}" y="365" font-size="10" text-anchor="middle">
                    <xsl:value-of select="@num"/>
                </svg:text>
            </xsl:for-each>
        </svg:svg>
    </xsl:template>
</xsl:stylesheet>
