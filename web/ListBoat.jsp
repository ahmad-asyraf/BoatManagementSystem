<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Boat Management System</title>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            body{
                background-image: url("images/Sea.png");
                background-size: cover;
                font-family: 'Poppins', sans-serif;
            }
            /* Profile container */
            .profile {
                margin: 20px 0;
            }

            /* Profile sidebar */
            .profile-sidebar {
                padding: 20px 0 20px 0;
                background: #fff;
            }

            .profile-usertitle {
                text-align: center;
                margin-top: 20px;
            }

            .profile-usertitle-name {
                text-transform: uppercase;
                color: black;
                font-size: 12px;
                font-weight: 600;
                margin-top: 15px;
            }

            .profile-userbuttons {
                text-align: center;
                margin-top: 10px;
            }

            .profile-userbuttons .btn {
                text-transform: uppercase;
                font-size: 11px;
                font-weight: 600;
                padding: 6px 15px;
                margin-right: 5px;
            }

            .profile-userbuttons .btn:last-child {
                margin-right: 0px;
            }

            .profile-usermenu {
                margin-top: 30px;
            }

            .profile-usermenu ul li {
                border-bottom: 1px solid #f0f4f7;
            }

            .profile-usermenu ul li:last-child {
                border-bottom: none;
            }

            .profile-usermenu ul li a {
                color: #93a3b5;
                font-size: 14px;
                font-weight: 400;
            }

            .profile-usermenu ul li a i {
                margin-right: 8px;
                font-size: 14px;
            }

            .profile-usermenu ul li a:hover {
                background-color: #fafcfd;
                color: #5b9bd1;
            }

            .profile-usermenu ul li.active {
                border-bottom: none;
            }

            .profile-usermenu ul li.active a {
                color: #5b9bd1;
                background-color: #f6f9fb;
                border-left: 2px solid #5b9bd1;
                margin-left: -2px;
            }

            /* Profile Content */
            .profile-content {
                padding: 20px;
                background: #fff;
                min-height: 460px;
            }
            .buy-button {
                color: #fff;
                background: #313A5E;
                padding: 1em;
                border-radius: 5px;
                cursor: pointer;
                width: 25%;
            }
            .buy-button:hover {
                background: #ABB4D9;
                color: #262626;
            }
            a {
                color: #fff;

                text-decoration: none;
                display: block;
            }
            a:hover{
                color:#262626;
            }

            .product-container {
                display: inline-table;
                table-layout: auto;
                grid-template-columns: 1fr 1fr 1fr;
                grid-column-gap: 10px;
                grid-row-gap: 30px;
            }

            .card .details {
                position: relative;
                top: 50px;
                transition: 2s ease;
                visibility: hidden;
                opacity: 0;
            }

            .card:hover .details {
                opacity: 1;
                visibility: visible;
                top: 0px;
                transition: 2s ease;
            }
            /*            .form-popup {
                            display: none;
                            position: fixed;
                            top: 10px;
                            right: 30%;
                            border: 3px solid #f1f1f1;
                            z-index: 9;
            
                        }*/

            /* Add styles to the form container */
            .form-container {
                max-width: 300px;
                padding: 10px;
                background-color: white;
            }

            /* Full-width input fields */
            .form-container input[type=text], .form-container input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                border: none;
                background: #f1f1f1;
            }

            /* When the inputs get focus, do something */
            .form-container input[type=text]:focus, .form-container input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Set a style for the submit/login button */
            .form-container .btn {
                color: #fff;
                background: #313A5E;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                margin-bottom:10px;

            }

            /* Add a red background color to the cancel button */

            /* Add some hover effects to buttons */
            .form-container .btn:hover{
                background: #ABB4D9;
                color: #262626;
            }
            @keyframes pulse {
                0% {
                    transform: scale (1);
                }

                50% {
                    transform: rotate(45deg) scale(1.3);

                }
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
        <div class="row profile">
            <div class="profile-sidebar">
                <div class="profile-usertitle">
                    <i class="fas fa-user-alt" style="font-size:48px;"></i>
                    <div class="profile-usertitle-name">
                        Developer
                    </div>
                </div>
                <div class="profile-usermenu">
                    <div class="row text-center">
                        <div class="col-2 offset-3">
                            <a href="ProfilePage.html" class="nav-link">About</a>
                        </div>
                        <div class="col-2">
                            <a href="ListBoat.jsp" class="nav-link">Boat</a>
                        </div>
                        <div class="col-2">
                            <a href="Logout.jsp" class="nav-link">Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-md-12">
                <div class="profile-content">
                    <h2 class="h2 text-center mt-3 mb-4"> Register Boat </h2>
                    <!--<button  class="buy-button" onclick="openForm()"> Add Boat </button>-->
                    <div class="form-popup" id="myForm">
                        <form action="AddBoat.jsp" method="post">
                            <div class="col-md-4 mx-auto">
                                <input type="text" name="boatID" class="form-control" placeholder="Enter Boat Name" required>
                            </div>
                            <div class="col-md-4 mt-3 mx-auto">
                                <input type="text" name="companyID" class="form-control" placeholder="Enter Company Name" required>
                            </div>
                            <div class="col-md-4 mt-3 mx-auto">
                                <input type="text" name="price" class="form-control" placeholder="Enter Price" required>
                            </div>
                            <div class="col-md-4 mt-3 mx-auto">
                                <input type="text" name="capacity" class="form-control" placeholder="Enter Boat Capacity" required>
                            </div>
                            <div class="col-md-4 mt-3 mx-auto">
                                <input type="text" name="pickupLoc" class="form-control" placeholder="Enter Pick Up Location" required>
                            </div>
                            <div class="col-md-4 mt-3 mx-auto">
                                <input type="text" name="dropoffLoc" class="form-control" placeholder="Enter Drop Off Location" required>
                            </div>
                            <div class="col-md-4 mt-3 mx-auto">
                                <button type='submit'class="btn btn-primary col-md-12">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div id="myForm"></div>
            </div>
        </div>
        <!--        <script>
                    function openForm() {
                        document.getElementById("myForm").style.display = "block";
                    }
        
                    function closeForm() {
                        document.getElementById("myForm").style.display = "none";
                    }
                </script>-->
    </body>
</html>

