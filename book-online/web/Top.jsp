<%@ page import="com.web.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2019/10/4
  Time: 上午 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--        <ul class="avatar">--%>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>
        <ul>
            <li><a href="${pageContext.request.contextPath}/index">首页</a></li>
            <li><a href="#">小说</a></li>
            <li><a href="#">图片</a></li>
            <li><a href="#">漫画</a></li>
            <li><a href="#">音乐</a></li>
            <li><a href="#"></a></li>
        </ul>
<%--        <ul id="top">--%>
        <ul>

            <%
                if(user!=null){
            %>
            <li style="margin-right: 5px">
                <a href="${pageContext.request.contextPath}/User.jsp">
                    <img src="${pageContext.request.contextPath}/images/${user.photo}" alt="" style="width: 30px;height: 30px;border-radius: 50%">
                </a></li>
            <li style="margin-right: 35px;padding-top: 10px;font-size: 15px " >
                <a href="${pageContext.request.contextPath}/logout.jsp" style="text-decoration: none">退出</a></li>
            <%
            }else{
            %>
            <img src="http://img.jf258.com/uploads/2014-09-07/091335483.jpg" class="avatar" style="margin-right: 5px">
            <a href="${pageContext.request.contextPath}/login.html">去登录</a>
            <%
                }
            %>

        </ul>
