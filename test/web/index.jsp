
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.web.Book" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2019/9/24
  Time: 下午 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <style type="text/css">
        @font-face {
            font-family: 'iconfont';  /* project id 1437512 */
            src: url('//at.alicdn.com/t/font_1437512_21vvze02jm8.eot');
            src: url('//at.alicdn.com/t/font_1437512_21vvze02jm8.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1437512_21vvze02jm8.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1437512_21vvze02jm8.woff') format('woff'),
            url('//at.alicdn.com/t/font_1437512_21vvze02jm8.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1437512_21vvze02jm8.svg#iconfont') format('svg');
        }
        .iconfont{
            font-family:"iconfont" !important;
            font-size:30px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;}
        .box{
            flex:0 0 20% ;
            height: 280px;
            margin: 5px 5px 5px 5px;
            background-color: #ffffff;
        }
        .box img{
            width: 90%;
            height: 70%;

        }
        *{
            margin: 0;
            padding: 0;
        }
        body{
            color: #333;
        }
        header{
            height: 60px;
            background-color: rgb(229, 115, 115);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-left: 10px;
            padding-right: 10px;
        }
        .nav{
            flex: 0 0 50%;
            list-style: none;
            display: flex;
        }
        .nav li{
            margin-left: 10px;
            margin-right: 10px;
            width: 50px;
        }
        /* 超链接样式 */
        .nav li a{
            text-decoration: none;
            color: #eee;
        }
        .nav li a:hover{
            color: #fff;
        }
        .search-wrap{
            height: 60px;
            background-color: #ddd;
            display: flex;
            align-items: center;
            padding-left: 10%;
            margin-bottom: 10px;

        }
        .input-box{
            width: 350px;
            height: 35px;
            border: 1px solid #eee;
            border-radius: 5px;
            margin-left: 10px;
        }
        footer{
            height: 100px;
            background-color: #aaa;
            align-items: center;
            display: flex;
            justify-content: center;
        }
        .avatar{
            width: 30px;
            height: 30px;
            border-radius: 50%;
            margin-right: 50px;
        }
        .container{
            width: 85%;
            margin: 0 auto;
            /* height: 600px; */
            /* background-color: #eee; */
            display: flex;
            padding: 5px 5px 5px 5px;
        }
        .left{
            flex: 0 0 60%;
            background-color: #fff;
            padding: 10px 10px 10px 10px;
        }
        .row{
            display: flex;
            /* 自动换行 */
            flex-wrap: wrap;
            padding: 5px 5px 5px 5px;
        }
        .colum{
            flex: 0 0 18%;
            height: 220px;
            /*background-color: #FFFFFF;*/
            /*border: 1px solid #333333;*/
            border-radius: 10px;
            margin: 5px 5px 5px 5px;
            text-align: center;
            padding: 2px 2px 2px 2px;
        }
        .colum img{
            border-top-left-radius:5px;
            border-top-right-radius:5px;
            width:90%;
            height:70%;
        }
        .right{
            flex: 0 0 35%;
            margin-left: 15px;
            height: 100%;
            background-color: #FFFFFF;
            padding: 10px 10px 10px 10px;
        }
    </style>
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
        <img src="http://img.jf258.com/uploads/2014-09-07/091335483.jpg" class="avatar" />
        <a href="register.html" style="text-decoration: none">
            <h5>登录</h5>
        </a>
    </div>
</header>


<!-- 搜索区 -->
<div class="search-wrap">
    <h2>读书时刻</h2>
    <input type="text" placeholder="输入要搜索的内容" class="input-box" >
    <!-- <input type="button" value="&#xe60c;" /> -->
    <i class="iconfont" style="color: white">&#xe6a1;</i>
</div>
<%--一共${size}本书--%>
<div class="container">
    <div class="left">
        <h3>好书精选</h3>
        <hr>
        <div class="row">
            <%
                List<Book> bookList = (List<Book>) request.getAttribute("bookList");
                for (Book book: bookList){
                    pageContext.setAttribute("book",book);
            %>
            <div class="colum">
                <img src="images/${book.cover}" >
                <p>${book.name}</p>
                <p>${book.author}</p>
            </div>
                <%
                    }
                %>
        </div>
    </div>



</div>

<!-- 脚注 -->
<footer>
    <ul>
        <li>联系我们</li>
        <li>帮助中心</li>
        <li>法律声明</li>
        <li>移动合作</li>
    </ul>
</footer>
</body>
</html>

