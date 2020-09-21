<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/20/2020
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html>
<head>
    <title>List Product</title>
</head>
<body>
<h1> Danh sách sản phẩm</h1>
<form method="post" action="/product?action=search">
    <table>
        <tr>
            <td><input class="form-control" type="text" placeholder="Search" aria-label="Search" name="search"></td>
            <td><button type="submit" class="btn btn-dark">Tìm kiếm sả phẩm</button></td>
            <td><a href="/product?action=create"  class="btn btn-dark">Tạo mới 1 sản phẩm</a></td>
        </tr>
    </table>
</form>
<div class="container-fluid">
    <table id="mytable" class="table table-bordred table-striped" style="text-align: center; border: black solid 1px" >
        <tr>
            <th>ID sản phẩm</th>
            <th>Name</th>
            <th>Sửa</th>
            <th>Xóa</th>
        </tr>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <form action="View/product?action=edit"></form>
                    <td>${product.getIdProduct()}</td>
                    <td><p>${product.getNameProduct()}</p></td>
                    <td><a href="/product?action=edit&id=${product.getIdProduct()}" class="btn btn-primary">Edit</a></td>
                <td><a href="/product?action=remove&id=${product.getIdProduct()}" class="btn btn-danger">Remove</a></td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>
