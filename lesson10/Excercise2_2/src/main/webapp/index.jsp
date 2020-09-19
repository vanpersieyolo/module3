<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/18/2020
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>Calculator</h1>
<form action="/calculate" method="post">
  <input type="text" placeholder="Nhập số thứ 1" name="stNumber">
  <input type="text" placeholder="nhập số thứ 2" name="ndNumber">
  <input type="submit" value="+" name="calculate" >
  <input type="submit" value="-" name="calculate">
  <input type="submit" value="*" name="calculate">
  <input type="submit" value="/" name="calculate">
</form>
  <p>${ngaongo}</p>
</body>
</html>
