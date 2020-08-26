<%-- 
    Document   : index
    Created on : Aug 24, 2020, 2:58:30 PM
    Author     : lomba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mahfirststylesheet.css?version=final2">
        <script src="functions.js"></script>
        <meta http-equiv="Content-Type" content="text/html;UTF-8">
        <title>Registro</title>
    </head>
    <body class="grid" >
        <div class="navbarTop">
            <a href="home.jsp" class="btn logo">QuizAcademy</a>
            <a class="btn nvbr" href="logIn.jsp">Iniciar Sesión</a>
        </div>
        <div class="cpanel">
            <div class="formFrame">
                <table>
                    <form name="regF" id="regF" action="signInServlet" method="POST" style="width: 100%;">
                        <tr>
                            <td>Correo Electrónico:</td>
                            <td><input type="email" name="mail"></td>
                        </tr>
                        <tr>
                            <td>Contraseña:</td>
                            <td><input type="password" name="pwd" onkeyup="checkpasw();"></td>
                        </tr>
                        <tr>
                            <td>Confirmar<br>Contraseña:</td>
                            <td><input type="password" name="pwd2" onkeyup="checkpasw();" ><br><label style="color: red;" id="pwdLabel"></label></td>
                        </tr>
                        <tr>
                            <td><input type="reset" value="Borrar" ></td>
                            <td><input type="submit" name="rBtn" value="Registrarme" disabled="true" ></td>
                        </tr>
                    </form>
                </table>
            </div>
        </div>
    </body>
</html>
