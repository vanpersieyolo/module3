<%--
  Created by IntelliJ IDEA.
  User: DANG ANH VAN
  Date: 9/21/2020
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html>
<head>
    <title>Create</title>
</head>
<body>
<div class="container-fuild">
    <form action="/product?action=create" method="post">
        <input type="text" name="id" placeholder="nhập vào id">
        <input type="text" name="name" placeholder="nhập vào loại xe">
        <input type="text" name="description" placeholder="nhập vào mô tả">
        <button type="submit" class="btn btn-dark">Thêm sản phẩm</button>
    </form>
</div>
<div>
    <a href="/product">Trở về</a>
</div>
</body>
</html>
