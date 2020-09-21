<%--
  Created by IntelliJ IDEA.
  User: DANG ANH VAN
  Date: 9/21/2020
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html>
<head>
    <title>View Edit</title>
</head>
<body>
    <div class="container-fuild">
        <form action="/product?action=edit"method="post">
            <input type="text" name="id">
            <input type="text" name="name">
            <input type="text" name="description">
            <button type="submit" class="btn btn-dark">Thay đổi</button>
        </form>
    </div>
    <a href="/product">Trở về</a>
</body>
</html>
