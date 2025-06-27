<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="rss/channel/title"/></title>
        <style>
          body { font-family: 'Segoe UI', sans-serif; background: #fffbe6; color: #333; margin: 2rem; }
          h1 { color: #703c1b; }
          .item { margin-bottom: 1.5rem; padding-bottom: 1rem; border-bottom: 1px solid #ccc; }
          .pubDate { font-size: 0.9em; color: #666; }
          a { color: #c25e00; text-decoration: none; }
          a:hover { text-decoration: underline; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="rss/channel/title"/></h1>
        <p><xsl:value-of select="rss/channel/description"/></p>
        <xsl:for-each select="rss/channel/item">
          <div class="item">
            <h2><a href="{link}"><xsl:value-of select="title"/></a></h2>
            <div class="pubDate"><xsl:value-of select="pubDate"/></div>
            <p><xsl:value-of select="description"/></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
