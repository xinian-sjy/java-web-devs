<%@ page import="com.web.entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2019/10/4
  Time: 下午 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情页面</title>
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
            <h3>${book.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${book.cover}" alt="">
                </div>
                <div class="col-4">
                    <p>${book.author}</p>
                    <p>${book.name}</p>
                    <br>
                    <p>阿尔-伊德里斯是十二世纪著名的地理学家，曾在巴格达创立三十六个图书馆，后被西西里罗杰国王聘为宫廷地理学家。某天一个强盗闯入他的藏书室，偷走一袋奇珍异宝，导致它们流散世界各地。九百年后，在美国新英格兰一个小镇，一位隐居的爱沙尼亚教授神秘死亡，年轻记者保罗奉命为其撰写讣告，意外发现有人在收集这袋珍宝……
                        全书将保罗的调查和珍宝遗失、重新收集的过程交织在一起。几个世纪来，这些珍宝在世界各地各色人物中辗转流传，其中既有热那亚商人、前苏联工程师、英国古董收藏家，也有老年得子的中国人、牛津大学的植物学教授。而教授的死因和所有无价之宝*终都指向一个跨国集团，这个集团有着几百年的历史，他们在聚集修炼不死生命的炼丹法器……
                        《地理学家的藏书室》是乔恩·法斯曼的成名之作，他用丰富的历史、地理、炼金术知识，建构了一本奇特的知识悬疑小说，常与丹·布朗的《达·芬奇密码》相提并论，而这本书也让法斯曼跻身畅销作家之列。
                    </p>
                </div>
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
