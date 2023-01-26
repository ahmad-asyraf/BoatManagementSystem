<%-- 
    Document   : Boat
    Created on : Dec 10, 2022, 10:29:15 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Boat Management System</title>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            body {
                background-image: url("images/Sea.png");
                background-size: cover;
                background-attachment: fixed;
                font-family: 'Poppins', sans-serif;
            }

            .filler{
                width:100%;
            }

            h2{
                text-align: center;
                margin-top: 1px;
            }

            .product-list .card {
                background: rgba(255,250,250,0.85);
                border-radius: 10px;
                padding: 1em;
                border-style: outset;
                /*text-align: center;*/
                font-family: "Poppins";
            }

            .card img {
                max-height: 220px;
                border-radius: 5px;
            }

            .buy-button {
                color: #fff;
                background: #313A5E;
                padding: 10px;
                border-radius: 5px;
                cursor: pointer;
                /*width: 25%;*/
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

            .form-popup {
                display: none;
                position: fixed;
                top: 10px;
                right: 30%;
                border: 3px solid #f1f1f1;
                z-index: 9;
            }

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

            .company-name {
                font-size: 16px;
                font-weight: bolder;
                letter-spacing: 1px;
                text-align: center;
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
                            <a class="nav-link" href="Boat.jsp">Boat</a>
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
        <div class="container mt-5">
            <div class="row gap-3 align-items-center">
                <div class="col-auto col-md mx-auto card">
                    <img src="images/SejahteraFerry.jpg" class="card-img-top mt-3 mt-3" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Sejahtera Ferry</h5>
                        <p class="card-text">Sejahtera Ferry Service Sdn. Bhd.</p>
                        <p class="card-text">Destination: Redang Island</p>
                        <p class="card-tex fw-bolder">Price:</p>
                        <p class="card-text">RM5.00 - Adult</p>
                        <p class="card-text">RM2.00 - Child(6-12years)</p>
                    </div>
                    <div class="row card-body">
                        <button type="button" class="buy-button col-md-12" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                            Book Now
                        </button>
                    </div>
                </div>
                <div class="col-auto col-md mx-auto card">
                    <img src="images/MerangJetty1.jpg" class="card-img-top mt-3" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Merang Jetty</h5>
                        <p class="card-text">Vigourmarine Transtour Sdn. Bhd.</p>
                        <p class="card-text">Destination: Redang Island</p>
                        <p class="card-tex fw-bolder">Price:</p>
                        <p class="card-text">RM55.00 - Adult</p>
                        <p class="card-text">RM35.00 - Child(6-12years)</p>
                    </div>
                    <div class="row card-body">
                        <button type="button" class="buy-button col-md-12" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                            Book Now
                        </button>
                    </div>
                </div>
                <div class="col-auto col-md mx-auto card">
                    <img src="images/MerangJetty.jpg" class="card-img-top mt-3" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Merang Jetty</h5>
                        <p class="card-text">Vigourmarine Transtour Sdn. Bhd.</p>
                        <p class="card-text">Destination: Lang Tengah Island</p>
                        <p class="card-tex fw-bolder">Price:</p>
                        <p class="card-text">RM50.00 - Adult</p>
                        <p class="card-text">RM40.00 - Child(6-12years)</p>
                    </div>
                    <div class="row card-body">
                        <button type="button" class="buy-button col-md-12" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                            Book Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <section class="product-list mt-3 p-5">
            <div class="product-container">
                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Enter Details</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form action="" method="POST">
                                <div class="modal-body">
                                    <input type="text" name="fname" class="form-control" placeholder="Enter First Name" required>
                                    <input type="text" name="lname" class="form-control mt-3" placeholder="Enter Last Name">
                                    <input type="text" name="phno" class="form-control mt-3" placeholder="Enter Phone Number" onkeypress="return event.charCode >= 48 && event.charCode <= 57" required>
                                    <input type="text" name="address" class="form-control mt-3" placeholder="Enter Address" required>
                                    <input type="email" name="email" class="form-control mt-3" placeholder="Enter Email" required>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
        </script>
    </body>
</html>