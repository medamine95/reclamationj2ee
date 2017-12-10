<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Admin"%>
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
            
            Admin Admin_user = new Admin();
            Admin_user.setUser(us);
            Admin_user.GetUser();
            
            out.print("Welcome ");
            out.print(Admin_user.getUser());
            
            out.print(" !");
          
            try{ 
                
            String x1 = request.getParameter("userd");
                
          
             Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee","root","");
            Statement statement = null;
            Statement st = null;
            ResultSet resultSet = null;
            statement=con.createStatement();
            String sql ="select * FROM users";
            resultSet = statement.executeQuery(sql);
             String resusr=null;
           
      

        %>
        </h1> </div> </center>
                
        <br><br>
        <center> <a href="logout.jsp" class="btn btn-success  btn-lg">Log Out</a> </center>
        <br><br>
        <div class="container">

        <h4> Users</h4>
        <table class="table table-bordered">
            <tr>
                
                <th> Nom</th>  <th> prenom</th>  <th> login</th>  <th>Action</th>

            </tr>
          <%    while(resultSet.next()){ %>   
            
            <tr>
                <td> <%=resultSet.getString("first_name") %>            </td>     <td> <%=resultSet.getString("last_name") %>  </td>  <td><%=resultSet.getString("username") %>      </td>   
                
                <td>
                    
                    <%    
                      resusr=resultSet.getString("username");  
                        
                  
                    
                    %>   
                    
               
                    
                    <form  action="admin_panel.jsp" method="post"><input type="Submit" value="Delete" class="btn btn-danger"  name="submit" /></form>               
                     </td>

               
                
            </tr>
            
              <%
                             } 
                             
                             String verif=request.getParameter("submit");
                             if (verif.equals("Delete")){




                             st=con.createStatement();
                          st.executeUpdate("DELETE FROM users WHERE username ='"+resusr+"'  ");
                            } else{
                            //
                            }
                          }    
                              
                     catch (Exception e){
                      out.println(e);      }
                           
                                  %>
            
            
            
        </table>
       <%  
          
            try{ 
                   Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee","root","");
                 

            Statement statement2 = null;
            Statement st3 = null;


           ResultSet resultSet2 = null;
           statement2=con.createStatement();
           String sql2 ="select * FROM responsable";
           resultSet2 = statement2.executeQuery(sql2);
           String resresp=null;


        %>    
               
                    <h4>Responsables</h4>            
        <table class="table table-bordered table-light"> 
            <tr>
                
                <th> Nom</th>  <th> prenom</th>  <th> login</th>  <th>Action</th>

            </tr>
          <%    while(resultSet2.next()){ %>   
            
            <tr>
                <td > <%=resultSet2.getString("first_name") %>  </td>     <td> <%=resultSet2.getString("last_name") %>  </td>  <td ><%=resultSet2.getString("username") %> </td>
                
                <td>   
                    <%    
                     resresp=resultSet2.getString("username");  
                        
                  
                    
                    %>   
                    
               
                    
                    <form  action="admin_panel.jsp" method="post"><input type="Submit" value="DeleteResp" class="btn btn-danger"  name="submit2" /></form>       
                
                
                </td>

               
                
            </tr>
            
              <%
                             }  
           String verif2=request.getParameter("submit2");
                             if (verif2.equals("DeleteResp")){




                            st3=con.createStatement();
                          st3 .executeUpdate("DELETE FROM responsable WHERE username ='"+resresp+"'  ");
                            } else{
                            //
                                }
                                }    
                              
                     catch (Exception e){
                      out.println(e);      }
                           
                                  %>
            
        </table>
          
        </div>                  
    </body>
</html>
