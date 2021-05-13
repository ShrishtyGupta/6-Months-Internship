<%@page import="java.util.List"%>
<%@page import="com.learn.icinbank.entities.Cheq"%>
<%@page import="com.learn.icinbank.dao.ReqCheqDao"%>
<%@page import="com.learn.icinbank.helper.FactoryProvider"%>
<%@page import="com.learn.icinbank.entities.User"%>
<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first!! ");
        response.sendRedirect("login.jsp");
        return;

    } else {

        if (user.getUserType().equals("normal")) {

            session.setAttribute("message", "You are not admin ! Do not access admin page");
            response.sendRedirect("login.jsp");
            return;

        }

    }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
