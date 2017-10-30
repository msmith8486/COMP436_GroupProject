<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h3>Loyola</h3>
      <table>
        <xsl:apply-templates select="Loyola/campus">
          <xsl:sort select="name" order="ascending" data-type="string" />
        </xsl:apply-templates>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="campus">
  <tr>
    <xsl:apply-templates select="abbrev"/>
    <xsl:apply-templates select="building"/>
  </tr>
</xsl:template>

<xsl:template match="abbrev">
  <td>
    <xsl:value-of select="."/>
  </td>
</xsl:template>

<xsl:template match="building">
  <td>
	<xsl:value-of select="buildingName"/>
	<xsl:text> </xsl:text>
    <xsl:value-of select="year"/>
	<xsl:if test="position()=last()-1">
    <xsl:text> , and </xsl:text>
    
  </td>
</xsl:template>

</xsl:stylesheet>
