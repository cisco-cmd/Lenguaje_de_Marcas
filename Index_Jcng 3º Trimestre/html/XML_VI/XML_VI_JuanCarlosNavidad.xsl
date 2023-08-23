<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="prediccion">
<html>
    <head>
    <title>Aemet Juan Carlos Navidad</title>
    <link rel="stylesheet" type="text/css" href="XML_VI_JuanCarlosNavidad.css"/>
    </head>
    <body>

    <header class="cabecera">
    
    <img class="logo" src="img/Logotipo_de_la_AEMET.png"/>
    
    <a class="nombre" >Juan Carlos Navidad García</a>
    
    <a class="enlace">
        <xsl:attribute name="href">
            <xsl:value-of select="origen/enlace"/>
        </xsl:attribute>
        El tiempo en Lloret de Mar
    </a>

    </header>

    <div class="opciones">
        <xsl:for-each select="dia">
        <div class="opcion">
        <a class="fecha"><xsl:value-of select="@fecha"/></a>
        <hr/>
        <xsl:choose>
            <xsl:when test="estado_cielo/@descripcion='Nubes altas'">
                <img class="tiempo_img" src="img/altas.png"/>
                <hr/>
            </xsl:when>
            <xsl:when test="estado_cielo/@descripcion='Despejado'">
                <img class="tiempo_img" src="img/sol.png"/>
                <hr/>
            </xsl:when>
            <xsl:when test="estado_cielo/@descripcion='Nuboso con tormenta'">
                <img class="tiempo_img" src="img/tormenta.png"/>
                <hr/>
            </xsl:when>
            <xsl:when test="estado_cielo/@descripcion='Muy nuboso'">
                <img class="tiempo_img" src="img/nuboso.png"/>
                <hr/>
            </xsl:when>
            <xsl:when test="estado_cielo/@descripcion='Muy nuboso con lluvia'">
                <img class="tiempo_img" src="img/lluvia.png"/>
                <hr/>
            </xsl:when>
            <xsl:when test="estado_cielo/@descripcion='Poco nuboso'">
                <img class="tiempo_img" src="img/poco.png"/>
                <hr/>
            </xsl:when>
            <xsl:when test="estado_cielo/@descripcion='Nuboso con lluvia'">
                <img class="tiempo_img" src="img/sol_lluvia.png"/>
                <hr/>
            </xsl:when>
        </xsl:choose> 
        <div class="desc">
            <p><b>Cielo: </b> <xsl:value-of select="estado_cielo/@descripcion"/></p>
            <p><b>Tª Min/Tª Máx: </b> <xsl:value-of select="temperatura/minima"/>ºC / <xsl:value-of select="temperatura/maxima"/>ºC</p>
            <p><b>Prob Precipitación: </b> <xsl:value-of select="prob_precipitacion"/>%</p>
            <p><b>Hum. Min / Hum. Máx: </b> <xsl:value-of select="humedad_relativa/minima"/>% / <xsl:value-of select="humedad_relativa/maxima"/>%</p>
            <p><b>Viento:</b></p>
                <ul>
                    <li>Dirección: <xsl:value-of select="viento/direccion"/></li>
                    <li>Velocidad: <xsl:value-of select="viento/velocidad"/> km/h</li>
                </ul>
        </div>
        </div>
        </xsl:for-each>
    </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>