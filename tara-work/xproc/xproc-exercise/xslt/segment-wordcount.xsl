<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <wordcounts>
            <xsl:for-each select="//section">
                <xsl:variable name="text" select="normalize-space(transcript)"/>
                <xsl:variable name="tokens" select="tokenize($text, '\s+')"/>
                <section num="{@num}" words="{count($tokens)}">
                    <xsl:value-of select="$text"/>
                </section>
            </xsl:for-each>
        </wordcounts>
    </xsl:template>
</xsl:stylesheet>
