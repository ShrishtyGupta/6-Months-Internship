<%@page import="java.util.List"%>
<%@page import="com.learn.icinbank.entities.Cheq"%>
<%@page import="com.learn.icinbank.dao.ReqCheqDao"%>
<%@page import="com.learn.icinbank.helper.FactoryProvider"%>
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
    <body style="background: #0b2239">
        <%@include file="components/navbar.jsp" %>
        <div class="container">
            <div class="row mt-5">                

                <div class="col-md-5">
                    <!--form details-->
                    <!--card-->
                    <div class="card">
                        <div class="card-body">
<%@include file="message.jsp" %>
                            
                            <form action="ReqChServlet" method="post">
                                <div class="form-group">
                                   <h3 class="text-center mb-5">Request a New Checkbook</h3>
                                    <label for="cheqt_user_id">User ID</label>
                                    <input  name="cheqt_user_id" type="text" class="form-control" id="cheqt_user_id" value="<%=userc.getUserId()%>" >
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
                                     <%
                                                ReqCheqDao dao=new ReqCheqDao(FactoryProvider.getFactory());
                                                List<Cheq> list = dao.getAllCheq();
                                                %>
                                    
                                    <div class="col-md-7">
                                        <div class="card">
                                            <br>
                                            <h3 class="text-center mb-5" style="padding-top:15px">Checkbook Status Sheet</h3>
                                            <div>
                                                <h1>Number of checkbook is <%=list.size()%> </h1> 
                                                <% for(Cheq cheq:list)
                                                {    if(cheq.getCheqt().getUserId()==1)
                                                {out.println(cheq.getCheqId()+cheq.getCheqAdd()+cheq.isCheqStatus()+cheq.getCheqt().getUserId()+"<br>");
                                                } }
                                                    %>
                                            </div>
                                            <div class="card-body"></div>
                                        </div></div>
            </div>

        </div><br><br>
        <%@include file="components/footer_1.jsp" %>
    </body>
</html>
