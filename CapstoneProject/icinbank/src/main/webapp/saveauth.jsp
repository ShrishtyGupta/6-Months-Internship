<%@page import="java.util.List"%>
<%@page import="com.learn.icinbank.entities.Cheq"%>
<%@page import="com.learn.icinbank.dao.UserDao"%>
<%@page import="com.learn.icinbank.dao.SaveAccDao"%>
<%@page import="com.learn.icinbank.helper.FactoryProvider"%>
<%@page import="com.learn.icinbank.entities.User"%>
<%@page import="com.learn.icinbank.entities.SaveAcc"%>
<%

    User useru = (User) session.getAttribute("current-user");
    if (useru == null) {

        session.setAttribute("message", "You are not logged in !! Login first!! ");
        response.sendRedirect("login.jsp");
        return;

    } else {

        if (useru.getUserType().equals("normal")) {

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
        <title>User Authentication</title><%@include file="components/common_css_js.jsp" %>
    </head>
   <body style="background: #0b2239">
    <%@include file="components/navbar.jsp" %>
    <%
      SaveAccDao dao=new SaveAccDao(FactoryProvider.getFactory());
      List<SaveAcc> list = dao.getSaveAcc();
    %>
    <%  
     int cunt=0;
     for(SaveAcc p :list)
     {    
           cunt++;}
    %>
        <div class="container">
    <div class="row mt-5">                

    <div class="col-md-5">
    <!--form details-->
                   <!--card-->
        <div class="card">
        <div class="card-body">
        <%@include file="message.jsp" %>
                            
        <form action="UpdateUserServlet" method="post">
        <div class="form-group">
        <h3 class="text-center mb-5">Update User Access</h3>
        <label for="user_id">User ID</label>
        <input  name="user_id" type="text" class="form-control" id="user_id"  >
        <small id="emailHelp" class="form-text text-muted">Enter ID of User</small>
        </div>
                                


        


        <div class="form-group">
        <label for="user_status" >Update Status</label>
        <select class="form-control" id="user_statuss" name="user_status">
  <option value="1">1-Active</option>
  <option value="2">0-Blocked</option>
 
    
</select>
        <small id="emailHelp" class="form-text text-muted">1-Active, 0-Blocked, </small>
        </div>

        <div class="container text-center">
        <button class="btn btn-outline-success">Update Savings Account Access</button>
                                
        </div>

    </form>    

    </div>
    </div>
    </div>
                                    
                                    
                                    <div class="col-md-7">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="form-group" style="padding-left: 30px; padding-right: 30px">
                                            
                                            <h3 class="text-center " >Savings Account Status Sheet</h3>
                                            <small id="emailHelp" class="form-text text-muted text-center">Total <%=cunt%> Saveary Account Users  </small><br>
                                         
                                                
                                                
                                               <table class="table">
                                                <thead  style="background:#0b2239; color:#fff">   
                                                <tr>
                                                    <th scope="col">#</th>
                                                     <th scope="col">User Name</th>
                                                     <th scope="col"> User ID</th>
                                                     
                                                    <th scope="col">Account ID</th>
                                                    <th scope="col">User Status</th>
                                                   
                                                </tr>    
                                                </thead>
                                               
                                                <tbody>              
                                                <%  int count=0;
                                                String s;
                                                    for(SaveAcc p:list)
                                                {    
                                                 count++;
                                                %>
                                                <tr>
                                                    <td><%=count%></td>
                                                    <td><%=p.getSacct().getUserName()%> </td>
                                                    <td><%=p.getSacct().getUserId()%> </td>
                                                    <td><%=p.getSaccId()%> </td>
                                                    
                                                  
                                                    <% if(p.isSaccStatus()==false)
                                                       s= "Blocked";
                                                    
                                                    else s="Active";
                                                    %>
                                                    
                                                    <td><%=s%> </td>
                                                    
                                                    
                                                </tr>
                                              
                                                
                                              <%   }
                                                    %>
                                                </tbody>
                                                
                                                
                                               </table>
                                                    
                                              
                                                                                                                                         
                                                
                                            
                                            
                                        
                                            </div></div></div></div></div>

        </div><br><br>
    </body>
</html>
