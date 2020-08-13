<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String age = request.getParameter("age");
    String info = request.getParameter("info");

    @SuppressWarnings("all")
    ArrayList<HashMap> users= (ArrayList<HashMap>) application.getAttribute("users");

    for(HashMap e:users){
        String idFromMap = (String)e.get("id");
        if(idFromMap.equals(id)){
            e.put("name",name);
            e.put("gender",gender);
            e.put("age",age);
            e.put("info",info);


        }
    }


    application.setAttribute("users",users);
    response.sendRedirect("retrieve.jsp");

%>
