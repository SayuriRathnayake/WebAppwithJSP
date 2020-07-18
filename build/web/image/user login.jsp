<%-- 
    Document   : user login
    Created on : Dec 1, 2018, 8:51:45 PM
    Author     : Vipusayini.P
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome to Our Garments</title>
        <link rel="stylesheet" href="css/cssstyle.css" type="text/css">
    </head>
    <body>
        <div id="header">
            <div>
                <div id="logo">
                    <a href="index.jsp"><span>Our Garments</span></a>
                </div>
                <ul id="navigation">
                    <li>
                        <a href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="about.html">About Us</a>
                    </li>				
                    <li>
                        <a href="contact.html">Contact Us</a>
                    </li>
                    <li class="selected">
                        <a href="profile.html">Login</a>
                    </li>
                </ul>
            </div>
        </div>
        <div id="contents">
            <div id="adbox">
                <%
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pets", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "SELECT * FROM user_details WHERE username='"+username+"' AND password='"+password+"'";
                        ResultSet rs = stmt.executeQuery(query);
                        if(rs.next()){
                            String firstname = rs.getString("firstname");
                            //out.println(fname);
                            session.setAttribute("uid", rs.getString("id"));
                            response.sendRedirect("index.jsp?firstname="+rs.getString("firstname"));
                        }else{
                            out.println("<h4>Invalid username and password.</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                %>
                
            </div>
        </div>
        <div id="footer">
            <div>
                <p>
                    © Copyright - 2018. All rights reserved.
                </p>
            </div>
        </div>
    </body>
</html>

