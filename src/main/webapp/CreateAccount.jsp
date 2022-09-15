<%@ page import="org.springframework.web.servlet.ModelAndView" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    <link type="text/css" rel="stylesheet" href="css.css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="container">
    <div class="mt-5">
        <div class="alert alert-danger">
            ${hello}
        </div>
    </div>
    <div class="text-center">
        <h1 class="display-4">Create ALX Account</h1>
    </div>
    <div class="form-style">
        <form action="register" method="post">
            <div class="row">
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label for="fname">First Name<span>*</span></label>
                        <input type="text" name="firstName" class="form-control" id="fname" autocomplete="off">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label for="midname">Middle Name<span>*</span></label>
                        <input type="text" name="middleName" id="midname" class="form-control" autocomplete="off">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label for="lastname">Last Name<span>*</span></label>
                        <input type="text" name="lastName" id="lastname" class="form-control" autocomplete="off">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label for="email">Email<span>*</span></label>
                        <div class="input-group">
                            <input type="text" name="email" id="email" class="form-control" autocomplete="off" placeholder="username">
                            <div class="input-group-append">
                                <span class="input-group-text">@alx.com</span>
                            </div>
                        </div>
                    </div>
                </div>
<!--                <div class="col-sm-4"></div>-->
                <div class="col-sm-4">
                    <label for="gender">Gender<span>*</span></label>
                    <br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="maleGender"
                               value="male" checked>
                        <label class="form-check-label" for="maleGender">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                               value="female">
                        <label class="form-check-label" for="femaleGender">Female</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label for="password">Password<span>*</span></label>
                        <input type="password" name="password" id="password"
                               class="form-control" autocomplete="off">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label for="confirmPassword">Confirm Password<span>*</span></label>
                        <input type="password" name="confirmPassword" id="confirmPassword"
                               class="form-control">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label for="bdate">Birth Date<span>*</span></label>
                        <input type="date" name="dateOfBirth" class="form-control" id="bdate">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label>Country<span>*</span></label>
                        <select name="country" class="form-control">
                            <option value="Ethiopia">Ethiopia</option>
                            <option value="Eritrea">Eritrea</option>
                            <option value="Sudan">Sudan</option>
                            <option value="Kenya">Kenya</option>
                            <option value="Djibouti">Djibouti</option>
                            <option value="Tanzania">Tanzania</option>
                            <option value="Somalia">Somalia</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <div class="mb-3">
                    <input type="submit" class="btn btn-danger btn-lg">
                </div>
                <div class="mb-3">
                    <a href="login.jsp" class="text-danger">sign in instead?</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

