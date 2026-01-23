<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" include-content-type="no"
        indent="yes"/>

    <xsl:template match="/skyrim">
        <html>
            <head>
                <title>Skyrim</title>
                <link rel="stylesheet" href="skyrim.css"/>
            </head>
            <body>
                <h1>Skyrim Reading View</h1>
                <xsl:apply-templates select="body"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="body">
        <div class="body-content">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="paragraph">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="QuestEvent | QuestItem | character | epithet | faction | location">
        <span class="{name()}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>