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
    <xsl:apply-templates select="building[@type='landmark']"/>
  </tr>
</xsl:template>

<xsl:template match="abbrev">
  <td>
    <xsl:value-of select="."/>
  </td>
</xsl:template>

<xsl:template match="building[@type='landmark']">
  <td>
	<xsl:value-of select="buildingName"/>
	<xsl:text> Its address is </xsl:text>
	<xsl:value-of select="address"/>
	<xsl:text> and it is build in </xsl:text>
    <xsl:value-of select="year"/>
  </td>
</xsl:template>

</xsl:stylesheet>