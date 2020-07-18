<%-- 
    Document   : feedback
    Created on : Nov 25, 2018, 6:41:14 PM
    Author     : Sayuri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%
            if(session.getAttribute("uid") == null){
                response.sendRedirect("profile.html");
            }
        %>
        <title>Smart Shirts</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="CSS/temp.css" rel="stylesheet" type="text/css">
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->

        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
        <!--**************************************************************************************************-->
    </head>
    <body>
        <div class="row">
            <div class="col-sm-3" >
                <h1>Smart Shirts</h1>
            </div>
            <!--**************************************************************************************************-->
            <!--**************************************************************************************************-->
            <div class="col-sm-3" ></div>
            <!--**************************************************************************************************-->
            <!--**************************************************************************************************-->

            <!--**************************************************************************************************-->
            <!--**************************************************************************************************-->
            <div class="col-sm-6" id="headertagline">
                <h4><b><i> &#9679;Fit guarantee  &#9679;In-house manufacturing</i></b></h4>
            </div>
        </div>
        <!--header end****************************************************************************************-->
        <!--header end****************************************************************************************-->
        <!--header end****************************************************************************************-->
        <!--navigation bar ***********************************************************************************-->
        <!--navigation bar ***********************************************************************************-->
        <!--navigation bar ***********************************************************************************-->


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
                        <a class="nav-link" href="order.jsp">Order</a>
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
                    <%
                            if(session.getAttribute("uid") != null){
                                out.println("<a href='logout.jsp'>Logout</a>");
                            } else {
                                out.println("<a href='profile.html'>Login</a>");
                            }
                        %>
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
        <div style="margin-left:5" >
            <form name="feedback" action="feedback_1.jsp" method="POST">
                <h1>Send Us a Feedback</h1>
                <br/>
                <table>
                    <tbody>
                        <tr>
                            <td>Client's Name</td>
                            <td><input type="text" name="clientName" value="" size="36" required=""/></td>
                        </tr>
                        <tr>
                            <td>Client's Email</td>
                            <td><input type="email" name="clientemail" value="" size="36" required=""/></td>
                        </tr>
                        <tr>
                            <td>How do you rate the Company</td>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            Poor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="group1" value="poor"/>
                                        </td>
                                        <td>
                                            Good&nbsp;&nbsp;<input type="radio" name="group1" value="good"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            Very Good&nbsp;<input type="radio" name="group1" value="veryGood"/>
                                        </td>
                                        <td>
                                            Excellent&nbsp;<input type="radio" name="group1" value="excellent"/>
                                        </td>
                                    </tr>  
                                </table>
                            </td>                            
                        </tr>
                        <tr>
                            <td>Suggestions for the betterment of the company</td>
                            <td><textarea name="suggestions" rows="4" cols="38" required=""></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="text-align: right">
                                <input type="reset" value="Clear" name="reset" />
                                <input type="submit" value="Send" name="submit" />
                            </td>
                        </tr>
                    </tbody>
                </table>

                <%
                    //if (session.getAttribute("username") == null) {
                    if (request.getParameter("submit") != null) {
                        String clientName = request.getParameter("clientName");
                        String clientemail = request.getParameter("clientemail");
                        String rate = request.getParameter("group1");
                        String suggestions = request.getParameter("suggestions");

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/garment", "root", "");
                            Statement stmt = con.createStatement();
                            String query = "INSERT INTO feedback (c_name,c_email,rate,suggestions) VALUES ('" + clientName + "', '" + clientemail + "','" + rate + "', '" + suggestions + "')";
                            int n = stmt.executeUpdate(query);
                            if (n != 0) {

                                try {

                                    String query2 = "select * from feedback";
                                    ResultSet rs = stmt.executeQuery(query2);

                                    while (rs.next()) {
                                        String name = rs.getString("c_name");
                                        String feedback = rs.getString("suggestions");
                                        out.println("<table>");
                                        out.println("<tbody>");
                                        out.println("<tr>");
                                        out.println("<td><b> Name : </b></td>");
                                        out.println("<td>" + name + "</td>");
                                        out.println("</tr>");

                                        out.println("<tr>");
                                        out.println("<td><b> Feedback : </b></td>");
                                        out.println("<td>" + feedback + "</td>");
                                        out.println("</tr>");
                                        out.println("<tbody>");
                                        out.println("<table>");

                                        out.println("<br>");
                                        out.println("<br>");

                                        //session.invalidate();
                                    }

                                } catch (Exception e) {
                                    out.println(e.getMessage());
                                }
                            } else {
                                out.println("<h4>Error!!!</h4>");
                            }

                        } catch (Exception e) {
                            out.println(e.getMessage());
                        }
                    }
                    //else {
                    //response.sendRedirect(login.html);
                    //}
                    //}
                %>
            </form>
        </div>
       <br>

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
