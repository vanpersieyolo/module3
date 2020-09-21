<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/20/2020
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<head>
    <title>Create</title>
</head>
<body>

<form method="post">
    <fieldset>
        <legend>Create</legend>
        Nhập tên sp: <input type="text" name="name"><br>
        Nhập id sp: <input type="text" name="id"><br>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </fieldset>
</form>
<div class="container-fuild">
    <a href="/product">Trở về</a>
</div>
</body>
</html>
