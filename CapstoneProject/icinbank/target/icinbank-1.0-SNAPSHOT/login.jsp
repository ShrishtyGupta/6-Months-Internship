<%-- 
    Document   : login.jsp
    Created on : May 9, 2021, 2:51:20 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ICIN Bank - Login</title>
         <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        
         <%@include  file="components/navbar_1.jsp" %>
         <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">

                    <div class="card mt-3">

                        <div class="card-header text-white " style="background-color: #4b4a67;">
                            <h3>Login here</h3>
                        </div>

                        <div class="card-body">                            
                            <%@include file="message.jsp" %>
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input  name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input  name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <a href="register.jsp" class="text-center d-block mb-2" style="color:#4b4a67"> If You Are A New User Click Me </a>
                                <div class="container text-center"> 

                                    <button type="submit" class="btn btn-primary border-0 " style="background:#484a67">Submit</button>
                                    
                                </div>

                            </form>

                        </div>


                    </div>




                </div>
            </div>
        </div>




                            <br>
                            <br>
                            <br><br>
                       
                            <%@include file="components/footer.jsp" %>
    </body>
</html>
