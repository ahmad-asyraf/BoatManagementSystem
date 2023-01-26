<%-- 
    Document   : ViewBoat
    Created on : Jan 25, 2023, 2:33:22 PM
    Author     : Asus
--%>

<%@ page import="java.sql.*" %>
<%@page import="com.Utils.DBConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Boat Management System</title>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            body {
                font-family: 'Poppins', sans-serif;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Boat Management System</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ProfilePage.html">Boat</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="ViewBoat.jsp">Boat List</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Dropdown
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container-fluid mt-3 p-4">
            <div class="row gap-3">
                <%
                    ResultSet rs = null;
                    PreparedStatement ps = null;

                    DBConnect con = new DBConnect();
                    String query = "SELECT b.boatID, b.companyID, b.pickupLoc, b.dropoffLoc FROM boat b ORDER BY b.companyID ASC";
                    ps = con.getConnection().prepareStatement(query);
                    rs = ps.executeQuery();

                    while (rs.next()) {
                %>
                <div class="col-auto col-md-2 card mt-3 text-capitalize mx-auto">
                    <img src="images/MerangJetty.jpg" class="card-img-top mt-3" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%=rs.getString("boatID")%></h5>
                        <p class="card-text"><b>Boat Name:</b><br> <%=rs.getString("boatID")%></p>
                        <p class="card-text"><b>Boat Company:</b><br> <%=rs.getString("companyID")%></p>
                        <p class="card-text"><b>Pick Up Location:</b><br> <%=rs.getString("pickupLoc")%></p>
                        <p class="card-text"><b>Drop Off Location:</b><br> <%=rs.getString("dropoffLoc")%></p>
                    </div>
                    <div class="row card-body">
                        <div class="col text-center">
                            <a href="UpdateBoat.jsp?id=<%=rs.getString("boatID")%>" class="btn btn-primary col-12">Update</a>
                        </div>
                        <div class="col text-center">
                            <a href="FirstPage.html?id=<%=rs.getString("boatID")%>" class="btn btn-danger col-12">Delete</a>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </body>
</html>
