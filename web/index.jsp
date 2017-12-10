<%-- 
    Document   : index
    Created on : Dec 3, 2017, 5:08:03 PM
    Author     : Med Amine
--%>
 
<%@page import="java.io.PrintWriter"%>
<%@page import="beans.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<%
    
    
                   
        
            PrintWriter tr=response.getWriter();
           
    
     try{
            //com.mysql.jdbc.Driver
            //Class.forName("org.apache.derby.jdbc.ClientDriver");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee","root","");
            Statement statement = null;
            ResultSet resultSet = null;
            
            statement=con.createStatement();
            String sql ="SELECT * FROM reclamation";
            resultSet = statement.executeQuery(sql);
    
    
    %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>For A better country</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog-home.css" rel="stylesheet">
    <link href="style2.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">#For_A_Better_Country</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login_form.jsp">Login</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="login_form_responsable.jsp">Responsable</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="login_form_admin.jsp">Admin</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <nav class="navbar navbar-toggleable-md navbar-light bg-faded" style="background-color: #e3f2fd;">
<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="welcome_page.jsp">Déposer une réclamation <span class="sr-only">(current)</span></a>
      </li>
   
     
    </ul>
  </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
  <div class="row">
    <div class="col-sm-10 col-sm-offset-1" id="logout">
        <div class="page-header">
            <h3 class="reviews">Welcome</h3>
         
        </div>
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
                
            
            </ul>  
    
            <div class="tab-content">
                <div class="tab-pane active" id="comments-logout">                
                    <ul class="media-list">
                      <li class="media">
                   
                        <div class="media-body">
                          <div class="well well-lg">
                                      <% 
   while(resultSet.next()){ %>
                              <h4 class="media-heading text-uppercase reviews">  <%=resultSet.getString("nomr") %>  </h4>
                                <p class="media-comment">
                                <%=resultSet.getString("reclamationtxt") %>
                              </p>
                           
                              
                              <textarea class="form-control" name="addComment" id="addComment" rows="5"></textarea>
                              <hr>
                                 <a class="btn btn-info btn-circle text-uppercase" href="register_form.jsp" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                              <%
                             }    
                                }    
                              
                     catch (Exception e){
                      out.println(e);      }
                           
                                  %>
                          </div>              
                        </div>
                
                      </li>          
                 
                    </ul> 
                </div>
            </div>         
                 
            
           
            </div>
        </div>
	</div>
  </div>

  <div class="page-header text-center">
    <h3 class="reviews"><span class="glyphicon glyphicon-magnet"></span> Oh Yeah</h3>
  </div>
  <div class="notes text-center"><small>2017</small></div>
</div>
  
  

       
    <!-- /.container -->

    <!-- Footer -->
   
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
