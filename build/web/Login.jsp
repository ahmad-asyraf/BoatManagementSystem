<%-- 
    Document   : Login
    Created on : Dec 3, 2022, 1:26:16 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%@ page import="javax.sql.*" %>
	<%
		String email=request.getParameter("email");
		String pass1=request.getParameter("password");

		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("currentuser", email);

		ResultSet rs=null;
		Connection conn=null;
		PreparedStatement ps=null;

		String query1="SELECT email,pass1 FROM customer WHERE email=? UNION ALL SELECT email,pass1 FROM boatcompany";
               
                
		try{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/boatsystem","root","");
		if(email==email){
                  
			ps=conn.prepareStatement(query1);
			ps.setString(1,email);
                  
		}
		rs=ps.executeQuery();
		if(rs.next())
		{
			if((rs.getString(2)).equals(pass1))
			{
                            response.sendRedirect("Boat.jsp");
			}
			else
			{
			response.sendRedirect("LoginError1.html");
			}
		}
		else
			response.sendRedirect("LoginError2.html");
	}
	catch(Exception e){ 
		out.println(e);
	}
%>         
</body>
</html>
