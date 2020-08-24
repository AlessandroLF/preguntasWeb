<%-- 
    Document   : subirExamen
    Created on : Aug 23, 2020, 1:03:52 PM
    Author     : lomba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="mahfirststylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Agregando Examen</title>
    </head>
    <body id="body">
        
        <%
            if(request.getParameter("err") != null){
                out.print(request.getParameter("err"));
            }
        %>
        <form name="addExF" action="addExServlet" method="POST" enctype="multipart/form-data">
            <table>
                <tr style='height: 180px'>
                    <td>Sube la protada del examen<br>(Materia, semestre, parcial y tipo vivible)</td>
                    <td>
                        <div class="dropzone" >
                            <table>
                                <tr><td><img id="imgPreview" src="images/blank.png" width="130" height="130" alt="blank" /></td></tr>
                                <tr ><td><input class="dropzoneInput btn" id="imgSrc" type="file" name="exImg" accept="image/png" onchange="preview(this);"/></td></tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <script src="imgMan.js"></script>
                <tr>
                    <td>Descripción del examen</td>
                    <td>
                        <div style="color: gray;font-size: 15px">MATERIA(#)-[#PARCIAL/F]-[PRIMAVERA/OTONO]-AÑO-TIPO(OPCIONAL)</div>
                        <input type="text" name="descText" value="" style="width: 100%" onkeypress="saveSpell(this)" onkeyup="checkSpell(this)" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="btn" type="submit" value="Guardar" name="saveExBtm" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
