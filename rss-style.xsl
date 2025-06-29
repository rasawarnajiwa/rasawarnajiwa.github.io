<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rss="http://purl.org/rss/1.0/">

<xsl:template match="/">
  <html>
    <head>
      <title>Rasa Warna Jiwa – RSS Feed</title>
      <style>
        body { font-family: sans-serif; background: #fdfdfd; color: #333; padding: 2em; }
        h1 { color: #ad5f77; }
        .item { margin-bottom: 1.5em; }
        .item-title { font-size: 1.2em; font-weight: bold; }
        .item-description { margin-top: 0.2em; }
        .item-date { font-size: 0.85em; color: #999; }
      </style>
    </head>
    <body>
      <h1>📡 Rasa Warna Jiwa – Feed</h1>
      <xsl:for-each select="rss/channel/item">
        <div class="item">
          <div class="item-title">
            <a href="{link}">
              <xsl:value-of select="title"/>
            </a>
          </div>
          <div class="item-description">
            <xsl:value-of select="description"/>
          </div>
          <div class="item-date">
            <xsl:value-of select="pubDate"/>
          </div>
        </div>
      </xsl:for-each>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
