<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="com.emergentes.modelo.Tarea"%>
<%
    Tarea tar = (Tarea) request.getAttribute("tar");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <c:if test="${tar.id == 0}" var="res" scope="request">
                Registro de
            </c:if>
            <c:if test="${tar.id > 0}" var="res" scope="request">
                Modificar
            </c:if>
            Tarea    
        </h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="${tar.id}">
            <table width="311">       
                <tr>
                    <td width="72">Tarea</td>
                    <td width="227"><input name="tarea" type="text" value="${tar.tarea}" size="50" required></td>                   
                </tr>

                <tr>
                    <td>Prioridad</td>
                    <td>
                        <select name="prioridad">
                            <option value="1"
                                    <c:if test="${tar.prioridad == 1}">
                                        selected
                                    </c:if>
                                    >Alta</option>

                            <option value="2"
                                    <c:if test="${tar.prioridad == 2}">
                                        selected
                                    </c:if>
                                    >Media</option>   

                            <option value="3"
                                    <c:if test="${tar.prioridad == 3}">
                                        selected
                                    </c:if>
                                    >Baja</option>
                        </select>
                    </td>   
                </tr>

                <tr>
                    <td>Completado</td>

                    <td>
                        <input type="radio" name="completado" value="2"  
                               <c:if test="${tar.completado == 2}"
                                     var="res" scope="request">
                                   checked
                               </c:if>
                               required="required">Pendiente
                        <br>
                        <input type="radio" name="completado" value="1" 
                               <c:if test="${tar.completado == 1}"
                                     var="res" scope="request">
                                   checked
                               </c:if>
                               required="required">Concluido

                    </td> 

                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>

            </table>
        </form>
        <p><a href="MainController">Volver</a></p>
    </body>
</html>
