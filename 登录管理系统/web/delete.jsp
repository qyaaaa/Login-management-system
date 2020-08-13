<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%
    String id = request.getParameter("id");
    ;

    @SuppressWarnings("all")
    ArrayList<HashMap> users= (ArrayList<HashMap>) application.getAttribute("users");

    for(HashMap e:users){
        String idFromMap = (String)e.get("id");
        if(idFromMap.equals(id)){
            users.remove(e);
            break;
        }
    }


    application.setAttribute("users",users);
    response.sendRedirect("retrieve.jsp");

%>
