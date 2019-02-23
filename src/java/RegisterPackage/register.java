/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RegisterPackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
/**
 *
 * @author ishwor
 */
public class register extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      PrintWriter output = response.getWriter();
      
       //data bringing from db
        String name = request.getParameter("fullName");
        String user = request.getParameter("userName");  
        String pass = request.getParameter("userPass");
        String email = request.getParameter("userEmail");
        String country = request.getParameter("userCountry");
        try{
            Class.forName("com.mysql.jdbc.Driver");
     
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/java_test1","root","");
            PreparedStatement ps = connection.prepareStatement("INSERT into register(name, user, pass, email, country)VALUES (?,?,?,?,?);");
            ps.setString (1, name);
            ps.setString (2, user);
            ps.setString (3, pass);
            ps.setString (4, email);
            ps.setString (5, country);
            
            int i = ps.executeUpdate();
            if(i>0)
                output.print("Register Successfully");
             response.sendRedirect("login.jsp");
                 connection.close();
            
        
    }catch(Exception e){
        output.print(e);
    }
    }
}
