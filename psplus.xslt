<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h3 align="center">PsPlus</h3>
    <table border="1" align="center">
      <tr bgcolor="#7fffd4">
        <th>Name</th>
        <th>Price</th>
		<th>Version</th>
        <th>Platform</th>
		<th>Score</th>
		<th>FreeOrNotFree</th>
		<th>Song</th>
      </tr>
      <xsl:for-each select="root/Game">
        <tr>
			<td><xsl:value-of select="Name"/></td>
            <td><xsl:value-of select="Price"/></td>
			<td><xsl:value-of select="Version"/></td>
            <td><xsl:value-of select="Platform"/></td>
			<td><xsl:value-of select="Score"/></td>
			<td>
				<xsl:value-of select="Free/Free_v.1"/>
				<hr/>
				<xsl:value-of select="Free/Free_v.2"/>
			</td>
			<td>
				<ul style="list-style: none;">
				<xsl:for-each select="Song/Line">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
				</ul>
			</td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>