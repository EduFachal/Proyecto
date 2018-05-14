<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet"/>

       <style> 
            body{font-family:  helvetica; text-align: center; background-color:silver;}
            table{margin: 0 auto; } 
            td{ padding: 15px; background-color:rgba(0,0,0, 0.3); width: 105px; } 
            td img{width:170px; height:60px;}
            th{padding: 10px; background-color:#00004d; color: white;} 


        </style>
    </head>
    <body>
<header>
			
        </header>

        <table border="1">
        <tr bgcolor="skyblue">
             <th>Foto</th>
             <th>Nombre</th>
             <th>Pilotos</th>
             <th>Grandes Premios</th>
             <th>Victorias</th>
             <th>Podios</th>
             <th>Campeonatos Constructores</th>
             <th>Nacionalidad</th>           
        </tr>

        <xsl:for-each select="escuderias/escuderia">
         <tr>
            <td>
                <xsl:element name="img">
                <xsl:attribute name="src">
                <xsl:value-of select="img/@ruta"/>
                </xsl:attribute>
                <xsl:attribute name="height"></xsl:attribute>
                </xsl:element>
            </td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="pilotos"/></td>
            <td><xsl:value-of select="grandes_premios"/></td>
            <td><xsl:value-of select="victorias"/></td>     
            <td><xsl:value-of select="podios"/></td>
            <td><xsl:value-of select="campeonatos"/></td>
            <td><xsl:value-of select="nacionalidad"/></td>
        </tr>
        </xsl:for-each>

        </table>
        </body>
        </html>

    </xsl:template>
    </xsl:stylesheet>
