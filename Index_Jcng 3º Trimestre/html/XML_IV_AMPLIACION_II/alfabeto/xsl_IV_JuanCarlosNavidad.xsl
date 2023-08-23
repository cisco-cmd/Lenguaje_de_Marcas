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
            <br/><br/><br/>
             <form action="../xsl_IV_JuanCarlosNavidad.xml">
                <input type="submit" class="boton1" value="Ordenar por valoracion" />
            </form>
            </center>
        <br/>
        <hr class="hr1"/>
            <div class="opciones">
                <xsl:for-each select="serie">
                <xsl:sort id="sort" select="titulo" data-type="text" order="ascending"/>
                <div class="opcion"><a class="tit_serie"><xsl:value-of select="titulo"/></a><br/><br/><img class="portadas" src="img/{imagen}"/> 
                <div class="desc">
                    <ul> 
                    <xsl:choose>
                            <xsl:when test="plataforma='HBO'">
                                <img class="plataforma" src="img/logohbo.png"/>
                            </xsl:when>
                            <xsl:when test="plataforma='Netflix'">
                                <img class="plataforma" src="img/logonetflix.png"/>
                            </xsl:when>
                            <xsl:when test="plataforma='SkyShowtime'">
                                <img class="plataforma" src="img/logosky.png"/>
                            </xsl:when>
                            <xsl:when test="plataforma='Disney +'">
                                <img class="plataforma" src="img/logodisney.png"/>
                            </xsl:when>
                             <xsl:when test="plataforma='Amazon Prime'">
                                <img class="plataforma" src="img/logoprime.png"/>
                            </xsl:when>
                        </xsl:choose>

                    <xsl:if test = "sexo1='Masculino'">
                        <li><b>Actor: </b><xsl:value-of select="actor1"/></li>
                    </xsl:if>
                    <xsl:if test = "sexo1='Femenino'">
                        <li><b>Actriz: </b><xsl:value-of select="actor1"/></li>
                    </xsl:if>

                    <xsl:if test = "sexo2='Masculino'">
                        <li><b>Actor: </b><xsl:value-of select="actor2"/></li>
                    </xsl:if>
                    <xsl:if test = "sexo2='Femenino'">
                        <li><b>Actriz: </b><xsl:value-of select="actor2"/></li>
                    </xsl:if>
                    
                        <li><b>Temporadas: </b><xsl:value-of select="temporadas"/></li>
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
                        <xsl:choose>
                            <xsl:when test="valoracion=5">
                                <li>
                                <div class="carita">
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                </div>
                                </li>
                            </xsl:when>
                            <xsl:when test="valoracion=4">
                                <li>
                                <div class="carita">
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                </div>
                                </li>
                            </xsl:when>
                            <xsl:when test="valoracion=3">
                                <li>
                                <div class="carita">
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                </div>
                                </li>
                            </xsl:when>
                            <xsl:when test="valoracion=2">
                                <li>
                                <div class="carita">
                                <img src="img/carita.png"/>
                                <img src="img/carita.png"/>
                                </div>
                                </li>
                            </xsl:when>
                            <xsl:when test="valoracion=1">
                                <li>
                                <div class="carita">
                                <img src="img/carita.png"/>
                                </div>
                                </li>
                            </xsl:when>
                        </xsl:choose>

                    </ul>
                </div>
                </div>
                </xsl:for-each>
            </div>

    </body>
</html>
</xsl:template>
</xsl:stylesheet>