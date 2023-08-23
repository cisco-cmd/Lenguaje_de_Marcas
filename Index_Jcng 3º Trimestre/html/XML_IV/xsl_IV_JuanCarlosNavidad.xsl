<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="series">
<html>
    <head>
    <title>Series Juan Carlos Navidad</title>
    <link rel="stylesheet" type="text/css" href="xsl_IV_JuanCarlosNavidad.css"/>
    </head>
    <body>
        <header class="titulo"><img class="cabecera" src="img/streaming.png"/></header>
            <center>
            <a class="enlace">
                <xsl:attribute name="href">
                    <xsl:value-of select="web/@ruta"/>
                </xsl:attribute>
                <xsl:attribute name="target">
                    blank_
                </xsl:attribute>
                <xsl:value-of select="web"/>
            </a>
            </center>
            
        <br/>
        <hr class="hr1"/>
            <div class="opciones">
                <xsl:for-each select="serie">
                <xsl:sort select="valoracion" data-type="number" order="descending"/>
                <div class="opcion"><a class="tit_serie"><xsl:value-of select="titulo"/></a><br/><br/><img class="portadas" src="img/{imagen}"/> 
                <div class="desc">
                    <ul> 
                        <li><b>Actor: </b><xsl:value-of select="actor1"/></li>
                        <li><b>Actor: </b><xsl:value-of select="actor2"/></li>
                        <li><b>Temporadas: </b><xsl:value-of select="temporadas"/></li>
                        <li><b>Plataforma: </b><xsl:value-of select="plataforma"/></li>
                        <li><b>Valoración: </b><xsl:value-of select="valoracion"/></li>
                        <li><b>
                        <a class="enlace2">
                            <xsl:attribute name="href">
                                <xsl:value-of select="web/@enlace"/>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                blank_
                            </xsl:attribute>
                            <xsl:value-of select="web"/>
                        </a>
                        </b>
                        </li>
                    </ul>
                </div>
                </div>
                </xsl:for-each>
            </div>

    </body>
</html>
</xsl:template>
</xsl:stylesheet>