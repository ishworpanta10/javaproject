/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ishwor
 */
public class login extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter output = response.getWriter();
       
       String user=request.getParameter("username");
       String pass=request.getParameter("password");
       
       try{
            Class.forName("com.mysql.jdbc.Driver");
            ResultSet rs = null;
     
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/java_test1","root","");
            PreparedStatement ps = connection.prepareStatement("SELECT user, pass FROM register;");
           
           rs = ps.executeQuery();
            while( rs.next()){
                
                String usern = rs.getString("user");
                String passp = rs.getString("pass");
                
                if(usern.equals(user) && passp.equals(pass)){
                    output.print("Successfull Login");
                    response.sendRedirect("index.html");
                 }
            }
          
                output.print("UnSuccessfull Login");
                response.sendRedirect("login.jsp");
                 connection.close();
            
        
    }catch(Exception e){
        output.print(e);
    }

    }
}
