<%-- 
    Document   : logout
    Created on : Sep 3, 2018, 8:18:46 AM
    Author     : Asmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("index.jsp");
            System.out.println("Session terminated with name:" + session);
            %>
    </body>
</html>
