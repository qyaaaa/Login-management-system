<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.oracle.tool.ExcelTool" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    @SuppressWarnings("all")
    ArrayList<HashMap> users = (ArrayList<HashMap>) application.getAttribute("users");

    HashMap<String, Object> hashMap = new HashMap<>();
    hashMap.put("title", "用户信息表");
    hashMap.put("users", users);

    // ExcelTool在创建的时候需要使用请求参数和响应参数
    ExcelTool excelTool = new ExcelTool(request, response);
    // 第一个参数是模板路径必须以 "/" 开头
    // 第二个参数是文件名，必须带后缀 .xls
    // 第三个参数是数据，必须是HashMap结构
    excelTool.download("/excel/excelTemplate.xls", "abc.xls", hashMap);
%>