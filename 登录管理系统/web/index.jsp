<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>页面</title>
  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="index.css">
  <link rel="shortcut icon" href="hk.ico">
  <link rel="stylesheet" href="img/bj.jpg">
</head>
<body background="img/bj.jpeg">

<form action="login.jsp">

  <section class="panel panel-info">
    <section class="panel-heading">
      <section class="panel-title">
        <h4>登录</h4>
      </section>
    </section>


    <section class="panel-body">
      <label class="input-group">
        <span class="input-group-addon">账号</span>
        <input type="text" name="username" class="form-control"
               required placeholder="input your username...">
      </label>
      <label class="input-group">
        <span class="input-group-addon">密码</span>
        <input type="password" name="password" class="form-control"
               required placeholder="input your password...">
      </label>
    </section>

    <section class="panel-footer">
      <button class="btn btn-info">登录</button>
      
    </section>
  </section>
</form>


</body>
</html>


