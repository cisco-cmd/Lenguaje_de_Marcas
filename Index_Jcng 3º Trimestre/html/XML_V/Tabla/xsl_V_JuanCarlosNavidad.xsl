<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="series">
<html>
    <head>
    <title>Series Juan Carlos Navidad</title>
    <link rel="stylesheet" type="text/css" href="xsl_V_JuanCarlosNavidad.css"/>
    </head>
    <script>
    function mostrar() {

        document.getElementById("ac").style.visibility = "visible";
        document.getElementById("ad").style.visibility = "visible";
        document.getElementById("framediv").style.visibility = "visible";
        window.scrollTo({ top: 0, behavior: "smooth"});

    }

    function ocultar() {

        document.getElementById("ac").style.visibility = "hidden";
        document.getElementById("ad").style.visibility = "hidden";
        document.getElementById("framediv").style.visibility = "hidden";
    }
    </script>
    <body>
    <a href="https://www.bbc.co.uk/programmes/b006q2x0" target="blank_" ><header class="titulo"><img class="cabecera" src="../img/logo.png"/></header></a>
        
            <br/>
            <center>
            <div class="sinopsis">
            <p>
                Doctor Who es un programa de televisión que trata de las aventuras de un misterioso hombre extraterrestre conocido sólo como el Doctor. 
                El Doctor viaja a través del espacio y el tiempo en una nave llamada TARDIS(la cual se ve de fondo), 
                un acrónimo de "Time And Relative Dimension In Space (Tiempo y relativa dimensión en el espacio)". 
                Suele ir acompañado de uno o varios compañeros, con los cuáles comparte aventuras con ambientes terroríficos, historicos, etc.
            </p>
            </div>
            <br/><br/>
            <form action="../DIV/xsl_V_JuanCarlosNavidad.xml">
                <input type="submit" class="btn" value="Formato DIV"/>
            </form>
            <div id="framediv" class="framediv"><iframe id="ac" width="90%" height="90%" name="paginas" class="iframe1"></iframe><div class="cerrardiv" onclick="ocultar()"><a id="ad" class="cerrar" onclick="ocultar()"><b>X</b></a></div></div>
            </center>
        <br/>
        <hr class="hr1"/>
            <div class="opciones">
            <center>
            <table>
            <tr>
                <th>
                <xsl:value-of select="cabecera/imagen"/>
                </th>
                <th>
                <xsl:value-of select="cabecera/titulo"/>  
                </th>
                <th>
                <xsl:value-of select="cabecera/actor"/>
                </th>
                <th>
                <xsl:value-of select="cabecera/descripcion"/>
                </th>
                <th>
                <xsl:value-of select="cabecera/web"/>
                </th>
            </tr>
                <xsl:for-each select="serie">
                
                <tr>
                <td class="image">
                    <img class="portadas" src="../img/{imagen}"/>
                </td>
                <td>
                    <xsl:value-of select="titulo"/>
                </td>
                <td>
                    <xsl:value-of select="actor"/>
                </td>
                <td>
                    <xsl:value-of select="descripcion"/>
                </td>
                <td>
                <a class="enlace2" target="paginas" onclick="mostrar()">
                    <xsl:attribute name="href"> 
                        <xsl:value-of select="web2/@enlace"/>
                    </xsl:attribute>
                    <xsl:value-of select="web2"/>
                </a>
                </td>
                </tr>
                
                </xsl:for-each>
            </table>
            </center>
            </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>