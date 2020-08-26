<%-- 
    Document   : logIn
    Created on : Aug 24, 2020, 2:58:30 PM
    Author     : lomba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mahfirststylesheet.css?version=1.1.9gdfdefd11df">
        <script src="functions.js"></script>
        <meta http-equiv="Content-Type" content="text/html; UTF-8">
        <title>Iniciar Sesión</title>
    </head>
    <body class="grid" >
        <div class="navbarTop">
            <a href="home.jsp" class="btn logo">QuizAcademy</a>
            <a class="btn nvbr" href="index.jsp">Registrarme</a>
        </div>
        <div class="cpanel">
            <div class="formFrame">
                <%
                    if(request.getParameter("err") == "sql" ){
                        out.println("<label style='color: red;'><h3>Lo sentimos, no podemos conectar con el srvidor :(</h3><br><h3>Por favor, intenta de nuevo más tarde</h3></label>");
                    }
                %>
                <table>
                    <form action="logInServlet" method="POST" style="width: 100%;">
                        <tr>
                            <td>Correo Electrónico:</td>
                            <td><input type="email" name="mail" ><br>
                                <% if(request.getParameter("err") == "m" ){
                                    out.println("<label style='color: red;'>Información incorrecta</label>");
                                }%>
                            </td>
                        </tr>
                        <tr>
                            <td>Contraseña:</td>
                            <td><input type="password" name="pwd"><br>
                                <% if(request.getParameter("err") == "p" ){
                                    out.println("<label style='color: red;'>Contraseña incorrecta</label>");
                                }%>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="reset" value="Borrar" ></td>
                            <td><input type="submit" name="liBtn" value="Iniciar Sesión"></td>
                        </tr>
                    </form>
                </table>
            </div>
        </div>
    </body>
</html>
