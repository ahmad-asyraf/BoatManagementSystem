<%-- 
    Document   : BoatRegister
    Created on : Dec 7, 2022, 5:00:17 PM
    Author     : Asus
--%>

<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Register</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ page import="javax.sql.*" %>
        <%
            String bname1 = request.getParameter("bname");
            String offno1 = request.getParameter("offno");
            long offno2 = Long.parseLong(offno1);
            String address1 = request.getParameter("address");
            String email1 = request.getParameter("email");
            String pass1 = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");

            PreparedStatement ps1 = null;
            PreparedStatement ps2 = null;
            ResultSet rs = null;
            Connection conn = null;

            String query1 = "SELECT email from boatcompany WHERE email=?";
            String query2 = "INSERT INTO boatcompany(email,pass1,bname,address,offno,pass2) VALUES(?,?,?,?,?,?)";

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boatsystem", "root", "");
                ps1 = conn.prepareStatement(query1);
                ps1.setString(1, email1);
                rs = ps1.executeQuery();
                if (rs.next()) {
                    response.sendRedirect("RegisterError1.html");
                } else {
                    if (pass1.equals(pass2)) {
                        ps2 = conn.prepareStatement(query2);;
                        ps2.setString(1, email1);
                        ps2.setString(2, pass1);
                        ps2.setString(3, bname1);
                        ps2.setString(4, address1);
                        ps2.setLong(5, offno2);
                        ps2.setString(6, pass2);
                        int i = ps2.executeUpdate();
                        response.sendRedirect("Login.html");
                    } else {
                        response.sendRedirect("RegisterError2.html");
                    }
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
