<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Tarea"%>
<%
    List<Tarea> lista= (List<Tarea>) request.getAttribute("lista");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Tareas</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Prioridad</th>
                <th>Completado</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">        
            <tr>
                <td>${item.id}</td>
                <td>${item.tarea}</td>
                <td>
                    <c:if test="${item.prioridad == 1}" >
                        Alta
                    </c:if>
                    <c:if test="${item.prioridad == 2}" >
                        Media
                    </c:if>
                    <c:if test="${item.prioridad == 3}" >
                        Baja
                    </c:if>                           
                </td>
                
                <td>
                    <input type="checkbox" name="completado" 
                    <c:if test="${item.completado == 1}" >
                        checked
                    </c:if>
                    <c:if test="${item.completado == 2}" >
                    </c:if>     
                    readonly="readonly" onclick="javascript: return false;"/>

                </td>
                <th><a href="MainController?op=editar&id=${item.id}">Editar</a></th>
                <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
