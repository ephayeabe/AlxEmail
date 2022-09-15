<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Sailor Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

  <!-- Vendor CSS Files -->
  <!--    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">-->
  <link href="bootstrap-4.0.0.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <!--    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">-->
  <!--    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">-->
  <!--    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">-->
  <!--    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">-->
  <link type="text/css" rel="stylesheet" href="css.css"/>

  <!-- Template Main CSS File -->
  <!--    <link href="assets/css/style.css" rel="stylesheet">-->

  <!-- =======================================================
  * Template Name: Sailor - v4.8.0
  * Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
          <li class="nav-item"><a class="nav-link " href="/compose">Compose</a></li>
          <li class="nav-item"><a class="nav-link" href="/sent">Sent</a></li>
          <li class="nav-item"><a class="nav-link active" href="/draft">Trash</a></li>
        </ul>
      </div>
    </nav><!-- .navbar -->

  </header>
  <!-- End Header -->
  <section id="section" class="mt-2">
    <div class="col-md-8 offset-md-2">
      <ul class="list-group">
        <c:forEach items="${messageList}" var="item">
          <li class="list-group-item"><c:out value="${item.subject}"/>
          </li>
        </c:forEach>
      </ul>
    </div>
  </section>
</div>
</body>
</html>
