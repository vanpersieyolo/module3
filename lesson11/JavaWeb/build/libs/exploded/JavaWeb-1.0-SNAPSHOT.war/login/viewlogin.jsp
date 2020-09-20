<%--
  Created by IntelliJ IDEA.
  User: DANG ANH VAN
  Date: 9/19/2020
  Time: 12:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html>
<head>
    <title>Trang chủ</title>
</head>
<body>
    <div class="cotainer">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Brand-Logo</a>
            <button class="navbar-toggler" type="button"
                    data-toggle="collapse" data-target="#my-nav-bar"
                    aria-controls="my-nav-bar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="my-nav-bar">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <form  method="post">
        <div class="container">
            <div class="form-group">
                <h3>Login </h3>
                <label for="account">Account </label>
                <input type="text" class="form-control" id="account" name="account">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="text" class="form-control" id="password" name="password">
            </div>
            <button type="submit" class="btn btn-outline-dark" >Sign in</button>
        </div>

    </form>
</body>
</html>
