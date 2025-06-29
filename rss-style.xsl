<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="rss/channel/title"/> – Feed</title>
        <style type="text/css">
          @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Source+Sans+Pro&display=swap');

          body {
            background-color: #fcf5ee;
            font-family: 'Source Sans Pro', sans-serif;
            color: #333;
            margin: 2em auto;
            max-width: 700px;
            padding: 1em;
          }

          h1 {
            font-family: 'Playfair Display', serif;
            font-size: 1.8em;
            color: #953c6f;
            margin-bottom: 0.2em;
          }

          .logo {
            width: 50px;
            vertical-align: middle;
            margin-right: 10px;
          }

          .subtitle {
            font-style: italic;
            color: #777;
            margin-bottom: 1.5em;
            font-size: 0.95em;
          }

          .item {
            background: #fff6f6;
            border-left: 4px solid #953c6f;
            padding: 1em;
            margin-bottom: 1em;
            border-radius: 6px;
          }

          .item-title {
            font-weight: bold;
            color: #802a50;
            text-decoration: none;
          }

          .item-desc {
            margin-top: 0.5em;
            font-size: 0.95em;
          }

          .pubdate {
            font-size: 0.85em;
            color: #888;
            margin-top: 0.6em;
          }
        </style>
      </head>

      <body>
        <div>
          <img class="logo" src="https://rasawarnajiwa.github.io/assets/logo.png" alt="Logo"/>
          <h1><xsl:value-of select="rss/channel/title"/> – Feed</h1>
        </div>
        <div class="subtitle">“Rasa adalah bahasa pertama jiwa. Sebelum kata, sebelum warna.”</div>

        <xsl:for-each select="rss/channel/item">
          <div class="item">
            <div>
              <span>📖</span>
              <a class="item-title">
                <xsl:attribute name="href">
                  <xsl:value-of select="link"/>
                </xsl:attribute>
                <xsl:value-of select="title"/>
              </a>
            </div>
            <div class="item-desc">
              <xsl:value-of select="description"/>
            </div>
            <div class="pubdate">
              <xsl:value-of select="pubDate"/>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
