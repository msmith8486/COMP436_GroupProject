<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
 <h2>Music Albums</h2>
 <table>
	<tr>
		<th>Album</th>
		<th>Artist</th>
	</tr>
	<tr>
		<td><xsl:value-of select="catalouge/album/title"/></td>
		<td><xsl:value-of select="catalouge/album/artist"/></td>
	</tr>
 </table>
 </body>
 </html>

</xsl:template>
 
</xsl:stylesheet>
 