<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <style type="text/css">
    .login{
      height: 180px;
      margin: 0;
      padding: 10px;
      border: 1px #CCC solid;
    }
    .login input{
      padding: 5px;
      margin: 5px;
    }
  </style>
</head>
<body>
<from method="doPost" action="/login">
  <h1>Login</h1>
  <div class="login">
    <input type="text" size="30px" name="username" placeholder="username">
    <input type="password" name="password" size="30" placeholder="password">
    <input type="submit" value="Sign in">
  </div>
</from>
</body>
</html>