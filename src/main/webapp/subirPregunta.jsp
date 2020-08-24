<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="mahfirststylesheet.css">
        <script src="imgMan.js"></script>
        <script>
            function trackPrice(){
                document.getElementById("value").innerHTML = document.getElementById("precio").value;
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Agregar Pregunta</title>
    </head>
    <body id="body" onload="trackPrice();">
        
        <div id="console"></div>
        <%
            if(request.getParameter("err") != null){
                out.print(request.getParameter("err"));
            }
        %>
        <form id="addPF" name="addPF" action="addServlet" method="POST" enctype="multipart/form-data" >
            <%
                if (request.getParameter("examen") == null){
                    response.sendRedirect("index.jsp");
                }
                out.println("<input type='hidden' name='examen' value='" + request.getParameter("examen").replace("%D1", "Ñ") + "' />");
                out.println("Se guardó exitosamente " + request.getParameter("resp"));
            %>
            
            <table>
                <tr>
                    <td>Sube una captura de la pregunta</td>
                    <td>
                        <div class="dropzone" >
                            <table>
                                <tr><td><img id="imgPreview" src="images/blank.png" width="130" height="130" alt="blank" /></td></tr>
                                <tr ><td><input class="dropzoneInput btn" id="imgSrc" type="file" name="pregunta" accept="image/png" onchange="preview(this);"/></td></tr>
                            </table>
                        </div>
                    </td>
                </tr>
                    <td>Respuesta</td>
                    <td>
                        a<input type="radio" name="respuesta" value="a" checked="checked" />
                        b<input type="radio" name="respuesta" value="b" />
                        c<input type="radio" name="respuesta" value="c" />
                        d<input type="radio" name="respuesta" value="d" />
                    </td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="range" id="precio" name="precio" step="5" value="0" oninput="trackPrice();">
                    <br><div id="value"></div></td>
                </tr>
                <tr>
                    <td>Código de inserción<br>(Embed)</td>
                    <td><textarea name="embed" rows="10" cols="20">
                        </textarea></td>
                </tr>
                    <td></td>
                    <td><input type="submit" value="ADD" name="addBtn" /></td>
                </tr>
            </table>
        </form>
            <form name="xtF" action="index.jsp" method="POST">
            <input type="submit" value="Terminar" name="exitBtn" />
        </form>
            
        <script src="imgMan.js"></script>
    </body>
</html>
