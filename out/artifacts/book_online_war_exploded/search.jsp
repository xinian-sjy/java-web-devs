<%@ page import="com.web.entity.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2019/10/4
  Time: 下午 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        @font-face {
            font-family: 'iconfont';  /* project id 1443370 */
            src: url('//at.alicdn.com/t/font_1443370_45pq0ohe6y4.eot');
            src: url('//at.alicdn.com/t/font_1443370_45pq0ohe6y4.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1443370_45pq0ohe6y4.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1443370_45pq0ohe6y4.woff') format('woff'),
            url('//at.alicdn.com/t/font_1443370_45pq0ohe6y4.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1443370_45pq0ohe6y4.svg#iconfont') format('svg');
        }

        .iconfont{
            font-family:"iconfont" !important;
            font-size:30px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;}
        h2, h3 {
            color: rgb(73, 73, 73);
        }

        #search {
            height: 80px;
            background-color: #ddd;
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }

        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #eee;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }

        .search-btn {
            width: 35px;
            height: 35px;
            background-color: rgb(155, 154, 143);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .search-btn img {
            width: 50%;
            height: 50%;
        }


        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 40%;
        }

        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }

        .col-6 {
            height: 400px;
            padding-right: 10px;
        }

        .col-6 img {
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }

    </style>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");
    pageContext.setAttribute("book", book);
%>
<div id="top">
    <jsp:include page="Top.jsp"/>
</div>
<div id="search">
    <h2>读书时刻</h2>
    <input type="text" placeholder="书名、作者" class="search-input">
    <i class="iconfont" style="color: white"  >&#xe605;</i>
    <button style="border: 0px solid rgb(221, 221, 221)" class="button">
    </button>

</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <div class="row">
                <div class="colum">
                        <img src="images/1.jpg" >
                    <p style="padding-left: 25%">地学家的藏书室</p>
                    <p style="padding-left: 30%">乔恩·法斯曼</p>
                </div>
                <%
                %>

            </div>
        </div>
        <div class="col-4">
            <h3>热门标签</h3>
            <hr>
            <img src="${pageContext.request.contextPath}/images/10.jpg" alt="">
            <img src="${pageContext.request.contextPath}/images/9.jpg" alt="">
            <img src="${pageContext.request.contextPath}/images/8.jpg" alt="">
            <img src="${pageContext.request.contextPath}/images/7.jpg" alt="">
        </div>
    </div>

</div>
</body>
</html>
