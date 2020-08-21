<%-- 
    Document   : tablasManager
    Created on : Aug 20, 2020, 8:08:50 PM
    Author     : lomba
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="functions.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>ADMIN</title>
    </head>
    <body id="body">
        <% 
            if(request.getParameter("ssuname") == null || request.getParameter("sspwd") == null){
                response.sendRedirect("index.jsp");
            }
            if(!(request.getParameter("ssuname").equals("supersecretusername42")) || !(request.getParameter("sspwd").equals("supersecretpasword69"))){
                response.sendRedirect("index.jsp");
            }
        %>
        
        <div id="console"></div>
        
        <input type="button" value="ADMIN" name="tablebtn" onclick="creatablas();"/>
        
    </body>
</html>
