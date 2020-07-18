package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <title>Smart Shirts</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <link href=\"CSS/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"CSS/temp.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("        <!--**************************************************************************************************-->\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\" >\n");
      out.write("                <h1>Smart Shirts</h1>\n");
      out.write("            </div>\n");
      out.write("            <!--**************************************************************************************************-->\n");
      out.write("            <!--**************************************************************************************************-->\n");
      out.write("            <div class=\"col-sm-3\" ></div>\n");
      out.write("            <!--**************************************************************************************************-->\n");
      out.write("            <!--**************************************************************************************************-->\n");
      out.write("\n");
      out.write("            <!--**************************************************************************************************-->\n");
      out.write("            <!--**************************************************************************************************-->\n");
      out.write("            <div class=\"col-sm-6\" id=\"headertagline\">\n");
      out.write("                <h4><b><i> &#9679;Fit guarantee  &#9679;In-house manufacturing</i></b></h4>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--header end****************************************************************************************-->\n");
      out.write("        <!--header end****************************************************************************************-->\n");
      out.write("        <!--header end****************************************************************************************-->\n");
      out.write("        <!--navigation bar ***********************************************************************************-->\n");
      out.write("        <!--navigation bar ***********************************************************************************-->\n");
      out.write("        <!--navigation bar ***********************************************************************************-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-md navbar-dark sticky-top\" id=\"navbar\">\n");
      out.write("\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapsibleNavbar\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"collapsibleNavbar\">\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"Home.html\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"index.html\">Products</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"order.jsp\">Order</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"feedback_1.jsp\">Feedback</a>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"contactus.html\">Contact Us</a>\n");
      out.write("                    </li>  \n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"profile.html\">Login</a>\n");
      out.write("                    </li>\n");
      out.write("                   \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"text-align: right\">\n");
      out.write("                <form class=\"form-inline\" action=\"\">\n");
      out.write("                    <input class=\"form-control mr-sm-2\" type=\"text\" placeholder=\"Search\">\n");
      out.write("                    <button class=\"btn btn-outline-primary\" type=\"submit\" id=\"btn2\">Search</button>\n");
      out.write("                </form>\n");
      out.write("            </div> \n");
      out.write("        </nav>\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-9\">\n");
      out.write("\n");
      out.write("                ");

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
                            
                             String colour = rs.getString("color");
                            out.print(color);
                            
                         
                            
                        }else{
                            out.println("<h3>NO STORE</h3>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }

                    
                    
        
        
      out.write("\n");
      out.write("  \n");
      out.write("        <a href=\"profile.html\"><input type=\"submit\" value=\"ORDER NOW\"/></a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div>\n");
      out.write("                <form action=\"search.jsp\" method=\"post\">\n");
      out.write("                    <table>\n");
      out.write("                        <tbody>\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Shirt Type:</td>  <br>  \n");
      out.write("                        <td>\n");
      out.write("                            <input type=\"radio\" name=\"brand\" value=\"Polo\"  /> Polo</br>\n");
      out.write("                            <input type=\"radio\" name=\"brand\" value=\"Henley\"  />Henley</br>\n");
      out.write("                            <input type=\"radio\" name=\"brand\" value=\"Nike\" />Nike </br>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Size:</td>\n");
      out.write("                            <td><select name=\"size\" size=\"1\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <option value=\"S\">S </option>\n");
      out.write("                                    <option value =\"M\">M</option>\n");
      out.write("                                    <option value=\"L\">L</option>\n");
      out.write("                                    <option value=\"XL\">XL</option>\n");
      out.write("\n");
      out.write("                                </select></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Shirt Sleeve:</td> \n");
      out.write("                            <td>     <input type=\"radio\" name=\"ShirtSleeve\" value=\"Full\"  />Full</br>\n");
      out.write("                                <input type=\"radio\" name=\"ShirtSleeve\" value=\"Half\" /> Half</br>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Colour:</td>\n");
      out.write("                            <td><select name=\"color\" size=\"1\">\n");
      out.write("                                    <option value=\"Blue\">Blue</option>\n");
      out.write("                                    <option value=\"Grey\">Grey</option>\n");
      out.write("                                    <option value=\"Red\">Red</option>\n");
      out.write("                                    <option value=\"Brown\">Brown</option>\n");
      out.write("                                </select></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <br>\n");
      out.write("                        </br>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td> <input type=\"submit\" value=\"SHOW SHIRT\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("         <div class=\"row\" id=\"footermid\">\n");
      out.write("            <div class=\"col-sm-4\" id=\"footermiddiv\">\n");
      out.write("                <p><b>Info</b>\n");
      out.write("                </p>\n");
      out.write("                <div id=\"footermid1\">\n");
      out.write("                    <address><i>\n");
      out.write("                            Smart Shirt<br>\n");
      out.write("                            No 115<br> \n");
      out.write("                            Moraketiya Road<br>\n");
      out.write("                            Embilipitiya<br>\n");
      out.write("                            10200</br>\n");
      out.write("                            Sri Lanka\n");
      out.write("                        </i></address>\n");
      out.write("\n");
      out.write("                    <p>077-4532678</br>\n");
      out.write("                        045-4567834</p>\n");
      out.write("                    <p><i>SmartShirt.biz@gmail.com</i>\n");
      out.write("                        </br>\n");
      out.write("                        <i>SmartShirt@gmail.com</i>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("           \n");
      out.write("            <div class=\"col-sm-4\" id=\"footermiddiv\">\n");
      out.write("                <p><b>About</b>\n");
      out.write("                </p>\n");
      out.write("                <div id=\"footermid2\">\n");
      out.write("                    <p><a id=\"link1\" href=\"b########################\">About us</a>\n");
      out.write("                    </p>\n");
      out.write("                    <p><a id=\"link1\" href=\"b########################\">Privacy Policy</a>\n");
      out.write("                    </p>\n");
      out.write("                    <p><a id=\"link1\" href=\"b########################\">Terms and Conditions</a>\n");
      out.write("                    </p>\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("            <div class=\"col-sm-4\" id=\"footermiddiv\">\n");
      out.write("                <p><b>Social Media</b>\n");
      out.write("                </p>\n");
      out.write("                <p><a id=\"link1\" href=\"https://www.facebook.com/\"><i class=\"fa fa-facebook-square\" style=\"font-size:24px\"></i></a>&nbsp; &nbsp; <a id=\"link1\" href=\"https://www.facebook.com/\">Facebook</a>\n");
      out.write("                </p>\n");
      out.write("                <p><a id=\"link1\" href=\"https://plus.google.com/discover\"><i class=\"fa fa-google-plus-square\" style=\"font-size:24px\"></i></a>&nbsp; &nbsp; <a id=\"link1\" href=\"https://plus.google.com/discover\">Google+</a>\n");
      out.write("                </p>\n");
      out.write("                \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"row\" id=\"footerbot\">\n");
      out.write("            <hr id=\"footerbothr\">\n");
      out.write("            <div class=\"col-sm-3\"></div>\n");
      out.write("            <div class=\"col-sm-6\" id=\"copy\">\n");
      out.write("                <p>Copyright 2018 www.SmartShirt</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-3\"></div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
