<h2>quickstart起步模块

<h3>简单的登录

3>登录起步练习</h3>
    <li>login.html输入用户名和密码</li>
    <li>LoginServlet拦截/login.do请求，取得参数，判定是否和指定值相等，相等就将用户名存入session，然后重定向到index.jsp主页</li>
    <li>主页通过jsp表达式<%= %>，用session内置对象取出用户名显示</li>
   <img src="http://ww1.sinaimg.cn/large/006oHcnkgy1g7ez5nqo0yj308y039q2u.jpg"/>
   <li>通过rep跳转到主页</li>
       <img src="http://ww1.sinaimg.cn/large/006b3e0pgy1g7f1bwwfigj31hb0p9go2.jpg"/>
    <h3>服务端转发数据至目标页面渲染</h3>
    <li>student实体类，封装基础属性</li>
    <li>studentServlet，拦截/students请求，创建一个集合存入若干student对象，存入request，并通过服务器转发（地址栏不变）将request带到student.jsp页面</li>
    <li>index.jsp页面用request内置对象取出数据，并借助页面内置对象和EL表达式,遍历数据集合，在页面上显示</li>
<img src="http://ww1.sinaimg.cn/large/006b3e0pgy1g7f1bwwfigj31hb0p9go2.jpg"/>