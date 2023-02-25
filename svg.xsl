<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="root">
        <html>
            <head></head>
            <body>
                <div>
                    <xsl:apply-templates />
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="графика">
        <svg width="{@ширина}" height="{@высота}" xmlns="http://www.w3.org/2000/svg">
            <xsl:apply-templates />
        </svg>
    </xsl:template>

    <xsl:template match="эллипс">
        <ellipse fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}"
            cy="{@cy}"
            rx="{@rx}" ry="{@ry}" />
    </xsl:template>
</xsl:stylesheet>