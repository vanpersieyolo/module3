<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Currency" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/18/2020
  Time: 1:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <table class="table table-hover table-bordered" border="1">
        <thead>
            <th>Tên</th>
            <th>Năm sinh</th>
            <th>Địa chỉ</th>
        </thead>
    <tbody>
    <c:forEach var="mem" items="${list}" varStatus="loop">
        <tr>
            <td>${loop.index+1}</td>
            <td>${mem.fistName}</td>
            <td>${mem.birthOfDay}</td>
            <td>${mem.address}</td>
        </tr>
    </c:forEach>
    <form action="/cus" method="get">
        <input type="submit" value="submit">
    </form>
    </tbody>
    </table>    
</body>
</html>
