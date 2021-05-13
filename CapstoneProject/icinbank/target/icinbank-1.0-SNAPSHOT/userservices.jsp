<%@page import="com.learn.icinbank.entities.User"%>
<%

    User useru = (User) session.getAttribute("current-user");
    if (useru == null) {

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
        <title> <%=useru.getUserName()%>'s Services </title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body style="background: #0b2239
          ">
        <%@include file="components/navbar.jsp" %><br><br><br>
      
        <div class="container admin">


            <div class="container-fluid mt-3">
                
            </div>




            <div class="row mt-3">

                <!--first col-->
                <div class="col-md-4">
                    <a href="profile.jsp">
                    <!--first box-->
                    <div class="card" style="box-shadow: 0 0 20px rgba(0,0,0,0.4);">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid  " src="img/social.png" alt="user_icon">

                            </div> 
                          
                            <h1 class="text-uppercase text-muted">USER<BR> PROFILE </h1>

                        </div>

                    </div></a>



                </div>

                <!--second col-->

                <div class="col-md-4">

                    <a href="cheqbook.jsp">
                    <div class="card text-center"               >

                        <div class="card-body" >

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid  " src="img/product.png" alt="user_icon">

                            </div> 

                            
                            <h1 class="text-uppercase text-muted">checkbook services
                            </h1>

                        </div>

                    </div></a>


                </div>


                <!--third col-->
                <div class="col-md-4">


                    <div class="card" data-toggle="modal" data-target="#trans-money-modal">

                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid  " src="img/add-friend.png" alt="user_icon">

                            </div> 

                        
                            <h1 class="text-uppercase text-muted">transfer money</h1>

                        </div>

                    </div>
 


                </div>





            </div>

            <!--second row-->

            <div class="row mt-3">

                <!--second :row first col-->
                <div class="col-md-6">

                    <a href="depositmoney.jsp">
                    <div class="card" >

                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid  " src="img/minus.png" alt="user_icon">

                            </div> 

                            <p class="mt-2">Click here to Deposit Money </p>
                            <h1 class="text-uppercase text-muted"> DEPOSIT MONEY </h1>

                        </div>

                    </div></a>
                </div>

                <!--second row : second col-->

                <div class="col-md-6">
                    <a href="balancesheet.jsp">
                    <div class="card" >

                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid  " src="img/keys.png" alt="user_icon">

                            </div> 

                            <p class="mt-2" style="color:#000">Click here to Check Balance Sheet </p>
                            <h1 class="text-uppercase text-muted">balance sheet</h1>

                        </div>

                    </div></a>

                </div>




            </div>



        </div>



        <!--add category modal-->



        <!-- Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill category details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ProductOperationServlet" method="post">

                            <input type="hidden" name="operation" value="addcategory">


                            <div class="form-group">
                                <input type="text" class="form-control" name="catTitle" placeholder="Enter category title" required />

                            </div>


                            <div class="form-group">
                                <textarea style="height: 300px;" class="form-control" placeholder="Enter category description" name="catDescription" required></textarea>

                            </div>

                            <div class="cotnainer text-center">

                                <button class="btn btn-outline-success">Add Category</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                            </div>



                        </form>




                    </div>

                </div>
            </div>
        </div>




        <!--End add category modal-->

        <!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->

        <!--product modal-->

        <!-- Modal -->
        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Product details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!--form-->

                        <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">

                            <input type="hidden" name="operation" value="addproduct"/>

                            <!--product title-->

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter title of product" name="pName" required />
                            </div>

                            <!--product description-->

                            <div class="form-group">
                                <textarea style="height: 150px;" class="form-control" placeholder="Enter product description" name="pDesc"></textarea>

                            </div>

                            <!--product price-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter price of product" name="pPrice" required />
                            </div>

                            <!--product discount-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product discount" name="pDiscount" required />
                            </div>


                            <!--product quantity-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product Quantity" name="pQuantity" required />
                            </div>


                            <!--product category-->

                        


                            <div class="form-group">
                                

                            </div>



                            <!--product file-->

                            <div class="form-group">
                                <label for="pPic">Select Picture of product</label>  
                                <br>
                                <input type="file" id="pPic" name="pPic" required />

                            </div>


                            <!--submit button-->
                            <div class="container text-center">

                                <button class="btn btn-outline-success">Add product</button>

                            </div>



                        </form>
                        <!--end form-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="modal fade" id="trans-money-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document" style="height:450px; width: 650px">
                <div class="modal-content">
                    <div class="modal-header  text-white" style="background: #0b2239">
                        <h5 class="modal-title" id="exampleModalLabel">Transfer Money</h5>
                        <button type="button" style="color: #fff" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ReqMServlet" method="post">
                             <div class="row " >
                            <%@include file="message.jsp" %>
                            
                            
                                <div class="form-group" style="padding-left: 50px">
                                   
                                    <label for="transtt_user_id">Your User ID</label>
                                    <input  name="transt_user_id" type="text" class="form-control" id="transt_user_id" value="<%=useru.getUserId()%>">
                                    <small id="emailHelp" class="form-text text-muted">Do not change this ID.</small>
                                </div><br>
                                
                                
                                
                                <div class="form-group" style="padding-left: 50px">
                                   
                                    <label for="trans_Amt">Transaction Amount</label>
                                    <input  name="trans_Amt" type="text" class="form-control" id="trans_Amt" >
                                    <small id="emailHelp" class="form-text text-muted">Currency Indian National Rupee</small>
                                </div><br>
                                
                        </div>
                                    
                                    <div class="row " style="row-gap:100px">
                           
                            
                            
                                <div class="form-group" style="padding-left: 50px">
                                   
                                    <label for="trans_name">Beneficiary Name</label>
                                    <input  name="trans_name" type="text" class="form-control" id="trans_name" >
                                    <small id="emailHelp" class="form-text text-muted">Recepient Name.</small>
                                </div><br>
                                
                                
                                
                                <div class="form-group" style="padding-left: 50px">
                                   
                                    <label for="trans_ifsc">Beneficiary IFSC Code</label>
                                    <input  name="trans_ifsc" type="text" class="form-control" id="trans_ifsc" >
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
                                </div> <br><br> 

                        
                            

                                <div class="container text-center">
                                    <button type="submit" class="btn btn-primary border-0 " style="background:#0b2239">Transfer Now</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>

                               

                        </div>
                            </form> 

                            


                            


                            







                    </div>

                </div>
            </div>
        </div>
        <br><br><br><br>
          <%@include file="components/footer_1.jsp" %>
    </body>
</html>
