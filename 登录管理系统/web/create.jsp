<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String age = request.getParameter("age");
    String info = request.getParameter("info");

    @SuppressWarnings("all")
    ArrayList<HashMap> users= (ArrayList<HashMap>) application.getAttribute("users");
    String numStr = application.getAttribute("num").toString();
    int num = Integer.parseInt(numStr);
    HashMap<String,Object> hashMap = new HashMap<>();
    hashMap.put("name",name);
    hashMap.put("gender",gender);
    hashMap.put("age",age);
    hashMap.put("info",info);
    hashMap.put("id",++num + "");
    application.setAttribute("num",num);
    users.add(hashMap);
    application.setAttribute("users",users);
    response.sendRedirect("retrieve.jsp");

%>
