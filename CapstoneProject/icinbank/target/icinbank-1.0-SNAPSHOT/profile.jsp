<%@page import="com.learn.icinbank.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.icinbank.entities.Trans"%>
<%@page import="com.learn.icinbank.dao.UserDao"%>
<%@page import="com.learn.icinbank.helper.FactoryProvider"%>
<%@page import="com.learn.icinbank.entities.User"%>
<%

    User userp = (User) session.getAttribute("current-user");
    if (userp == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access checkbook page");
        response.sendRedirect("login.jsp");
        return;

    }
    
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=userp.getUserName()%>'s Profile</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body style="background: #fff">
     <%@include file="components/navbar_1.jsp" %><br><br>
        <%
                UserDao dao=new UserDao(FactoryProvider.getFactory());
                List<User> list = dao.getUserDet();
          %> 
        <% String sx="Active";
                    if(userp.isUserStatus()!=true)
                    {sx="Inactive"; }%>
          
        <div class="container">
            <div class="row">
            <div class="col md-6">
                <div class="card" style="background: #0b2239;   box-shadow: 0 0 20px rgba(0,0,0,0.4);   border-radius: 5px;  width: 400px;    padding: 20px;   text-align: center;   color: white;   ">
                <div class="card-body"> 
                <div class="form-group" style="padding-left: 30px; padding-right: 30px">
                    <h3 class="text-center " >PROFILE DETAILS</h3><br>
                    <img src="img/icon.png" style="align-content: center; width: 70px; height: 70px"><br>
                    <div style="padding-left: 5px">
                        <br>
                    <h5 class="text-justify " > ID : <%=userp.getUserId()%></h5>
                    <h5 class="text-justify " >NAME : <%=userp.getUserName()%> </h5>
                    <h5 class="text-justify " >ADDRESS : <%=userp.getUserAddress()%></h5>
                    <h5 class="text-justify " >EMAIL ID: <%=userp.getUserEmail()%></h5>
                    <h5 class="text-justify " >PHONE : <%=userp.getUserPhone()%></h5>
                   
                    <h5 class="text-justify " >USER STATUS : <%=sx%></h5><br>
                    
                    </div>
                </div>    
                </div>
                </div>
            </div>
                
                
            <div class="col md-6">
            <div class="row mt-6">
                <div class="card" style="background: #0b2239;   box-shadow: 0 0 20px rgba(0,0,0,0.4);   border-radius: 5px;      padding: 20px;   text-align: center;   color: white;   ">
                <div class="card-body"> 
                <div class="form-group" style="padding-left: 30px; padding-right: 30px">
                    <h3 class="text-center " >PRIMARY ACCOUNT DETAILS</h3>
                    
                </div>    
                </div>
                </div>
            </div><br>
            <div class="row mt-6">
                <div class="card" style="background: #0b2239;   box-shadow: 0 0 20px rgba(0,0,0,0.4);   border-radius: 5px;      padding: 20px;   text-align: center;   color: white;   ">
                
                <div class="card-body"> 
                <div class="form-group" style="padding-left: 30px; padding-right: 30px">
                    <h3 class="text-center " >SAVINGS ACCOUNT DETAILS</h3>
                </div>    
                </div>
                </div>
            </div>
            </div>
            </div>
        </div>
        
        
        <br><br>
        <%@include file="components/footer.jsp" %>
    </body>
</html>
