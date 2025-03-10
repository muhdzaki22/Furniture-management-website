<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">

<head>
    <title>HOMIFY</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="" name="keyword">
    <meta content="" name="description">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="signup.css">
</head>

<body>
    <div class="section">
        <div class="container">
            <div class="row full-height justify-content-center">
                <div class="col-12 text-center align-self-center py-5">
                    <div class="section pb-5 pt-5 pt-sm-2 text-center">
                        <h1><a href="START.html"><span>HoMIFY</span></a></h1>
                        <h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
                        <input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
                        <label for="reg-log"></label>
                        <div class="card-3d-wrap mx-auto">
                            <div class="card-3d-wrapper">
                                <div class="card-front">
                                    <div class="center-wrap">
                                        <div class="section text-center">
                                   <form action="LoginController"  method="post">
                                            <h4 class="mb-4 pb-3">Log In</h4>
                                            <div class="form-group">
                                                <input type="email" class="form-style" placeholder="Email" name="adminEmail">
                                                <i class="input-icon uil uil-at"></i>
                                            </div>
                                            <div class="form-group mt-2">
                                                <input type="password" class="form-style" placeholder="Password" name="adminPassword">
                                                <i class="input-icon uil uil-lock-alt"></i>
                                            
                                            </div>
                                            <input  class="btn mt-4" type="submit" value="Login"></input>
                                            </form>
                                            <p class="mb-0 mt-4 text-center"></p>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="card-back">
                                    <div class="center-wrap">
                                        <div class="section text-center">
                                        <form action="RegisterController"  method="post">
                                           <h4 class="mb-3 pb-3">Sign Up</h4>                                            
                                            <div class="form-group">
                                                <input type="text" class="form-style" placeholder="Full Name" name="adminName">
                                                <i class="input-icon uil uil-user"></i>
                                            </div>
                                            <div class="form-group mt-2">
                                                <input type="tel" class="form-style" placeholder="Phone Number" name="adminPhone">
                                                <i class="input-icon uil uil-phone"></i>
                                            </div>
                                            <div class="form-group mt-2">
                                                <input type="email" class="form-style" placeholder="Email" name="adminEmail">
                                                <i class="input-icon uil uil-at"></i>
                                            </div>
                                            <div class="form-group mt-2">

<input type="password" class="form-style" placeholder="Password" name="adminPassword">
                                                <i class="input-icon uil uil-lock-alt"></i>
                                            </div>
                                             
                                            <input class="btn mt-4" type="submit" value="Register"></input>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
</body>

</html>