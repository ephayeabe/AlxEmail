<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="bootstrap-4.0.0.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css.css"/>
</head>

<body>

<div class="container">

    <!-- ======= Header ======= -->
    <header>
        <nav class="navbar navbar-expand-sm  bg-light navbar-light">
            <a class="navbar-brand" href="#">
                <img src="assets/img/alx-logo.png" class="img-fluid" width="40" height="40">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collpase" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ">
                    <li class="nav-item"><a class="nav-link" href="/inbox">Inbox</a></li>
                    <li class="nav-item"><a class="nav-link active" href="/compose">Compose</a></li>
                    <li class="nav-item"><a class="nav-link" href="/sent">Sent</a></li>
                    <li class="nav-item"><a class="nav-link" href="/trash">Trash</a></li>
                </ul>
            </div>
        </nav><!-- .navbar -->

    </header>
    <!-- End Header -->
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <section class="mt-5">
                    <form action="send" method="post">
                        <div class="mb-3">
                            <label for="receiverEmail">To</label>
                            <input type="text" class="form-control" name="receiverEmail" id="receiverEmail">
                        </div>
                        <div class="mb-3">
                            <label for="subject">Subject</label>
                            <input type="text" class="form-control" name="subject" id="subject" autocomplete="off">
                        </div>
                        <div class="mb-3">
                            <label for="message">Message</label>
                            <textarea name="message" class="form-control" id="message"></textarea>
                        </div>
                        <div class="mb-3">
                            <input type="submit" class="btn btn-danger btn-lg" value="send">
                        </div>
                    </form>
                </section>
            </div>


            <%

                String user = (String) session.getAttribute("user");
                if (user != null) {
                    out.print(user);
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
