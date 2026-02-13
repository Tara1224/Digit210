<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <!--
This XSLT takes mulan XML output
1. Wraps stage directions (text in [ ... ]) in <stage> elements.
2. Tags speaker names at the start of speeches in <spk> elements.
3. Converts empty <sp> elements into <note> elements.
-->
    
    <xsl:mode on-no-match="shallow-copy"/>
    
  
    <xsl:template match="text()">
      
        <xsl:analyze-string select="." regex="\[(.+?)\]" flags="s">
            <xsl:matching-substring>
                <stage><xsl:value-of select="regex-group(1)"/></stage>
            </xsl:matching-substring>
            
            <xsl:non-matching-substring>
            
                <xsl:analyze-string select="." regex="(^[A-Z][A-Z\s]+):" flags="m">
                    <xsl:matching-substring>
                        <spk><xsl:value-of select="regex-group(1)"/></spk>
                    </xsl:matching-substring>
                    <xsl:non-matching-substring>
                        <xsl:apply-templates select="."/>
                    </xsl:non-matching-substring>
                </xsl:analyze-string>
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
  
    <xsl:template match="sp[not(node()) or not(normalize-space())]">
        <note>
            <xsl:value-of select="'Empty speech placeholder'"/>
        </note>
    </xsl:template>
    
</xsl:stylesheet>
