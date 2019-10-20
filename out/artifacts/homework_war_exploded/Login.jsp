
<%--
  Created by IntelliJ IDEA.
  User: Bella
  Date: 2019/10/20
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equals("admin")&&password.equals("123456")){
        request.setAttribute("username",username);
        request.getRequestDispatcher("Login_success.jsp").forward(request,response);
    }
    else{
        request.getRequestDispatcher("Login_error.jsp").forward(request,response);
    }
%>

</body>
</html>
