<%-- 
    Document   : Boat
    Created on : Dec 10, 2022, 10:29:15 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-image: url("images/Sea.png");
                background-size: cover;
            }
            .navbar{
                display: flex;
                align-items: center;
                padding: 20px;
                padding-right: 50px;
                padding-top: 8px;
            }
            nav{
                flex: 1;
                text-align: right;
            }
            nav ul{
                display: inline-block;
                list-style: none;
            }
            nav ul li{
                display: inline-block;
                margin-right: 70px;
            }
            nav ul li a{
                text-decoration: none;
                font-size: 20px;
                color: black;
                font-family: sans-serif;
            }
            nav ul li button{
                font-size: 20px;
                color: black;
                outline: none;
                border: none;
                background: transparent;
                cursor: pointer;
                font-family: sans-serif;
            }
            nav ul li button:hover{
                color: #ABB4D9;
            }
            nav ul li a:hover{
                color: #ABB4D9;
            }
            .filler{
                width:100%;
            }
            h2{
                text-align: center;
                margin-top: 1px;
            }
        </style>
    </head>
    <body>
        <div class="navbar">
            <nav>
                <ul id='MenuItems'>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="ProfilePage.html">Boat</a></li>
                    <li><a href="Logout.jsp">Logout</a></li>
                </ul>
            </nav>
        </div>
        <div class="active">
            <%@ page import="java.sql.*" %>
            <%@ page import="javax.sql.*" %>
            <%
                ResultSet rs = null;
                PreparedStatement ps = null;
                java.sql.Connection conn = null;
                String query = "select bname from boatcompany where email=?";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boatsystem", "root", "");
                    ps = conn.prepareStatement(query);
                    HttpSession httpSession = request.getSession();
                    String fname = (String) httpSession.getAttribute("currentuser");
                    ps.setString(1, fname);
                    rs = ps.executeQuery();
                    if (rs.next()) {

            %>

            <div class="filler"></div>
            <h2>Welcome <%=rs.getString("bname")%></h2>

            <%

                    }
                } catch (Exception e) {
                    out.println("error: " + e);
                } finally {
                    try {
                        if (rs != null) {
                            rs.close();
                        }
                    } catch (Exception e) {
                    };
                    try {
                        if (ps != null) {
                            ps.close();
                        }
                    } catch (Exception e) {
                    };
                    try {
                        if (conn != null) {
                            conn.close();
                        }
                    } catch (Exception e) {
                    };
                }
            %>
        </div>
    </body>
</html>