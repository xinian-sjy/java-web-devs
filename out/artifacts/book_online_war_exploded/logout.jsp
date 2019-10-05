<%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2019/10/4
  Time: 下午 08:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>重定向</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("/index");
%>
</body>
</html>
