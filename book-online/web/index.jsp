<%@ page import="com.web.student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2019/9/27
  Time: 下午 09:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>学生信息显示</title>t
  <style type="text/css">
    .container {
      width: 80%;
      margin: 0 auto;
      background-color: #9b9b9b;
      padding-top: 10px;
      padding-bottom: 10px;
    }
    .row{
      display: flex;
      flex-wrap: wrap;
      width: 85%;
      align-items: center;
      margin: 5px 5px 5px 5px;
      padding: 5px 5px 5px 5px;
    }
    .item {
      flex: 0 0 49%;
      margin:  auto;
      height: 80px;
      background-color: #eee;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 5px 5px 5px 5px;
    }
    .item span {
      margin-right: 10px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="row">
    <%
      List<student> studentList = (List<student>) request.getAttribute("studentList");
      for (student student : studentList) {
        pageContext.setAttribute("student", student);
    %>
    <div class="item">
      <span>${student.name}</span>
      <span>${student.number}</span>
      <span>${student.grade}</span>
      <span>${student.xueyuan}</span>
    </div>
    <%
      }
    %>
  </div>
</div>
</body>
</html>