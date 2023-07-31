<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 7/31/2023
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<form action="/products?action=create" method="post">
    Nhập ID Sản Phẩm: <input type="text" name="id"><br><br>
    Nhập Tên Sản Phẩm: <input type="text" name="tenSanPham"><br><br>
    Nhập Giá Sản Phẩm: <input type="text" name="gia"><br><br>
    Nhập Mô Tả Sản Phẩm: <input type="text" name="moTaSanPham"><br><br>
    Nhập Nhà Sản Xuất: <input type="text" name="nhaSanXuat"><br><br>
    <button type="submit" value="sumit">Thêm Mới Sản Phẩm</button>
    </form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
