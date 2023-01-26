<%-- 
    Document   : Boat
    Created on : Dec 10, 2022, 10:29:15 AM
    Author     : Asus
--%>

<%@page import="java.io.PrintWriter"%>
<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Register</title>
    </head>
    <body> 
        <%
            String boatID1 = request.getParameter("boatID");
            String updateLoc1 = request.getParameter("pickupLoc");
            String dropoffLoc1 = request.getParameter("dropoffLoc");

            PreparedStatement ps = null;
            Connection conn = null;

            PrintWriter pw = response.getWriter();

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boatsystem", "root", "");

            String query = "UPDATE boat SET pickupLoc = ?, dropoffLoc = ? WHERE boatID = ?";

            ps = conn.prepareStatement(query);
            ps.setString(1, updateLoc1);
            ps.setString(2, dropoffLoc1);
            ps.setString(3, boatID1);
            int i = ps.executeUpdate();
            if (i > 0) {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Update Success');");
                pw.println("window.location.href = \"UpdateBoat.jsp\";");
                pw.println("</script>");
            } else {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Not Updated, please try again');");
                pw.println("window.location.href = \"UpdateSession.jsp\";");
                pw.println("</script>");
            }
        %>
    </body>
</html>
