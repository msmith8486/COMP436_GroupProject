<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  <html>
    <body>
      <h3>Loyola</h3>
	  
      <xsl:apply-templates select="Loyola/campus">
        <xsl:sort select="name" order="ascending" data-type="string" />
      </xsl:apply-templates>
	 
	</body>
  </html>
</xsl:template>

<xsl:template match="campus">
 
  <xsl:apply-templates select="name[@language='english']"/>
  
</xsl:template>

<xsl:template match="name[@language='english']">
  <xsl:value-of select="."/>
</xsl:template>


<xsl:template match="building">
 
  <xsl:apply-templates select="year" order="ascending" data-type="number"/>

 </xsl:template>

<xsl:template match="year">
  <xsl:value-of select="."/>
</xsl:template>

</xsl:stylesheet>