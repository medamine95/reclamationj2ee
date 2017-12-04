<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>      
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
    
          <br><br>
        <br><br>
        <br><br>
        <br><br>
        
    <center> <div class="alert alert-success"> <h1>
        
        <%  
            HttpSession sessionUser=request.getSession(false);  
            String us=(String)sessionUser.getAttribute("user");
            
            User user_of_techworld3g = new User();
            user_of_techworld3g.setUser(us);
            user_of_techworld3g.GetUser();
            
            out.print("Welcome ");
            out.print(user_of_techworld3g.getFirst_name());
            out.print(" ");
            out.print(user_of_techworld3g.getLast_name());
            out.print("!!!");
        %>
        </h1> </div> </center>
                
        <br><br>
        <center> <a href="logout.jsp" class="btn btn-success  btn-lg">Log Out</a> </center>
        <br><br>
        
                         
    </body>
</html>
