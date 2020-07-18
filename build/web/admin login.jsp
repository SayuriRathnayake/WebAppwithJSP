<%-- 
    Document   : admin login
    Created on : Dec 1, 2018, 7:23:47 PM
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
        <title>Welcome to Our Garment</title>
        <link rel="stylesheet" href="css/cssstyle.css" type="text/css">
         <link href="CSS/temp.css" rel="stylesheet" type="text/css">
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        
        
        
    </head>
    <body>
         <div id="logo">
                   <a href="index_toberemoved.html"><span>Our Garments</span></a>
                </div>
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
                        <a class="nav-link" href="index1_html">Products</a>
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
        <p><b>
                Manage Inventories </b> <a href="temp2.html">Click Here...</a>

        </p>
        <div id="contents">
            <div id="adbox">
                <%
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/garment", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "SELECT * FROM admin_details WHERE username='"+username+"' AND password='"+password+"'";
                        ResultSet rs = stmt.executeQuery(query);
                        if(rs.next()){
                            String firstname = rs.getString("firstname");
                            //out.println(fname);
                            session.setAttribute("uid", rs.getString("username"));
                            response.sendRedirect("newjsp.jsp?firstname="+rs.getString("firstname"));
                        }else{
                            out.println("<h4>Invalid username and password.</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                %>
                
            </div>
        </div>
         <div class="row" id="footermid">
            <div class="col-sm-4" id="footermiddiv">
                <p><b>Info</b>
                </p>
                <div id="footermid1">
                    <address><i>
                            Smart Shirt<br>
                            No 115<br> 
                            Moraketiya Road<br>
                            Embilipitiya<br>
                            10200</br>
                            Sri Lanka
                        </i></address>

                    <p>077-4532678</br>
                        045-4567834</p>
                    <p><i>SmartShirt.biz@gmail.com</i>
                        </br>
                        <i>SmartShirt@gmail.com</i>
                    </p>
                </div>
            </div>

           
            <div class="col-sm-4" id="footermiddiv">
                <p><b>About</b>
                </p>
                <div id="footermid2">
                    <p><a id="link1" href="b########################">About us</a>
                    </p>
                    <p><a id="link1" href="b########################">Privacy Policy</a>
                    </p>
                    <p><a id="link1" href="b########################">Terms and Conditions</a>
                    </p>
                   
                    
                </div>
            </div>
           
            <div class="col-sm-4" id="footermiddiv">
                <p><b>Social Media</b>
                </p>
                <p><a id="link1" href="https://www.facebook.com/"><i class="fa fa-facebook-square" style="font-size:24px"></i></a>&nbsp; &nbsp; <a id="link1" href="https://www.facebook.com/">Facebook</a>
                </p>
                <p><a id="link1" href="https://plus.google.com/discover"><i class="fa fa-google-plus-square" style="font-size:24px"></i></a>&nbsp; &nbsp; <a id="link1" href="https://plus.google.com/discover">Google+</a>
                </p>
                

            </div>
        </div>
        
        <div class="row" id="footerbot">
            <hr id="footerbothr">
            <div class="col-sm-3"></div>
            <div class="col-sm-6" id="copy">
                <p>Copyright 2018 www.SmartShirt</p>
            </div>
            <div class="col-sm-3"></div>
        </div>
    </body>
</html>

