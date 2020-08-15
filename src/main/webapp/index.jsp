<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="functions.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body id="body">
        <div id="console"></div>
        <form name="getPF" action="index" method="POST">
            <table>
                <tr>
                    <td>Param</td>
                    <td><input type="text" name="paran" value="" /></td>
                </tr>
                <tr>
                    <td>Pregunta</td>
                    <td><textarea name="pregunta" rows="10" cols="20">
                        </textarea></td>
                </tr>
                <tr>
                    <td>Departamento</td>
                    <td><input type="text" name="depo" value="" /></td>
                </tr>
                <tr>
                    <td>Materia</td>
                    <td><input type="text" name="materia" value="" /></td>
                </tr>
                <tr>
                    <td>Parcial</td>
                    <td><input type="text" name="parcial" value="" /></td>
                </tr>
            </table>
            <input type="button" value="GET" name="addBtn" onClick="getP();" />
        </form>
    </body>
</html>
