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
    <div class=" mt-2 alert alert-danger ${ error==null?"d-none":""}" role="alert">
<%--        Incorrect Username or Password--%>
        ${error}
    </div>
    <form action="login" method="post">
        <div class="text-center logged_out_form">
            <img src="https://alx-intranet.hbtn.io/assets/holberton-logo-full-alx-d053727941512ebe04b797ca87d81a195004e9ff2d8a6aedf4004c5365cf8944.png"
                 alt="" width="80" height="80">
            <div class="mb-3">
                <label for="email">Email</label>
                <input type="text" class="form-control" name="email" id="email" autocomplete="off">
            </div>
            <div class="mb-3">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" id="password">
            </div>
            <div class="mb-3">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="rememberme">
                    <label class="form-check-label" for="inlineCheckbox">Remember
                        me</label>
                </div>
            </div>
            <div class="mb-3">
                <input type="submit" class="btn btn-danger" value="Login">
            </div>
            <a href="CreateAccount.jsp" class="text-danger">sign up instead?</a>
        </div>
    </form>
</div>
<!--<-->
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

