<%@page import="com.learn.icinbank.entities.User"%>
<%

    User usertt = (User) session.getAttribute("current-user");
    if (usertt == null) {

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
        
        <div class="card" style="background: #0b2239;
  box-shadow: 0 0 20px rgba(0,0,0,0.4);
  border-radius: 5px;
  margin: 50px 20px 20px 20px;
  
  padding: 20px;
  text-align: center;
  color: white;
  float: left;">

  <div class="title">Expert</div>

  <div class="icon" style="margin: 50px 0;
    svg {
      width: 100px;
      height: 100px;
      path {
        fill: #F6B352;
      }
    }">
    <svg enable-background="new 0 0 512 512" height="512px" id="Layer_1" version="1.1" viewBox="0 0 512 512" width="512px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M285.928,113.067c62.492,0,113.327,50.827,113.327,113.327c0,0.344-0.041,0.705-0.066,1.049  c-0.049,0.836-0.107,1.672-0.123,2.525l-0.426,17.133l17.159,0.065c41.53,0.115,75.313,34.005,75.313,75.535  c0,41.415-33.718,75.305-75.157,75.518l-3.664,0.016H104.977c-46.244-0.049-83.872-37.693-83.872-83.929  c0-35.825,22.806-67.714,56.737-79.356l9.444-3.229l1.664-9.838c4.115-24.282,24.97-41.907,49.588-41.907  c7.846,0,15.428,1.82,22.536,5.394l15.306,7.689l7.386-15.444C202.531,138.398,242.635,113.067,285.928,113.067 M285.928,96.277  c-51.778,0-96.358,30.315-117.303,74.092c-9.059-4.558-19.256-7.182-30.086-7.182c-33.233,0-60.762,24.184-66.14,55.893  C32.82,232.657,4.316,270.104,4.316,314.307c0,55.597,45.063,100.669,100.644,100.718h311.084v-0.016  c50.777-0.263,91.856-41.481,91.856-92.308c0-50.909-41.177-92.177-92.053-92.324c0.033-1.344,0.197-2.639,0.197-3.984  C416.044,154.532,357.79,96.277,285.928,96.277L285.928,96.277z" fill="#37404D"/></svg>
  </div><!--/icon-->

  <div class="features" style="ul {
      padding: 0;
      margin: 20px 0 50px 0;
      list-style-type: none;
      li {
        margin: 10px 0;
        font-size: 14px;
        span {
          border-bottom: 2px dotted #F6B352;
        }
      }
    }">
    <ul>
      <li><span>10</span> Edits</li>    
      <li><span>10GB</span> Storage</li>
      <li><span>9</span> Pages</li>
      <li><span>5</span> Hour free support</li>
    </ul>
  </div><!--/features-->

  <a href="#" class="btn">Check it out</a>

</div>
        
      
        
    </body>
</html>
