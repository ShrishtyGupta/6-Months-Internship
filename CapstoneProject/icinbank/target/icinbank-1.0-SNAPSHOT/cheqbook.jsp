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
        <title>Checkbook Details</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar_1.jsp" %><br>
        <div class="container">
            <div class="row mt-5">                

                <div class="col-md-6">
                    <!--form details-->
                    <!--card-->
                    <div class="card">
                        <div class="card-body">
<%@include file="message.jsp" %>
                            <h3 class="text-center mb-5">Request a New Checkbook</h3>
                            <form action="ReqChServlet" method="post">
                                <div class="form-group">
                                   
                                    <label for="cheqt_user_id">User ID</label>
                                    <input  name="cheqt_user_id" type="text" class="form-control" id="cheqt_user_id" >
                                    <small id="emailHelp" class="form-text text-muted">Do not change this ID.</small>
                                </div>
                                


                                <div class="form-group">
                                    <label for="cheq_connum">Your contact</label>
                                    <input name ="cheq_connum" type="text" class="form-control" id="cheq_connum"  >
                                </div>


                                <div class="form-group">
                                    <label for="cheq_add" >Your shipping address</label>
                                    <textarea name ="cheq_add" class="form-control" id="exampleFormControlTextarea1" placeholder="Enter your shipping address" rows="1"></textarea>
                                </div>

                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Request Now</button>
                                    
                                </div>

                            </form>    

                        </div>
                    </div>
                </div>
            </div>

        </div><br><br>
        <%@include file="components/footer.jsp" %>
    </body>
</html>
