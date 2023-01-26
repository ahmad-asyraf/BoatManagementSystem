<%-- 
    Document   : Register
    Created on : Dec 3, 2022, 1:43:06 PM
    Author     : Asus
--%>

<%@ page import="java.sql.*" %>
<%@page import="com.Utils.DBConnect" %>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Register</title>
    </head>
    <body>
        <%
            String fname1 = request.getParameter("fname");
            String lname1 = request.getParameter("lname");
            String email1 = request.getParameter("email");
            String phno1 = request.getParameter("phno");
            long phno2 = Long.parseLong(phno1);
            String address1 = request.getParameter("address");
            String pass1 = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");

            PreparedStatement ps1 = null;
            PreparedStatement ps2 = null;
            ResultSet rs = null;

            DBConnect con = new DBConnect();
            String query1 = "SELECT email from customer WHERE email=?";
            String query2 = "INSERT INTO customer(email,pass1,fname,lname,address,phno,pass2) VALUES(?,?,?,?,?,?,?)";
            ps1 = con.getConnection().prepareStatement(query1);

            ps1.setString(1, email1);
            rs = ps1.executeQuery();
            if (rs.next()) {
                response.sendRedirect("RegisterError1.html");
            } else {
                if (pass1.equals(pass2)) {
                    ps2 = con.getConnection().prepareStatement(query2);;
                    ps2.setString(1, email1);
                    ps2.setString(2, pass1);
                    ps2.setString(3, fname1);
                    ps2.setString(4, lname1);
                    ps2.setString(5, address1);
                    ps2.setLong(6, phno2);
                    ps2.setString(7, pass2);
                    int i = ps2.executeUpdate();
                    response.sendRedirect("Login.html");
                } else {
                    response.sendRedirect("RegisterError2.html");
                }
            }
        %>
    </body>
</html>