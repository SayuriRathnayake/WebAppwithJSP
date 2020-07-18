<%-- 
   Document   : Details
   Created on : Dec 1, 2018, 6:12:52 PM
   Author     : Madusha Ravishani
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>

        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="CSS/temp.css" rel="stylesheet" type="text/css">
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

       
    </head>

    <body>
        <div class="row">
            <div class="col-sm-3" >
                <h1>Smart Shirts</h1>
            </div>
           
            <div class="col-sm-3" ></div>
           
            <div class="col-sm-6" id="headertagline">
                <h4><b><i> &#9679;Fit guarantee  &#9679;In-house manufacturing</i></b></h4>
            </div>
        </div>
        


        <nav class="navbar navbar-expand-md navbar-dark sticky-top" id="navbar">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="Home.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="orderdb.jsp">Order</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="feedback_1.jsp">Feedback</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="contactus.html">Contact Us</a>
                    </li>  
                    <li class="nav-item">
                        <a class="nav-link" href="profile.html">Login</a>
                    </li>
                </ul>
            </div>
            <div style="text-align: right">
                <form class="form-inline" action="">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-outline-primary" type="submit" id="btn2">Search</button>
                </form>
            </div> 
        </nav>
        <br>
        <div>
            <h1>Inventory Details</h1>
            <%
                String type = request.getParameter("type");
                String size = request.getParameter("size");
                String color = request.getParameter("color");
                String count = request.getParameter("count");

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/garment", "root", "");
                    Statement stmt = con.createStatement();
                    String query = "INSERT INTO inventory (type,size,colour,count) VALUES ('" + type + "', '" + size + "', '" + color + "','" + count + "')";
                    int n = stmt.executeUpdate(query);
                    if (n != 0) {
                        out.println("<h4>Your details insert Successfully... </h4>");
                    } else {
                        out.println("<h4>Error while inserting your details..</h4>");
                    }

                } catch (Exception e) {
                    out.println(e.getMessage());
                }


            %>
        </div>

    </body>
</html>
</body>
</html>
