<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DANG ANH VAN
  Date: 9/21/2020
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h1 style="text-align: center">Danh sách sản phẩm</h1>
<div class="container">
    <form action="/product?action=search" method="post">
        <tr>
            <th><input class="form-control" type="text" placeholder="Nhập vào ID sản phẩm" aria-label="Search"
                       name="search"></th>
            <th>
                <button type="submit" class="btn btn-dark">Tìm kiếm sản phẩm</button>
            </th>
        </tr>
    </form>
</div>
<div class="container-fuild">
    <form >
        <a href="/product?action=create" class="btn btn-dark">Thêm mới 1 sản phẩm</a>
    </form>
</div>
<table id="mytable" class="table table-bordred table-striped" style="text-align: center; border: black solid 1px">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <td>edit</td>
        <td>remove</td>
    </tr>
    <c:forEach items='${requestScope["product"]}' var="product">
        <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getDescription()}</td>
            <td><a href="/product?action=edit&id=${product.getId()}"class="btn btn-dark">edit</a></td>
            <td><a href="/product?action=remove&id=${product.getId()}"class="btn btn-danger">remove</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
