<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Registration Form</title>      
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

      <!-- Bootstrap core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="style.css">
                        
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    <%
        try{
               
            HttpSession sessionUser=request.getSession(false);  
            String us=(String)sessionUser.getAttribute("user");
            
           
    
   
        }catch(Exception e){e.printStackTrace();}
        

        %> 
    
    
    
    </head>
    <body>
        <div class="container text-center centered mycenter">
        <div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        <center>    
        
        <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>
 
        <form action="RegisterController" method="post">
            <center>
                <h1 style="color: white;font-family:Arial; ">Register</h1>
                       
					<div class="form-group">
                            
                                            <input type="text" required="required" name="first_name" class="form-control input-lg" placeholder="Your First Name" value="<jsp:getProperty name="user" property="first_name"/>">
                        </div>
                                    
                          
                        	
					<div class="form-group">
                         <input type="text" required="required" class="form-control input-lg" placeholder="Your Last Name" name="last_name" value="<jsp:getProperty name="user" property="last_name"/>">
                     
                                        </div>
                                
                            	<div class="form-group">
                        <input type="text" required="required" class="form-control input-lg" placeholder="Your Username" name="user" value="<jsp:getProperty name="user" property="user"/>">
                                </div>
                       <div class="form-group">
                          
                       <input type="password" required="required" name="pwd" class="form-control input-lg" placeholder="Your Password" value="<jsp:getProperty name="user" property="pwd"/>">
                       </div>
                       
                       
                          <div class="form-group">
                           <input type="reset" value="Reset" class="btn btn-primary btn-block btn-lg" />
                            <input type="submit" value="Register " name="sub" class="btn btn-success btn-block btn-lg">
                          </div>
            </center>
                       
                       
        </form>
         
             </center>
	</div>
        </div>                
        </div>     
   
    </body>
</html>
