<%@ page import="model.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 7/31/2023
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1>Danh Sách Sản Phẩm</h1>
<a href="/products?action=create">Create</a>
<table class="table table-dark table-striped">
  <thead>
  <tr>
    <th>ID</th>
    <th>Tên Sản Phẩm</th>
    <th>Giá Sản Phẩm</th>
    <th>Mô Tả Sản Phẩm</th>
    <th>Nhà Sản Xuất</th>
  </tr>
  </thead>
  <tbody>
  <c:if test="${products == null}">
    <h1>Không Có Sản Phẩm</h1>
  </c:if>
  <c:if test="${products != null}">
    <c:forEach items="${products}" var="product">
      <tr>
        <td>${product.id}</td>
        <td>${product.tenSanPham}</td>
        <td>${product.gia}</td>
        <td>${product.moTaSanPham}</td>
        <td>${product.nhaSanXuat}</td>
      </tr>
    </c:forEach>
  </c:if>

  </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
