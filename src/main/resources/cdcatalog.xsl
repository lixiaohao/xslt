<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Table one</h2>
    <table>
    	<tr bgcolor="#9acd32">
	       <th>Title</th>
	       <th>Artist</th>
     	</tr>

     <xsl:for-each select="catalog/cd[artist='Bob Dylan']">		<!--?? for-each ??-->

		 <xsl:sort select="title"							 />  	<!--?title????-->

		 <xsl:if test="price &gt; 10">
			 <tr bgcolor="#9acd32" >
			   <th>
				<xsl:value-of select="title"></xsl:value-of> 		<!--??-->
			   </th>
			   <th>
				<xsl:value-of select="artist"></xsl:value-of>
			   </th>
			 </tr>
		 </xsl:if>
	 </xsl:for-each>
    </table>


	  <h2>Table two</h2>
	  <table border="1">
		  <tr bgcolor="#9acd32">
			  <th>Title</th>
			  <th>Artist</th>
		  </tr>
		  <xsl:for-each select="catalog/cd">
			  <tr>
				  <td><xsl:value-of select="title"/></td>
				  <xsl:choose>								<!--????-->
					  <xsl:when test="price &gt; 10">
						  <td bgcolor="#ff00ff">
							  <xsl:value-of select="artist"/></td>
					  </xsl:when>
					  <xsl:otherwise>
						  <td><xsl:value-of select="artist"/></td>
					  </xsl:otherwise>
				  </xsl:choose>
			  </tr>
		  </xsl:for-each>
	  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>