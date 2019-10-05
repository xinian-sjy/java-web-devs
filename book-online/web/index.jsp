<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.web.entity.Book" %>
<%@ page import="com.web.entity.SignlnServlet" %>
<%@ page import="com.web.entity.LeftServlet" %><%--
<%--
  Created by IntelliJ IDEA.
  User: new

  Date: 2019/10/2
  Time: 下午 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        @font-face {
            font-family: 'iconfont';  /* project id 1443370 */
            src: url('//at.alicdn.com/t/font_1443370_zdhouxk8rda.eot');
            src: url('//at.alicdn.com/t/font_1443370_zdhouxk8rda.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1443370_zdhouxk8rda.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1443370_zdhouxk8rda.woff') format('woff'),
            url('//at.alicdn.com/t/font_1443370_zdhouxk8rda.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1443370_zdhouxk8rda.svg#iconfont') format('svg');
        }
        .iconfont{
            font-family:"iconfont" !important;
            font-size:25px;font-style:normal;
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
            /*padding-left: 10%;*/
            padding-left: 8.3%;
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
        .row li a{
           color: #333333;
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
        /*.button{*/

        /*    outline:none;*/

        /*}*/
    </style>
</head>
<body>
    <div id="top">
        <jsp:include page="Top.jsp"/>
    </div>



<!-- 搜索区 -->
<div class="search-wrap">
    <h2 >读书时刻</h2>
    <input type="text" placeholder="输入要搜索的内容" class="input-box" >

   <button style="color:  rgb(221, 221, 221)" class="button">
       <a href="search.jsp">
           <i class="iconfont" style="color: white"  >&#xe605;</i>
       </a>

   </button>

<%--    <input type="button" value="&#xe605;">--%>
<%--       <input type="button" value="&#xe605;" />--%>
</div>
<%--一共${size}本书--%>
<div class="container">
    <div class="left">
        <h1>好书精选</h1>
        <hr>
        <div class="row">
            <%
                List<Book> bookList = (List<Book>) request.getAttribute("bookList");
                for (Book book: bookList){
                    pageContext.setAttribute("book", book);
            %>
            <div class="colum">
                <a href="${pageContext.request.contextPath}/detail/${book.number}">
                <img src="images/${book.cover}" ></a>
                <p>${book.name}</p>
                <p>${book.author}</p>
            </div>
            <%
                }
            %>

        </div>
    </div>
    <div class="right">

<%--        <h3>分类</h3>--%>
        <i class="iconfont">&#xe606;分类</i>
        <hr>
        <div class="row">
            <li>
                <a href="#" style="text-decoration: none">仙侠</a>
                <br>
                <input type="button" value="奇幻修真" style="border: none">
                <input type="button" value="古典仙侠" style="border: none">
                <input type="button" value="现代修真" style="border: none">
                <input type="button" value="洪荒封神" style="border: none">
            </li>
        </div>
       <div class="row">
          <li>
            <a href="#" style="text-decoration: none">都市</a>
            <br>
              <input type="button" value="都市生活" style="border: none">
              <input type="button" value="异术超能" style="border: none">
              <input type="button" value="都市修仙" style="border: none">
              <input type="button" value="热血兵王" style="border: none">
              <input type="button" value="校园生活" style="border: none">
              <input type="button" value="乡土生活" style="border: none">
              <input type="button" value="科技工业" style="border: none">
              <input type="button" value="娱乐明星" style="border: none">
          </li>
       </div>
    <div class="row">
        <li>
            <a href="#" style="text-decoration: none">玄幻</a>
            <br>
            <input type="button" value="东方玄幻" style="border: none">
            <input type="button" value="异世大陆" style="border: none">
            <input type="button" value="异界争霸" style="border: none">
            <input type="button" value="远古神话" style="border: none">
        </li>
    </div>
    <div class="row">
        <li>
            <a href="#" style="text-decoration: none">历史</a>
            <br>
            <input type="button" value="架空历史" style="border: none">
            <input type="button" value="历史传记" style="border: none">
            <input type="button" value="秦汉三国" style="border: none">
            <input type="button" value="明清风流" style="border: none">
            <input type="button" value="两晋隋唐" style="border: none">
            <input type="button" value="五代宋元" style="border: none">
            <input type="button" value="民国军阀" style="border: none">
            <input type="button" value="外国历史" style="border: none">
        </li>
    </div>
    <div class="row">
        <li>
            <a href="#" style="text-decoration: none">游戏</a>
            <br>
            <input type="button" value="虚拟网游" style="border: none">
            <input type="button" value="电子竞技" style="border: none">
            <input type="button" value="游戏异界" style="border: none">
        </li>
    </div>
    <div class="row">
        <li>
            <a href="#" style="text-decoration: none">现代言情</a>
            <br>
            <input type="button" value="都市情缘" style="border: none">
            <input type="button" value="豪门总裁" style="border: none">
            <input type="button" value="婚恋情感" style="border: none">
            <input type="button" value="现代异能" style="border: none">
            <input type="button" value="民国情仇" style="border: none">
            <input type="button" value="世家婚恋" style="border: none">
        </li>
    </div>
    <div class="row">
        <li>
            <a href="#" style="text-decoration: none">科幻言情</a>
            <br>
            <input type="button" value="快穿世界" style="border: none">
            <input type="button" value="末日危机" style="border: none">
            <input type="button" value="星际穿越" style="border: none">
            <input type="button" value="仙侠情缘" style="border: none">
            <input type="button" value="玄幻魔法" style="border: none">
            <input type="button" value="西方魔幻" style="border: none">
            <input type="button" value="虚拟世界" style="border: none">
            <input type="button" value="异界魔幻" style="border: none">
        </li>
    </div>


    </div>

</div>

<!-- 脚注 -->
<footer>
    <ul>
        <li>联系我们</li>
    </ul>
</footer>
</body>
</html>
