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
            String boatID1 = request.getParameter("boatID");
            String companyID1 = request.getParameter("companyID");
            String price1 = request.getParameter("price");
            double price2 = Double.parseDouble(price1);
            String capacity1 = request.getParameter("capacity");
            int capacity2 = Integer.parseInt(capacity1);
            String pickupLoc1 = request.getParameter("pickupLoc");
            String dropoffLoc1 = request.getParameter("dropoffLoc");

            PreparedStatement ps2 = null;
            ResultSet rs = null;

            DBConnect con = new DBConnect();
            String query1 = "SELECT boatID FROM boat WHERE boatID=?";
            String query2 = "INSERT INTO boat(boatID,companyID,price,capacity,pickupLoc,dropoffLoc) VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = con.getConnection().prepareStatement(query1);
            ps.setString(1, boatID1);
            rs = ps.executeQuery();
            if (!rs.next()) {
                ps2 = con.getConnection().prepareStatement(query2);;
                ps2.setString(1, boatID1);
                ps2.setString(2, companyID1);
                ps2.setDouble(3, price2);
                ps2.setInt(4, capacity2);
                ps2.setString(5, pickupLoc1);
                ps2.setString(6, dropoffLoc1);
                int i = ps2.executeUpdate();
                response.sendRedirect("ViewBoat.jsp");
            } else {
                response.sendRedirect("index.html");
            }
//            try {
//                Class.forName("com.mysql.jdbc.Driver");
//                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boatsystem", "root", "");
//                ps1 = conn.prepareStatement(query1);
//                ps1.setString(1, boatID1);
//                rs = ps1.executeQuery();
        %>
    </body>
</html>