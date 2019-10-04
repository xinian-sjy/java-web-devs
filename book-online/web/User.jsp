<%@ page import="com.web.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2019/10/4
  Time: 上午 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
<%--<%--%>
<%--    User user=(User) session.getAttribute("user");--%>
<%--    pageContext.setAttribute("user",user);--%>
<%--%>--%>
<%--<div id="top">--%>
<%--    <jsp:include page="Top.jsp"/>--%>
<%--</div>--%>
<%--
  Created by IntelliJ IDEA.
  User: wfzs
  Date: 2019/10/4
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人主页</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        .top{
            display: flex;
            justify-content: space-between;
            background-color: rgb(78,42,64);
            width: 100%;
            height: 60px;
            align-items: center;
        }
        .top ul{
            display: flex;
            list-style: none;
            padding-left: 30px;
            padding-right: 10px;
        }
        .top ul li{
            margin-right: 20px;
            flex: 0 0 60px;
        }
        .top ul li a{
            text-decoration: none;
            color: white;
        }
        .search-wrap{
            display: flex;
            width: 100%;
            height: 80px;
            padding-left: 5%;
            background-color: rgb(163,92,143);
            /*文本垂直居中*/
            line-height: 80px;
            justify-content: space-between;
        }
        .search-wrap ul{
            display: flex;
            flex: 0 0 45%;
            list-style: none;
        }
        .search-wrap ul li{
            flex: 0 0 80px;
            text-align: left;
            margin-right: 10px;
        }
        .search-wrap ul li a{
            text-decoration: none;
            font-size: 16px;
            color: #eee;
        }
        .container{
            width: 90%;
            height: 100%;
            display: flex;
            margin-right: 5%;
            margin-left: 5%;
            border: 1px solid #aaaaaa;
        }
        .left{
            flex: 0 0 60%;
            border: 1px solid #9b9b9b;
            padding-top: 10px;
        }
        .right{
            flex: 0 0 40%;
            border: 1px solid #9b9b9b;
        }
        .avatar{
            width: 80px;
            height: 80px;

        }
        .title{
            margin-top: 40px;
            font-size: 18px;
            color: #20a162;
        }
        .text{
            margin-top:5px;
            font-size: 14px
        }
        .date-div{
            background-color: #baccd9;
            width: 400px;
            height: 250px;
        }
        .date-avatar{
            width: 160px;
            height: 160px;
            margin-top: 5px;
            margin-left: 5px;
        }
    </style>
</head>
<body>
<div class="top">
    <jsp:include page="Top.jsp"/>
</div>
<div class="search-wrap">
    <ul style="text-align: left">
        <li><a href="#">首页</a></li>
        <li><a href="#">浏览发现</a></li>
        <li><a href="#">话题广场</a></li>
        <li><a href="#">我的豆瓣</a></li>
    </ul>
    <ul style="direction: rtl;text-align: right">
        <li><input style="margin-right: 70px;text-align: left" type="text" placeholder="搜索你感兴趣的人和内容"></li>
    </ul>
</div>
<div class="container">
    <div class="left">
        <span><img src="images/3.jpg" class="avatar" alt=""></span>
        <p style="margin-left: 91px;
            font-family: 楷体;
            font-size: 24px;
            margin-top: -75px;">坚持到底</p>
        <p style="margin-top: 80px;font-size: 18px;color: #20a162">我的日记</p>
        <p class="text">记录自己的生活</p>
        <p class="title">我的相册</p>
        <p class="text">可以记录</p>
        <p class="title">想读的书</p>
        <p class="text">我想读</p>
    </div>
    <div class="right">
        <div class="date-div">
            <span><img  class="date-avatar" src="images/3.jpg" alt=""></span>
            <p style="margin-left: 170px;font-size:14px;margin-top: -150px"> 常居住地:</p>
            <p style="margin-left: 170px;font-size: 14px;margin-top: 20px"> 账户帐号:</p>
            <p style="margin-left: 170px;font-size: 14px;margin-top: 20px">注册日期:</p>
            <hr style="margin-top: 90px">
            <p style="margin-top: 10px;margin-left: 5px;font-size: 14px">坚持到底</p>
        </div>
        <p style="font-size: 18px;color: #20a162;margin-top: 10px">我的广播······(全部)</p>

        <p style="font-size: 14px;margin-top: 20px">
            <a href="#" style="text-decoration: none;color: #1e9eb3">坚持到底</a>
            想读
            <a href="#" style="text-decoration: none;color: #1e9eb3">疑血</a>
        </p>
        <p style="color: #aaaaaa;margin-top: 10px;font-size: 12px">2019年10月4日</p>

        <hr style="margin-top: 5px;width: 400px">

        <p style="font-size: 14px;margin-top: 10px">
            <a href="#" style="text-decoration: none;color: #1e9eb3">坚持到底</a>
            想读
            <a href="#" style="text-decoration: none;color: #1e9eb3">日不落帝国</a>
        </p>
        <p style="color: #aaaaaa;margin-top: 10px;font-size: 12px">2019年10月5日</p>

        <hr style="margin-top: 5px;width: 400px">

        <p style="font-size: 14px;margin-top: 10px">
            <a href="#" style="text-decoration: none;color: #1e9eb3">坚持到底</a>
            想读
            <a href="#" style="text-decoration: none;color: #1e9eb3">不下雪的北上广</a>
        </p>
        <p style="color: #aaaaaa;margin-top: 10px;font-size: 12px">2019年10月5日</p>


    </div>
</div>
</body>
</html>

</body>
</html>
