<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="rss/channel/title"/> – Feed</title>
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Quicksand&display=swap" rel="stylesheet" />
        <style type="text/css">
          body {
            background-color: #fdf6f1;
            font-family: 'Quicksand', sans-serif;
            color: #3c2a24;
            margin: 2em;
          }
          h1 {
            font-family: 'Playfair Display', serif;
            color: #9e4f63;
            border-bottom: 2px solid #d9b9c3;
            padding-bottom: 0.3em;
            display: flex;
            align-items: center;
          }
          h1 img {
            height: 40px;
            margin-right: 10px;
          }
          h2 {
            color: #8e3e4e;
            font-size: 1.2em;
          }
          .item {
            margin: 1em 0;
            padding: 1em;
            background-color: #fffaf9;
            border-left: 4px solid #d88c9a;
            box-shadow: 0 2px 6px rgba(0,0,0,0.03);
          }
          .desc {
            font-size: 0.95em;
            margin: 0.3em 0;
          }
          .date {
            font-size: 0.8em;
            color: #888;
          }
          .tagline {
            font-style: italic;
            font-size: 1em;
            color: #5f444a;
            margin-bottom: 1.5em;
          }
        </style>
      </head>
      <body>
        <h1>
          <img src="https://rasawarnajiwa.github.io/assets/logo.png" alt="logo" />
          <xsl:value-of select="rss/channel/title"/> – Feed
        </h1>
        <div class="tagline">“Rasa adalah bahasa pertama jiwa. Sebelum kata, sebelum warna.”</div>
        <xsl:for-each select="rss/channel/item">
          <div class="item">
            <h2>🌸 <a href="{link}"><xsl:value-of select="title"/></a></h2>
            <div class="desc"><xsl:value-of select="description"/></div>
            <div class="date"><xsl:value-of select="pubDate"/></div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
