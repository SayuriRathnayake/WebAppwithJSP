<%-- 
    Document   : search
    Created on : Dec 3, 2018, 3:04:01 PM
    Author     : Arun
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
    <head>
        
        
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



        <div class="row">
            <div class="col-sm-9">

                <%
                    String brand = request.getParameter("brand");
                    String ShirtSleeve = request.getParameter("ShirtSleeve");
                    String color = request.getParameter("color");
                    String size = request.getParameter("size");
                    

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/garment", "root", "");
                        Statement stmt = con.createStatement();
                       String query = "SELECT * FROM shirt WHERE brand='"+brand+"' AND sleev='"+ShirtSleeve+"'  AND size='"+size+"' AND color='"+color+"'";
                        ResultSet rs = stmt.executeQuery(query);
                        if(rs.next()){
                            String path = rs.getString("path");
                            out.print("<img src='image/");
                            out.print(path);
                            out.print("'>");
                            
                            String price = rs.getString("price");
                            out.print(price);
                            
                             
                         
                            
                        }else{
                            out.println("<h3>NO STORE</h3>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }

                    
                    
        
        %>
  
        <a href="profile.html"><input type="submit" value="ORDER NOW"/></a>

            </div>

            <div>
                <form action="search.jsp" method="post">
                    <table>
                        <tbody>

                            <tr>
                                <td>Shirt Type:</td>  <br>  
                        <td>
                            <input type="radio" name="brand" value="Polo"  /> Polo</br>
                            <input type="radio" name="brand" value="Henley"  />Henley</br>
                            <input type="radio" name="brand" value="Nike" />Nike </br>
                            </tr>

                        <tr>
                            <td>Size:</td>
                            <td><select name="size" size="1">


                                    <option value="S">S </option>
                                    <option value ="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>

                                </select></td>
                        </tr>
                        <br>



                        <tr>
                            <td>Shirt Sleeve:</td> 
                            <td>     <input type="radio" name="ShirtSleeve" value="Full"  />Full</br>
                                <input type="radio" name="ShirtSleeve" value="Half" /> Half</br>
                            </td>
                        </tr>

                        <tr>
                            <td>Colour:</td>
                            <td><select name="color" size="1">
                                    <option value="Blue">Blue</option>
                                    <option value="Grey">Grey</option>
                                    <option value="Red">Red</option>
                                    <option value="Brown">Brown</option>
                                </select></td>
                        </tr>
                        <br>
                        </br>

                        <tr>
                            <td> <input type="submit" value="SHOW SHIRT"/></td>
                        </tr>




                        </tbody>
                    </table>
                </form>


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

