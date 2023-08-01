<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 8/1/2023
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products?action=search" method="post">
    Nhập tên sản phẩm mà bạn muốn tìm kiếm:<input type="text" name="name">
    <button type="submit" value="sumit">Search</button>
</form>

</body>
</html>
