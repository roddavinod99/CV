<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9"
    xmlns:xhtml="http://www.w3.org/1999/xhtml">

<xsl:output method="html" indent="yes" encoding="UTF-8"/>

<xsl:template match="/">
    <html lang="en">
    <head>
        <title>Sitemap - Vinod Kumar Rodda Portfolio</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <style>
            * { box-sizing: border-box; margin: 0; padding: 0; }
            body {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, sans-serif;
                line-height: 1.6;
                color: #1a1a2e;
                background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                min-height: 100vh;
                padding: 2rem;
            }
            .container {
                max-width: 1000px;
                margin: 0 auto;
                background: white;
                border-radius: 16px;
                box-shadow: 0 10px 40px rgba(0,0,0,0.1);
                overflow: hidden;
            }
            header {
                background: linear-gradient(135deg, #27374D 0%, #3a4d6b 100%);
                color: white;
                padding: 2.5rem;
                text-align: center;
            }
            header h1 { font-size: 1.8rem; font-weight: 700; margin-bottom: 0.5rem; }
            header p { opacity: 0.9; font-size: 1rem; }
            .meta {
                display: flex;
                justify-content: center;
                gap: 2rem;
                margin-top: 1.5rem;
                font-size: 0.85rem;
                opacity: 0.8;
                flex-wrap: wrap;
            }
            .meta span { display: flex; align-items: center; gap: 0.4rem; }
            table { width: 100%; border-collapse: collapse; }
            thead { background: #f8f9fa; }
            th {
                text-align: left;
                padding: 1rem 1.5rem;
                font-weight: 600;
                color: #27374D;
                border-bottom: 2px solid #e0e6ed;
                font-size: 0.85rem;
                text-transform: uppercase;
                letter-spacing: 0.05em;
            }
            td { padding: 1rem 1.5rem; border-bottom: 1px solid #eef1f5; font-size: 0.9rem; }
            tr:hover td { background: #fafbfc; }
            tr:last-child td { border-bottom: none; }
            .url-cell { font-family: 'SF Mono', 'Fira Code', monospace; font-size: 0.85rem; }
            .url-cell a { color: #27374D; text-decoration: none; word-break: break-all; }
            .url-cell a:hover { color: #3a4d6b; text-decoration: underline; }
            .priority {
                display: inline-block;
                padding: 0.25rem 0.6rem;
                border-radius: 999px;
                font-size: 0.75rem;
                font-weight: 700;
            }
            .priority-high { background: #e8f5e9; color: #2e7d32; }
            .priority-med { background: #fff3e0; color: #ef6c00; }
            .priority-low { background: #f3e5f5; color: #7b1fa2; }
            .changefreq {
                display: inline-block;
                padding: 0.25rem 0.6rem;
                border-radius: 999px;
                font-size: 0.75rem;
                font-weight: 600;
                background: #e3f2fd;
                color: #1565c0;
            }
            .hreflang {
                display: inline-flex;
                gap: 0.3rem;
                flex-wrap: wrap;
                margin-top: 0.4rem;
            }
            .hreflang-tag {
                background: #f0f4f8;
                color: #4a5568;
                padding: 0.15rem 0.5rem;
                border-radius: 4px;
                font-size: 0.7rem;
                font-family: monospace;
                font-weight: 600;
            }
            .hreflang-tag.xdefault { background: #e8f5e9; color: #2e7d32; }
            footer {
                padding: 1.5rem;
                text-align: center;
                color: #718096;
                font-size: 0.85rem;
                background: #fafbfc;
                border-top: 1px solid #eef1f5;
            }
            footer a { color: #27374D; text-decoration: none; }
            footer a:hover { text-decoration: underline; }
            .badge {
                display: inline-block;
                background: #27374D;
                color: white;
                padding: 0.3rem 0.8rem;
                border-radius: 999px;
                font-size: 0.7rem;
                font-weight: 700;
                letter-spacing: 0.05em;
            }
            @media (max-width: 640px) {
                body { padding: 1rem; }
                th, td { padding: 0.75rem 1rem; font-size: 0.8rem; }
                header { padding: 1.5rem; }
                header h1 { font-size: 1.4rem; }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <header>
                <h1>🗺️ XML Sitemap</h1>
                <p>Vinod Kumar Rodda — Quality Analyst Portfolio</p>
                <div class="meta">
                    <span>📄 <strong><xsl:value-of select="count(sm:urlset/sm:url)"/></strong> URLs</span>
                    <span>🌐 <strong>3</strong> languages (en, en-IN, x-default)</span>
                    <span>📅 Last updated: <strong>2026-11-12</strong></span>
                </div>
            </header>

            <table>
                <thead>
                    <tr>
                        <th style="width: 45%;">URL</th>
                        <th style="width: 15%;">Last Modified</th>
                        <th style="width: 15%;">Change Frequency</th>
                        <th style="width: 10%;">Priority</th>
                        <th style="width: 15%;">Alternate Languages</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="sm:urlset/sm:url">
                        <tr>
                            <td class="url-cell">
                                <a href="{sm:loc}" target="_blank"><xsl:value-of select="sm:loc"/></a>
                            </td>
                            <td><xsl:value-of select="sm:lastmod"/></td>
                            <td><span class="changefreq"><xsl:value-of select="sm:changefreq"/></span></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="sm:priority >= 0.8"><span class="priority priority-high"><xsl:value-of select="sm:priority"/></span></xsl:when>
                                    <xsl:when test="sm:priority >= 0.5"><span class="priority priority-med"><xsl:value-of select="sm:priority"/></span></xsl:when>
                                    <xsl:otherwise><span class="priority priority-low"><xsl:value-of select="sm:priority"/></span></xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td>
                                <div class="hreflang">
                                    <xsl:for-each select="xhtml:link">
                                        <span class="hreflang-tag">
                                            <xsl:if test="@hreflang = 'x-default'">x-default</xsl:if>
                                            <xsl:if test="@hreflang != 'x-default'"><xsl:value-of select="@hreflang"/></xsl:if>
                                        </span>
                                    </xsl:for-each>
                                </div>
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>

            <footer>
                <p>Generated for <a href="https://roddavinod99.github.io/CV/" target="_blank">roddavinod99.github.io/CV/</a> |
                <a href="https://www.sitemaps.org/" target="_blank">Sitemaps Protocol</a> |
                <a href="https://github.com/roddavinod99/CV" target="_blank">Source</a></p>
                <p style="margin-top: 0.5rem;">
                    <span class="badge">Valid XML</span>
                    <span class="badge" style="background: #3a4d6b; margin-left: 0.5rem;">Hreflang Ready</span>
                    <span class="badge" style="background: #526D82; margin-left: 0.5rem;">SEO Optimized</span>
                </p>
            </footer>
        </div>
    </body>
    </html>
</xsl:template>

</xsl:stylesheet>