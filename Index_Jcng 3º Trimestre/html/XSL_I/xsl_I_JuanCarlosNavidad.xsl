<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>

    <head>
    <title>Obras Juan Carlos Navidad</title>
    <link rel="stylesheet" type="text/css" href="xsl_I_JuanCarlosNavidad.css"/>
    </head>
    <body>
        <header class="titulo">CUADROS FAMOSOS</header>
        <hr class="hr1"/>
            <div class="opciones">
                <xsl:for-each select="obras/cuadro">
                <div class="opcion"><a class="nombre_autor"><xsl:value-of select="titulo"/></a><br/><br/><img class="{clase}" src="img/{imagen}"/> 
                <div class="desc">
                    <ul> 
                        <li><b>Autor: </b><xsl:value-of select="autor"/></li>
                        <li><b>Año: </b><xsl:value-of select="año"/></li>
                        <li><b>Estilo: </b><xsl:value-of select="estilo"/></li>
                    </ul>
                </div>
                </div>
                </xsl:for-each>
            </div>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>