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
    <link href="retrieve.css" rel="stylesheet">
    <link rel="shortcut icon" href="hk.ico">
</head>
<body>

<!--导航容器-->
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
            <li class="active"><a href="retrieve.jsp"><span class="glyphicon glyphicon-import"></span> 查询用户信息</a></li>
            <li><a href="create_page.jsp"><span class="glyphicon glyphicon-apple"></span> 添加用户信息</a></li>
            <li><a href="flash.jsp"><span class="glyphicon glyphicon-home"></span> 分析用户信息</a></li>
            <li><a href="excel.jsp"><span class="glyphicon glyphicon-print"></span> 打印用户信息</a></li>
        </ul>
    </section>
</nav>

<section class="jumbotron">
    <section class="container text-right text-muted">
        <h1>空洞骑士图鉴展示</h1>
        <h3>各图鉴资料如下！</h3>
    </section>
</section>
<table class="table table-stripe table-hover table-bordered table-responsive">
    <tr>
        <th>编号</th>

        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
        <th>职务</th>
        <th>操作</th>
    </tr>
    <%
        @SuppressWarnings("all")
        ArrayList<HashMap> users = (ArrayList<HashMap>) application.getAttribute("users");
    %>
    <%int num = 1;%>
    <% for (HashMap e : users) { %>

    <tr>
        <td><%= num++%></td>

        <td><%= e.get("name")%></td>
        <td><%= e.get("age")%></td>
        <td><%= e.get("gender").equals("male") ? "男" : "女"%></td>
        <td><%= e.get("info")%></td>
        <td>
            <a href="update_page.jsp?id=<%=e.get("id")%>" class="btn btn-success btn-xs">添加</a>
            <a href="delete.jsp?id=<%=e.get("id")%>" class="btn btn-danger btn-xs">删除</a>
        </td>

    </tr>

    <% } %>
</table>

    

<footer class="text-center text-muted">
    <p>用户管理系统 | 合作事宜 | 版权投诉</p>
    <p class="text-uppercase">黑ICP 备案1234567. &copy; 1964-2200 用户管理后台. Powered by Qya.</p>
</footer>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
