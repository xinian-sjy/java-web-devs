<%@ page import="com.web.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2019/10/4
  Time: 上午 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>顶部</title>

</head>
<body>
<!-- 顶部导航 -->
<header>
    <div>
        <ul class="nav">
            <li>
                <a href="#">首页</a>
            </li>
            <li>
                <a href="#">小说</a>
            </li>
            <li>
                <a href="#">图片</a>
            </li>
            <li>
                <a href="#">漫画</a>
            </li>
            <li>
                <a href="#">音乐</a>
            </li>
            <li>
                <a href="#"></a>
            </li>
        </ul>
    </div>
    <div >
        <%--        <img src="http://img.jf258.com/uploads/2014-09-07/091335483.jpg" class="avatar" />--%>
        <%--        <a href="/login.html" style="text-decoration: none">--%>
        <%--            <h5>登录</h5>--%>
        <%--        </a>--%>
        <ul>
            <%
                User user = (User) session.getAttribute("user");
                pageContext.setAttribute("user", user);
            %>
<%--            <% if(user != null){--%>
<%--            %>--%>
<%--            <li style="margin-right: 5px">--%>
<%--                <a href="person.jsp">--%>
<%--                    <img src="images/${user.avatar}" alt="" style="width: 40px;height: 40px;border-radius: 50%">--%>
<%--                </a>--%>
<%--            </li>--%>
<%--            <li style="margin-right: 30px;padding-top: 10px;font-size: 14px--%>
<%--">--%>
<%--                <a href="logout.jsp">退出</a>--%>
<%--            </li>--%>
<%--            <%--%>
<%--            }else{--%>
<%--            %>--%>
<%--            <a style="font-size: 16px;text-decoration: none;color: #eeeeee;margin-right: 30px" href="${pageContext.request.contextPath}/sign_in.html">去登陆</a>--%>
<%--            <%--%>
<%--                }--%>
            <%
                if(user!=null){
//                    System.out.println(user);
            %>
            <li style="margin-right: 5px">
                <a href="User.jsp">
                    <img src="images/${user.photo}" alt="" style="width: 30px;height: 30px;border-radius: 50%">
<%--                      <img src="images/1.jpg" alt="" style="width: 40px;height: 40px;border-radius: 50%">--%>
                </a>
            </li>
            <li style="margin-right: 35px;padding-top: 10px;font-size: 15px">
                <a href="logout.jsp" style="text-decoration: none">退出</a>
            </li>
            <%
            }else{
            %>
            <img src="http://img.jf258.com/uploads/2014-09-07/091335483.jpg" class="avatar">
            <a href="${pageContext.request.contextPath}/login.html" style="text-decoration: none">去登录</a>
            <%
                }
            %>


        </ul>
    </div>
</header>
</body>
</html>
