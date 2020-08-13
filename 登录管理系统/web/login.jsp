<%@ page import="com.oracle.tool.DataTool" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 从请求中获取username
    String username = request.getParameter("username");

    // 从请求中获取password
    String password = request.getParameter("password");

    if("admin".equals(username) && "123".equals(password)){
        // 把人员数据全部获取到
        // alt + enter -> 选择import class
        DataTool dataTool = new DataTool();
        ArrayList users = dataTool.buildData();

        // 把人员数据存到服务器上
        // 名字永远是字符串，值无所谓
        application.setAttribute("users", users);
        application.setAttribute("num",12);
        // 登录成功！跳入main.jsp页面
        response.sendRedirect("main.jsp");
    }else{
        // 登录失败！跳入index.jsp页面
        response.sendRedirect("index.jsp");
    }
%>

