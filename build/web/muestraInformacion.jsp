<%-- 
    Document   : muestraInformacion
    Created on : 28/11/2016, 11:37:41 AM
    Author     : Edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Información</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page import="mx.com.tallerjava.clases.Persona" %>
    </head>
    <body>
        <div class="contenido">
        <%session.getAttribute("personas");%>
        <h1>Personas</h1>
          <c:forEach items="${personas}" var="persona">
              <div class="datos">
                  <h5>Nombre: </h5><p>${persona.getNombre()}</p>
                  <h5>País: </h5><p>${persona.getPais()}</p>
              </div>      
          </c:forEach>
        </div>
    </body>
    
    <style>
        *{
            padding: 0px;
            margin: 0px;
            font-family: verdana;
        }
        h1{
            text-align: center
        }
        body{
            padding: 100px 20% 100px 20%;
            background-color: #add8e6;
        }
        div.contenido{
            background: #fff;
            padding-left: 20%;
            padding-right: 20%;
            height: 600px;
            border-radius: 10px;
        }
        div.datos{
            background-color: #d3d3d3;
            margin-top: 20px;
            width: 60%;   
            height: 100px;
            border-radius: 8px;
            padding: 10px 20% 10px 20%;
        }
        
        div.datos h5{
            font-size: 25px;
            float: left;
            width: 50%;
            height: 50%;
        }
        div.datos p{
            font-size: 25px;
            float: left;
            width: 50%;
            height: 50%;
        }
    </style>
</html>
