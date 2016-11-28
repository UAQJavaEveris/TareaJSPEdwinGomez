<%-- 
    Document   : index
    Created on : 28/11/2016, 11:36:56 AM
    Author     : Edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenido">
        <form action="Enlace" method ="post">
            
            <c:forEach var="i" begin="1" end="3">
                <h5>Registro ${i} </h5>
                <input type="text" placeholder="Nombre" name="nombre" required/>
                <select name="pais" required>
                    <option disabled selected value>Seleccione un país</option>
                    <option value="Mexico">Mexico</option>
                    <option value="Estados Unidos">Estados Unidos</option>
                    <option value="Francia">Francia</option>
                </select>
            <br>
            </c:forEach>
            <input type ="submit" value="Enviar"/>
            
            
        </form>
            
        </div>
    </body>
    
    <style>
        *{
            padding: 0px;
            margin: 0px;
            font-family: verdana;
        }
        h5{
            text-align: center;
            font-size: 40px;
        }
        body{
            padding: 100px 20% 100px 20%;
            background-color: #add8e6;
        }
        div.contenido{
            background: #fff;
            padding: 50px 20% 50px 20%;
            height: 500px;
            border-radius: 10px;
            overflow: auto;
        }
        
        div.contenido form{
            width: 100%;
        }
        
        div.contenido form input{
            width: 100%;
            height: 40px;
            font-size: 30px;
            margin-bottom: 20px;
        }
        
        div.contenido form select{
            width: 100%;
            height: 40px;
            font-size: 30px;
            margin-bottom: 20px;
        }
        
    </style>
</html>
