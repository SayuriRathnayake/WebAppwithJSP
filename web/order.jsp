<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

    </head>
    <body>
        <div class="row">
            <div class="col-sm-3" >
                <h1>Smart Shirts</h1>
            </div>
            <div class="col-sm-3" >
            </div>
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
                        <a class="nav-link" href="order.jsp">Order</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="feedback_1.jsp">Feedback</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="contactus.html">Contact Us</a>
                    </li>  
                    <li class="nav-item">
                        <%
                            if(session.getAttribute("uid") != null){
                                out.println("<a href='logout.jsp'>Logout</a>");
                            } else {
                                out.println("<a href='profile.html'>Login</a>");
                            }
                        %>
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

            <h1 class="display-4 text-center ">Order Details</h1>
            <div></div>
            <form class="container col-sm-6" action="order.jsp" method="Post">
                <div class="form-row">
                    <label>Customer Name</label>
                    <input type="text" name ="cusname" class="form-control" placeholder="Customer Name" required>

                    <label>Customer Phone Number</label>
                    <input type="number"  name ="phone" class="form-control" placeholder="Customer Phone Number" required>

                    <label>Customer Address</label>
                    <input type="text"  name ="addr" class="form-control" placeholder="Customer Address" required>

                    <label>Order Items</label>
                    <input type="text"   name ="orderitem" class="form-control" placeholder="Order Items" required>

                    <label>Quantity Items</label>
                    <input type="number"  name ="qt" class="form-control" placeholder="Quantity Items" required>

                    <div class="text-center col-md-12 ">

                        <button type="submit" name="order" class="btn btn-primary mt-4 btn-success">Order Now</button>
                    </div>


                    <%

                        if (request.getParameter("order") != null) {

                            String name = request.getParameter("cusname");
                            String ph = request.getParameter("phone");
                            String ad = request.getParameter("addr");
                            String odt = request.getParameter("orderitem");
                            String qtt = request.getParameter("qt");

                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/garment", "root", "");
                                Statement stmt = con.createStatement();

                                String query = "INSERT INTO order1(cusname,phone,addr,orderitem,qt) VALUES ('" + name + "','" + ph + "','" + ad + "','" + odt + "','" + qtt + "')";
                                int n = stmt.executeUpdate(query);
                                if (n != 0) {
                                    out.println("<h4>Order Successfully.</h4>");
                                } else {
                                    out.println("<h4>Error while Adding Order...</h4>");
                                }
                            } catch (Exception e) {
                                out.println(e.getMessage());
                            }
                        }
                    %>
            
      
              
    </body>
</html>

  