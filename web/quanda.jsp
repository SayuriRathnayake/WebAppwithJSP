<%-- 
    Document   : quanda
    Created on : Dec 1, 2018, 8:49:41 PM
    Author     : Vipusayini.P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String firstname = request.getParameter("firstname");
            out.println(firstname);
        %>
        <h1>Hello welcome to our garment!</h1>
    </body>
</html>
