<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 7/28/2023
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello","xin chào");
    dic.put("how","thế nào");
    dic.put("book","quyển vở");
    dic.put("computer","máy tính");

    String seach = request.getParameter("seach");
    String result = dic.get(seach);
    if (result != null){
        System.out.println("Word:" + seach);
        System.out.println("Result:" + result);
    }else {
        System.out.println("Not null");
    }
%>
</body>
</html>
