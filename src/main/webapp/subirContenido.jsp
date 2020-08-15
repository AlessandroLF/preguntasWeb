<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="functions.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Add</title>
    </head>
    <body id="body">
        <div id="console"></div>
        <form id="addPF" name="addPF" action="index" method="POST">
            <table>
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
            <input type="button" value="ADD" name="addBtn" onClick="addP();" />
        </form>
    </body>
</html>
