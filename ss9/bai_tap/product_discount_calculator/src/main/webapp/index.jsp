<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<form action="/display-discount" method="post">
    <h4>Product Description:</h4><br>
    <input type="text" name="description"><br><br>
    <h4>List Price:</h4><br>
    <input type="text" name="price"><br><br>
    <h4>Discount Percent:</h4><br>
    <input type="text" name="percent"><br><br>
    <input type="submit" id="submit">
</form>
</body>
</html>