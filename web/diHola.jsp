<%-- 
    Document   : diHola
    Created on : 04-mar-2021, 9:46:32
    Author     : Ramartc
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="css/electrosa.css" rel="stylesheet" media="all" type="text/css">
<!DOCTYPE html>
<%
    String nomb = request.getParameter("Nombre");
    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm 'del' dd 'de' MMMM 'de' yyyy");
    String hora =  sdf.format(new Date());
%>
<!DOCTYPE html >
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" lang="es-ES">
    <title>Bienvenido a Electrosa</title>
    <meta name="description" content="Aplicación de prueba de Programación de aplicaciones Web; Grado en informática; Universidad de La Rioja." lang="es-ES">
    <meta name="keywords" content="electrodomesticos" lang="es-ES">
    <meta name="language" content="es-ES">
    <meta name="robots" content="index,follow">

    <link href="css/electrosa.css" rel="stylesheet" media="all" type="text/css">
  </head>

  <body >
    <div class="logo"><a href="index.html"><img src="img/LogoElectrosa200.png" border="0"></a></div>

    <div class="sombra">
      <div class="nucleo">
        <div id="lang">
          <a href="index.html">Español</a> &nbsp; | &nbsp; <a href="index.html">English</a>
        </div>
      </div>
    </div>

    <div class="barra_menus">	
      <div class="pestanias">
        <div class="grupoPestanias">
          <div class="pestaniaSel">Para usuarios</div>
          <div class="pestaniaNoSel"><a href="admin/index.html">Intranet</a></div>
        </div>
      </div>

      <div id="menu" >
        <ul>
          <li>
            <a href="index.html">Sobre electrosa<br/><img src="img/Home4.png"/></a>
          </li>
          <li>
            <a href="index.html">Dónde estamos<br/><img src="img/map.png"/></a>
          </li>
          <li>
            <a href="index.html">Hojear catálogo<br/><img src="img/catalog.png"/></a>
          </li>
          <li>
            <a href="index.html">Usuario registrado<br/><img src="img/registrado.png"/></a>
          </li>
        </ul>
        <div style="clear: left;"></div>
      </div>
    </div> 

    <div class="sombra">
      <div class="nucleo">
        <div id="migas">
          <a href="index.html" title="Inicio" >Inicio</a><!-- &nbsp; | &nbsp; 
          <a href="..." title="Otra cosa">Otra cosa</a>   -->	
        </div>

        <div class="contenido">

          <h1>Hello <%= nomb %></h1>
        <p> Ahora son las <%= hora %></p>
        </div>
      </div>

      <div class="separa"></div>

      <div class="pie">
        <span class="pie_izda">
          <a href="mailto:francisco.garcia@unirioja.es">Contacto</a> &nbsp; | &nbsp; <a href="mapa.html">Mapa</a> </span>
        <span class="pie_dcha">
          &copy; 2012 Francisco J. García Izquierdo  </span>
        <div class="clear"></div>  
      </div>

    </div>
  </body>
</html>
