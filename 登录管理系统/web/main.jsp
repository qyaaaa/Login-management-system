<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>主页面</title>
  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="main.css" rel="stylesheet">
  <link rel="shortcut icon" href="hk.ico">
</head>
<body>
<!--导航容器-->
<nav class="navbar navbar-default navbar-fixed-top container">

  <!--导航头-->
  <section class="navbar-header">
    <span class="navbar-brand">用户管理</span>
    <button data-toggle="collapse" data-target="#collapseBody" class="navbar-toggle">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </section>

  <!--导航头折叠内容容器：包括一个导航列表-->
  <section id="collapseBody" class="collapse navbar-collapse">
    <ul id="navList" class="nav navbar-nav navbar-right">
      <li><a href="retrieve.jsp"><span class="glyphicon glyphicon-import"></span> 查询用户信息</a></li>
      <li><a href="create_page.jsp"><span class="glyphicon glyphicon-apple"></span> 添加用户信息</a></li>
      <li><a href="flash.jsp"><span class="glyphicon glyphicon-home"></span> 分析用户信息</a></li>
      <li><a href="excel.jsp"><span class="glyphicon glyphicon-print"></span> 打印用户信息</a></li>
    </ul>
  </section>
</nav>
<section class="jumbotron">
  <section class="container text-right text-muted">
    <h1>空洞骑士图鉴展示</h1>
    <h3>各图鉴资料如下</h3>
  </section>
</section>

<section class="row">
  <%ArrayList users = (ArrayList) application.getAttribute("users");%>


  <% for (Object e : users) { %>
  <div class="col-sm-6 col-md-4 col-lg-2">
    <div class="thumbnail">
      <img src="img/<%=((HashMap) e).get("photo")%>" alt="">
      <div class="caption">
        <h3><%=((HashMap) e).get("name")%></h3>
        <p><%=((HashMap) e).get("info")%></p>
        <a href="login_one.jsp?id=<%=((HashMap) e).get("id")%>" class="btn btn-danger">点击详情</a>
      </div>
    </div>
  </div>
  <% } %>
</section>
<footer class="text-center text-muted">
  <p>用户管理系统 | 合作事宜 | 版权投诉</p>
  <p class="text-uppercase">黑ICP 备案1234567. &copy; 1964-2200 用户管理后台. Powered by Qya.</p>
</footer>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>


