<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
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
                <li class="nav-item"><a class="nav-link" href="/compose">Compose</a></li>
                <li class="nav-item"><a class="nav-link active" href="/sent">Sent</a></li>
                <li class="nav-item"><a class="nav-link" href="/trash">Trash</a></li>
            </ul>
        </div>
    </nav>
    <!-- .navbar -->

</header>
<!-- End Header -->

<section id="section" class="mt-2">
    <div class="col-md-8 offset-md-2">
        <ul class="list-group">
            <c:forEach items="${messageList}" var="item">
                <li class="list-group-item"><c:out value="${item.subject}"/>
                    <button class="btn btn-sm offset-9"><i class="bi bi-trash"></i></button>
                </li>
            </c:forEach>
        </ul>
    </div>
</section>
<%--<table>--%>
<%--<c:forEach items="${messageList}" var="item">--%>
<%--    <tr>--%>
<%--    <td><c:out value="${item.subject}"/></td>--%>
<%--    </tr>--%>

<%--    </table>--%>
    </div>
    </body>
    </html>
