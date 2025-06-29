<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <head>
      <title><xsl:value-of select="rss/channel/title"/></title>
      <style>
        body {
          font-family: 'Segoe UI', sans-serif;
          background-color: #fdfdfd;
          color: #333;
          padding: 2rem;
          max-width: 800px;
          margin: auto;
        }
        h1 {
          color: #444;
        }
        ul {
          list-style-type: none;
          padding: 0;
        }
        li {
          border-bottom: 1px solid #ddd;
          padding: 1rem 0;
        }
        a {
          color: #0066cc;
          text-decoration: none;
          font-weight: bold;
        }
        a:hover {
          text-decoration: underline;
        }
        .pubdate {
          color: #888;
          font-size: 0.9em;
        }
      </style>
    </head>
    <body>
      <h1><xsl:value-of select="rss/channel/title"/></h1>
      <p><xsl:value-of select="rss/channel/description"/></p>
      <ul>
        <xsl:for-each select="rss/channel/item">
          <li>
            <a href="{link}"><xsl:value-of select="title"/></a><br/>
            <div class="pubdate"><xsl:value-of select="pubDate"/></div>
            <div><xsl:value-of select="description"/></div>
          </li>
        </xsl:for-each>
      </ul>
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
