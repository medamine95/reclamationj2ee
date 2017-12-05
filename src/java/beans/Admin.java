package beans;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.*;
import database.Db_Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
//karfa
public class Admin 
{
    private String first_name,last_name,user,pwd;
    
    public Admin()
    {
        first_name="";
        last_name="";
        user="";
        pwd="";
    }        
 
    //----------------------------------//
    
    

    public String getUser() 
    {
        return user;
    }

    public String getPwd() 
    {
        return pwd;
    }
    
    //----------------------------------//
    
    
    public void setUser(String user) 
    {
        this.user=user;
    }

    public void setPwd(String pwd) 
    {
        this.pwd=pwd;
    }
    
    //----------------------------------//
  
    
    
    public static boolean LoginAdmin(String user,String pwd) 
    {
            boolean check =false;
            try 
            {      
                Db_Connection dbconn=new Db_Connection();
                Connection myconnection= dbconn.Connection();
                
                PreparedStatement ps1 =myconnection.prepareStatement("select * from loginadmin where user=? and password=?");

                ps1.setString(1, user);
                ps1.setString(2, pwd);
                ResultSet rs1 =ps1.executeQuery();
                check = rs1.next();

                myconnection.close();        
            }catch(Exception e){e.printStackTrace();}
            
            return check;    
    }
    
    //----------------------------------//
    
    public void GetUser()
    {
            try 
            {      
                Db_Connection dbconn=new Db_Connection();
                Connection myconnection= dbconn.Connection();
                
                String sqlString = "SELECT * FROM users WHERE user = '"+user+"'";
                Statement myStatement = myconnection.createStatement();
                ResultSet rs=myStatement.executeQuery(sqlString);

                while(rs.next())
                {
                    first_name= rs.getString("first_name");
                    last_name = rs.getString("last_name");
                    user= rs.getString("user");
                    pwd = rs.getString("password");
                }
                
                myStatement.close();
                myconnection.close();
                
            } catch (SQLException ex) {Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);} 
            
    }
    
    //----------------------------------//

}