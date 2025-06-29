<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="rss/channel/title"/> – Feed</title>
        <style type="text/css">
          body {
            background-color: #fdf8f2;
            font-family: 'Georgia', serif;
            color: #333;
            padding: 40px;
            max-width: 800px;
            margin: auto;
          }
          h1 {
            color: #a1588d;
            font-size: 2em;
            border-bottom: 2px solid #e0c9d0;
            padding-bottom: 0.2em;
          }
          .intro {
            font-style: italic;
            color: #7d6a63;
            margin-bottom: 20px;
            font-size: 1.1em;
          }
          .item {
            margin: 25px 0;
            padding: 15px;
            border-left: 5px solid #f2c9d4;
            background-color: #fffaf7;
            box-shadow: 0px 2px 6px rgba(0,0,0,0.05);
          }
          .item-title {
            font-size: 1.3em;
            margin-bottom: 5px;
            color: #5e2b41;
          }
          .item-desc {
            margin-bottom: 5px;
            font-size: 1em;
          }
          .pub-date {
            font-size: 0.9em;
            color: #888;
          }
          a {
            color: #963c69;
            text-decoration: none;
          }
          a:hover {
            text-decoration: underline;
          }
          @media (prefers-color-scheme: dark) {
            body {
              background-color: #1c1b1a;
              color: #e4e4e4;
            }
            .item {
              background-color: #2d2c2b;
              border-left: 5px solid #944e73;
            }
            a {
              color: #e6a8cf;
            }
          }
        </style>
      </head>
      <body>
        <h1>📖 <xsl:value-of select="rss/channel/title"/> – Feed</h1>
        <div class="intro">“Rasa adalah bahasa pertama jiwa. Sebelum kata, sebelum warna.”</div>
        <xsl:for-each select="rss/channel/item">
          <div class="item">
            <div class="item-title">✿ <a href="{link}"><xsl:value-of select="title"/></a></div>
            <div class="item-desc">
              <xsl:value-of select="description"/>
              <xsl:if test="quote">
                <blockquote style="margin: 10px 0; font-style: italic; color: #b16480;">“<xsl:value-of select="quote"/>”</blockquote>
              </xsl:if>
            </div>
            <div class="pub-date">
              <xsl:value-of select="pubDate"/>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
