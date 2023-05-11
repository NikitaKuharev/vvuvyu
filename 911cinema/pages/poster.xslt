<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                exclude-result-prefixes="msxsl">

    <xsl:template match="data">

        <html lang="en">

            <head>
                <link rel="preconnect" href="https://fonts.googleapis.com" />
                <link rel="preconnect" href="https://fonts.gstatic.com" />
                <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900" rel="stylesheet" />

                <meta charset="UTF-8" />
                <meta name="viewport"
                      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
                <title>Document</title>

                <link rel="stylesheet" href="../style/all.css" />
                <link rel="stylesheet" href="../style/navbar.css" />
                <link rel="stylesheet" href="../style/poster.css" />
            </head>

            <body>

                <header>
                    <div class="logo">
                        <a href="../index.html"><img  src="../img/logoWhite.svg" alt="" /></a>
                    </div>
                    <nav>
                        <div class="opt"><a href="premiere.html">Премьеры</a></div>
                        <div class="opt"><a href="poster.xml">Афиша</a></div>
                        <div class="opt"><a href="aboutUs.html">О нас</a></div>
                    </nav>
                </header>

                <main>
                    <section class="info">
                        <xsl:apply-templates select="posters" />
                    </section>
                </main>

                <footer>
                    <p>Телефон: <a href="tel:номер телефона">911</a></p>
                    <p>Email: <a href="mailto:адрес электронной почты">alachagbar@gmail.com</a></p>
                    <p>Адрес: World Trade Center , New York City, U.S</p>
                    <p>Рабочие часы: Понедельник-Воскресенье: 10:00-22:00</p>
                </footer>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="posters">
        <xsl:apply-templates select="poster" />
    </xsl:template>

    <xsl:template match="poster">
        <div class="poster" id="poster">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="href"/>
                </xsl:attribute>
            </img>

            <div class="label">
                <div class="name">
                    <xsl:value-of select="name"/>
                </div>
                <div class="info">
                    <xsl:value-of select="info"/>
                </div>
                <div class="genre">
                    <xsl:value-of select="class"/>
                </div>
                <div class="year">
                    <xsl:value-of select="year"/> г.
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
