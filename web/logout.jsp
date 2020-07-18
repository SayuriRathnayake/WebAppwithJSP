<%-- 
    Document   : logout
    Created on : Dec 1, 2018, 8:48:54 PM
    Author     : Vipusayini.P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome to Our Garments</title>
        <link rel="stylesheet" href="css/cssstyle.css" type="text/css">
        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="CSS/temp.css" rel="stylesheet" type="text/css">
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
