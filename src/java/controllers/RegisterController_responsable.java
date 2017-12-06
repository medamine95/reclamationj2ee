package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import beans.Responsable;
import javax.servlet.http.HttpSession;

public class RegisterController_responsable extends HttpServlet 
{
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  
        {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            try 
            {
                Responsable responsable = new Responsable();
     
                responsable.setFirst_name(request.getParameter("first_name"));
                responsable.setLast_name(request.getParameter("last_name"));
                responsable.setUser(request.getParameter("user"));
                responsable.setPwd(request.getParameter("pwd"));
                
                
                
                responsable.RegisterResponsable(); //SUPRESSOR
               
                out.println("<br>");
                out.println("<br>");
                out.println("<center>Great!!!</center>");
                RequestDispatcher rd = request.getRequestDispatcher("login_form_responsable.jsp");
                rd.forward(request,response);
            } finally {out.close();}
        }
           
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
            processRequest(request, response);
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
            processRequest(request, response);
        }
        
        @Override
        public String getServletInfo() 
        {
            return "Short description";
        }
}   