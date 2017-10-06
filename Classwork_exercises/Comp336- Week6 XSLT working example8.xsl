<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
 <h2>Music Albums</h2>
 <xsl:apply-templates/>
 </body>
 </html>
 </xsl:template>
 
 <xsl:template match="album">
	<p>
	<xsl:apply-templates select="title"/>
	<xsl:apply-templates select="artist"/>
	<xsl:apply-templates select="location"/>
	</p>
</xsl:template>

<xsl:template match="title">
	<!--Title: <span class="title"><xsl:value-of select="."/></span>-->
	
	<xsl:choose>
        <xsl:when test="../location = 'America'">
          <span style="color:#ff00ff">
          <xsl:value-of select="."/>
          </span>
        </xsl:when>
        <xsl:otherwise>
          <span>Outside the US: <xsl:value-of select="."/></span>
        </xsl:otherwise>
      </xsl:choose>
  
	
	<br />
</xsl:template>
				
<xsl:template match="artist">
	Artist: <span class="artist"><xsl:value-of select="."/></span>
	<br />
</xsl:template>
	 
</xsl:stylesheet>	
	
	<!--	
 <table>
	<tr>
		<th>Album</th>
		<th>Artist</th>
		<th>Year</th>
	</tr>
	<xsl:for-each select="catalogue/album">
	 <xsl:sort select="year"/>
		<tr>
			<td><xsl:value-of select="title"/></td>
			<xsl:choose>
			<xsl:when test="year &gt; 2015">
				<td class="post">After: <xsl:value-of select="artist"/></td>
			</xsl:when>
			<xsl:otherwise>
				<td class="pre">Before: <xsl:value-of select="artist"/></td>
			</xsl:otherwise>
			</xsl:choose>
			<td><xsl:value-of select="year"/></td>
		</tr>
	</xsl:for-each>
 </table>
	<note>Output sorted based on if year is greater than 2015 and sort based on year</note>
 </body>
 </html>
-->
