<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <style>
  </style>
</head>
<body>
<h1 style="padding-left: 200px">Danh Sách Khách Hàng</h1>
  <table border="5px" style="width: 750px" >
    <tr>
      <td><h4>Name</h4></td>
      <td><h4>Data</h4></td>
      <td><h4>Address</h4></td>
      <td><h4>Image</h4></td>
    </tr>
    <c:forEach items = "${clientModelList}" var="Client">
      <tr>
        <td><c:out value="${Client.name}"/></td>
        <td><c:out value="${Client.data}"/></td>
        <td><c:out value="${Client.address}"/></td>
        <td><img src="${Client.image}" alt="picture's Woman" width="70px"></td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>