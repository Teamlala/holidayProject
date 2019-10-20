<%--
  Created by IntelliJ IDEA.
  User: Bella
  Date: 2019/10/20
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equals("admin")){
        request.setAttribute("username",username);
        request.getRequestDispatcher("regist_error.jsp").forward(request,response);
    }
    else{
        request.getRequestDispatcher("regist_success.jsp").forward(request,response);
    }
%>
</body>
</html>
