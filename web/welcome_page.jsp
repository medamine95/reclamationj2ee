<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    </head>
    <body style="background-color: rgb(20, 154, 195);">
    
         
      
        <br><br>
        
    <center> <div class="alert alert-success"> <h1>
        
        <%  
            HttpSession sessionUser=request.getSession(false);  
            String us=(String)sessionUser.getAttribute("user");
            
            User user_x = new User();
            user_x.setUser(us);
            user_x.GetUser();
            
            out.print("Welcome ");
            out.print(user_x.getFirst_name());
            out.print(" ");
            out.print(user_x.getLast_name());
            out.print("!!!");
        %>
           <right> <a href="logout.jsp" class="btn btn-success  btn-lg">Log Out</a> </right>
        </h1> </div> </center>
            
        <br><br>
        <center>  <h1 style="color: white;font-style: italic;"> Déposer une réclamation </h1> </center>
        <br><br>
        <%
             
      
      
       String nom,prenom,city,recla;
       nom=request.getParameter("nom");
       prenom=request.getParameter("prenom");
       city=request.getParameter("city");
       recla=request.getParameter("recla");     
       try{
            //com.mysql.jdbc.Driver
            //Class.forName("org.apache.derby.jdbc.ClientDriver");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee","root","");
            Statement st= con.createStatement();
            st.executeUpdate("insert into reclamation (nomr,prenom,city,reclamationtxt)values('"+nom+"','"+prenom+"','"+city+"','"+recla+"')");
            out.println("data inserted");
           
           
       }catch (Exception e){
           out.println(e);
       }

      
            
            
            
            
            %>
              
          
        <form action="welcome_page.jsp" >
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="validationServer01">First name</label>
      <input type="text" class="form-control is-valid" id="validationServer01" name="nom" placeholder="First name" value="" required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationServer02">Last name</label>
      <input type="text" class="form-control is-valid" id="validationServer02" name="prenom" placeholder="Last name" value="" required>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="validationServer03">City/State</label>
      <input type="text" class="form-control is-valid" id="validationServer03" name="city" placeholder="City" required>
   
    </div>
      <!--
        <div class="form-group col-md-6 mb-3">
  <label for="file">Joindre photo/video:</label>
  <input id="input-b2" name="input-b2" type="file" class="form-control-file" name="imgvid" data-show-preview="false">

</div>   !-->    
    </div>
      <div class="row">          
    <div class="form-group col-md-6 mb-3">
  <label for="comment">Saisir Votre Réclamation:</label>
  <textarea class="form-control" rows="5" id="comment" name="recla"></textarea>
</div>  
     
          
      </div>       
             <center> <button class="btn btn-primary" type="submit">Submit form</button>
                       <input type="reset" value="Reset" class="btn btn-primary  " />
              
              </center>
</form>
               
    </body>
</html>
