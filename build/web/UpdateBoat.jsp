<%-- 
    Document   : UpdateInventory
    Created on : Jun 15, 2022, 9:09:28 PM
    Author     : izzue
--%>

<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page import="com.Utils.DBConnect"%>
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
                            <a class="nav-link" href="ViewBoat.jsp">Boat List</a>
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
        <div class="container-fluid mt-3 p-3">
            <div class="row gap-3">
                <%
                    DBConnect con = new DBConnect();

                    Statement stmt = con.getConnection().createStatement();
                    String sql = "SELECT * FROM boat";
                    ResultSet rs = stmt.executeQuery(sql);

                    while (rs.next()) {
                %>
                <div class="col-md-2 card mt-3 text-capitalize mx-auto">
                    <form action="UpdateBoat1.jsp" method="POST">
                        <img src="images/MerangJetty.jpg" class="card-img-top mt-3" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%=rs.getString("boatID")%></h5>
                            <p class="card-text"><b>Boat Name:</b><br> <%=rs.getString("boatID")%></p>
                            <p class="card-text"><b>Boat Company:</b><br> <%=rs.getString("companyID")%></p>
                            <p class="card-text"><b>Pick Up Location:</b><br> <%=rs.getString("pickupLoc")%></p>
                            <p class="card-text"><b>Drop Off Location:</b><br> <%=rs.getString("dropoffLoc")%></p>
                            <p class="card-text"><input type="text" class="col-md-6 form-control" name="pickupLoc" placeholder="Pickup location" required></p>
                            <p class="card-text"><input type="text" class="col-md-6 form-control" name="dropoffLoc" placeholder="Dropoff location" required></p>
                        </div>
                        <div class="row card-body">
                            <div class="col text-center">
                                <input type="hidden" name="boatID" value="<%=rs.getString("boatID")%>">
                                <button type="submit" class="btn btn-primary col-md-6">Update</button>
                            </div>
                        </div>
                    </form>
                </div>
                <%
                    }
                    con.closeConnection();
                %>
            </div>

        </div>
    </body>
</html>
