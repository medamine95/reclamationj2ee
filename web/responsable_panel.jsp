<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="beans.Responsable"%>
<%@page import="java.io.PrintWriter"%>


<%
         try{
            //com.mysql.jdbc.Driver
            //Class.forName("org.apache.derby.jdbc.ClientDriver");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee","root","");
            Statement statement = null;
            ResultSet resultSet = null;
            ResultSet resultSet2 = null;

            String recla=null;

            recla =request.getParameter("recla");

            Statement st= con.createStatement();

        //    st.executeUpdate("Update reclamation set replytxt = '"+recla+"' where reclamation.reclamationtxt='fama zebla fel kayas' ");
    
            Statement st2= con.createStatement();
            String sql2 ="INSERT INTO reply (id_reply) SELECT id FROM reclamation   ";
            st2.executeUpdate(sql2);
         
            Statement st3= con.createStatement();
            String sql3 ="Update reply, reclamation set replytxt = '"+recla+"' ";
            st3.executeUpdate(sql3);
           
            statement=con.createStatement();
            String sql ="select distinct * FROM reclamation,reply,responsable";
            resultSet = statement.executeQuery(sql);
      
      
    %>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome </title>      
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

      <!-- Bootstrap core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
  
                        
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    </head>
    <body style="background-color:rgb(20, 154, 195);">
    
          <br><br>
        <br><br>
        <br><br>
        <br><br>
        
    <center> <div class="alert alert-success"> <h1>
        
                 <%  
            HttpSession sessionUser=request.getSession(false);  
            String us=(String)sessionUser.getAttribute("user");
            
            Responsable Responsable = new Responsable();
            Responsable.setUser(us);
            Responsable.GetUser();
            
            out.print("Welcome ");
            out.print(Responsable.getUser());
            
            
            out.print(" !");
        %>
     
        </h1> </div> </center>
                
        <br><br>
        <center> <a href="logout.jsp" class="btn btn-success  btn-lg">Log Out</a> </center>
        <br><br>
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
                                <hr>
                                <h5 style="color: red;">  <%  Responsable :        out.print(Responsable.getUser());%>
 </h5>
                                    
                                <p>     <%= resultSet.getString("replytxt") %> </p>

                              </p>
                           
                              <form action="responsable_panel.jsp">
                                <textarea class="form-control" rows="3" id="comment" name="recla" required></textarea>
                              <hr>
                              <button type="submit"class="btn btn-info btn-circle text-uppercase" href="#" id="reply" ><span class="glyphicon glyphicon-share-alt"></span> Reply </button>    
                                      </form>
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
        
                         
    </body>
</html>
