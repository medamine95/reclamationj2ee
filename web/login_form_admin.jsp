<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Admin"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Form</title>      
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

      <!-- Bootstrap core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="style.css">
                        
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    </head>
    <body>
         <div class="container text-center centered mycenter">
        <div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        <center>    
        
        <jsp:useBean id="user" scope="request" class="beans.Admin"></jsp:useBean>

        <form action="AdminController" method="post">
            <center>
              
                  
                    <h1 style="color: white;">Login </h1>
                   <div class="form-group">
                        <input type="text" required="required" class="form-control input-lg" placeholder="Your username" name="user" value="<jsp:getProperty name="user" property="user"/>">
            </div>
              <div class="form-group">
                         <input type="password" required="required" class="form-control input-lg" placeholder="Your Password" name="pwd" value="<jsp:getProperty name="user" property="pwd"/>">
              </div>   
                            <center><a class="btn btn-primary btn-block btn-lg" href="register_form.jsp">Register</a></center>
                       <center><input type="submit" value="Login"  class="btn btn-success btn-block btn-lg"></center>           
                
            </center>
        </form>
         
        </center>
    </div>
        </div>
         </div>
                        
    </body>
</html>
