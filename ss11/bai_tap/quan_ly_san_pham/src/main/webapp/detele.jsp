<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 7/31/2023
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products?action=detele" method="post">
    <h2>Nhập Mã Sản Phẩm Mà Bạn Muốn Xóa</h2>
    Nhập ID Sản Phẩm Mà Bạn Muốn Xóa:<input type="text" name="id"><br><br>
    <button type="submit" value="sumit">Detele</button>
</form>
</body>
</html>
