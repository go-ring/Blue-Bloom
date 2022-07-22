<%@ page contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <title>B.Bloom login information</title>
    </head>
    <body>
        <%
        request.setCharacterEncoding("utf-8");
        String userid=request.getParameter("id");
        String password = request.getParameter("passwd");

        if (userid.equals("user") && password.equals("1234")){
            response.sendRedirect("mainpage.jsp");
        }
        else if (userid.equals("teacher") && password.equals("2345")){
            response.sendRedirect("mainpage.jsp");
        }
        else if (userid.equals("student") && password.equals("3456")){
            response.sendRedirect("mainpage.jsp");
        }
        else{
            response.sendRedirect("loginfail.jsp");
        }
        %>
        
  </body>
</html>