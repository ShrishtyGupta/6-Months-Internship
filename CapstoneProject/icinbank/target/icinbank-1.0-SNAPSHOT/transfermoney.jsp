<%@page import="com.learn.icinbank.entities.User"%>
<%

    User userc = (User) session.getAttribute("current-user");
    if (userc == null) {

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
        <title>Transfer Money</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body style="background: #0b2239">
        <%@include file="components/navbar.jsp" %><br><br>
        
        <div class="container">
                            
            <div class="column "> 
               
                    <!--form details-->
                    <!--card-->
                    <div class="card mx-auto" style="height:450px; width: 650px">
                        <div class="card-body">
                            <h3 class="text-center mb-5">Money Transfer</h3>
                            <form action="ReqMServlet" method="post">
                             <div class="row " style="row-gap:100px">
                            <%@include file="message.jsp" %>
                            
                            
                                <div class="form-group" style="padding-left: 50px">
                                   
                                    <label for="transtt_user_id">Your User ID</label>
                                    <input  name="transt_user_id" type="text" class="form-control" id="transt_user_id" >
                                    <small id="emailHelp" class="form-text text-muted">Do not change this ID.</small>
                                </div><br>
                                
                                
                                
                                <div class="form-group" style="padding-left: 50px">
                                   
                                    <label for="trans_Amt">Transaction Amount</label>
                                    <input  name="trans_Amt" type="text" class="form-control" id="trans_Amt" >
                                    <small id="emailHelp" class="form-text text-muted">Currency Indian National Rupee</small>
                                </div><br>
                                
                        </div>
                             <div class="row">
                                
                                
                                <div class="form-group" style="padding-left: 50px">
                                   
                                    <label for="acc_toacc">Account Number</label>
                                    <input  name="acc_toacc" type="text" class="form-control" id="acc_toacc" >
                                    <small id="emailHelp" class="form-text text-muted">Account Number of Recepient.</small>
                                </div><br>
                                <div class="form-group" style="padding-left: 50px">
                                   
                                    <label for="acc_tobank">Bank Name</label>
                                    <input  name="acc_tobank" type="text" class="form-control" id="acc_tobank" >
                                    <small id="emailHelp" class="form-text text-muted">Bank Name of Recepient.</small>
                                </div> <br>


                                


                                

                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Request Now</button>
                                    
                                </div>

                               

                        </div>
                            </form> 
                    </div>
                </div>
            </div>
        </div>
        
        
        <br><br>
        <%@include file="components/footer_1.jsp" %>
    </body>
</html>
