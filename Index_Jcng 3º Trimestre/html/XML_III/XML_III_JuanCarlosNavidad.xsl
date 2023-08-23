<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="pizzeria">
<html>
    <head>
    <title>Pizzeria Juan Carlos Navidad</title>
    <link rel="stylesheet" type="text/css" href="XML_III_JuanCarlosNavidad.css"/>
    </head>
    <body>
        <header class="titulo"><h1>Pizzeria Juan Carlos Navidad</h1></header>
        <br/>
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
            <div class="opciones">
                <xsl:for-each select="productos">
                <xsl:sort select="pvp" data-type="number" order="descending"/>
                <div class="opcion"><a class="nombre_prod"><xsl:value-of select="titulo"/></a><br/><br/>       
                    <img class="{clase}" src="Imagenes/{imagen}"/>             
                <div class="desc">
                    <ul> 
                        <li><b>Codigo: </b><xsl:value-of select="codigo"/></li>
                        <li class="rojo"><b>PVP: </b><xsl:value-of select="pvp"/> €</li>
                        <xsl:if test = "tipo='H'">
                            <li class="verde"><b>Hamburguesa</b></li>
                        </xsl:if>
                        <xsl:if test = "tipo='P'">
                            <li class="verde"><b>Pizza</b></li>
                        </xsl:if>
                        <xsl:if test = "tipo='F'">
                            <li class="verde"><b>Frito</b></li>
                        </xsl:if>
                        <xsl:if test = "tipo='E'">
                            <li class="verde"><b>Ensalada</b></li>
                        </xsl:if>
                        <xsl:if test = "tipo='B'">
                            <li class="verde"><b>Bebida</b></li>
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