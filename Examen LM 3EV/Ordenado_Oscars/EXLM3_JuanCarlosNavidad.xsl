<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="pelis_oscars">
<html>
    <head>
        <title>Examen Juan Carlos Navidad</title>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" type="text/css" href="EXLM3_JuanCarlosNavidad.css"/>
    </head>
    <body>
        <header>
            <center>
                <img class="logo" src="../img/cabecera.png"/>
                <br/>
                <a class="web_oficial" target="_blank">
                    <xsl:attribute name="href">
                        <xsl:value-of select="web"/>
                    </xsl:attribute>
                    Web Oficial Oscar's
                </a>
                <form action="../EXLM1_JuanCarlosNavidad.xml">
                    <br/><br/>
                    <input class="boton" type="submit" value="Ordenar por año"/>
                </form>
            </center>
        </header>
        <br/>
        <hr/>
        <div class="oscars">
            <xsl:for-each select="pelicula">
                <xsl:sort data-type="number" order="descending" select="oscars"/>
                <div class="peliculas">
                    <a class="titulo">
                        <xsl:value-of select="position()"/>
                        -    
                        <xsl:value-of select="nombre"/>               
                    </a>
                    <br/><br/><br/>
                    <img class="portadas" src="../img/{imagen}"/>
                    <div class="descripcion">
                        <ul class="lista">
                            <li>
                                <b>Director: </b> <xsl:value-of select="director"/>
                            </li>
                            <xsl:if test="sexo = 'M'">
                                <li>
                                    <b>Actor: </b> <xsl:value-of select="actor"/>
                                </li>
                            </xsl:if>
                            <xsl:if test="sexo = 'F'">
                                <li>
                                    <b>Actriz: </b> <xsl:value-of select="actor"/>
                                </li>
                            </xsl:if>
                            <li>
                                <b>Productora: </b> <xsl:value-of select="productora"/>
                            </li>
                            <li>
                                <b>Año: </b><xsl:value-of select="año"/>
                            </li>
                            <li>
                                <b>Metraje: </b><xsl:value-of select="duracion"/>
                            </li>
                            <li>
                                <a class="enlace_pelicula" target="_blank">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="enlace"/>
                                    </xsl:attribute>
                                    Enlace
                                </a>
                            </li>
                            <xsl:if test="oscars = '1'">
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                            </xsl:if>
                            <xsl:if test="oscars = '2'">
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                            </xsl:if>
                            <xsl:if test="oscars = '3'">
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                            </xsl:if>
                            <xsl:if test="oscars = '4'">
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                            </xsl:if>
                            <xsl:if test="oscars = '5'">
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                                    <img class="premio_oscar" src="../img/logo_oscars.png"/>
                            </xsl:if>
                        </ul>
                    </div>
                </div>
            </xsl:for-each>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>