<%-- 
    Document   : checkpass
    Created on : 13 Mar, 2021, 12:14:31 AM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Password Level 1</title>
    </head>
    <body>
        <%
        String password=request.getParameter("password");
        try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn=DriverManager.getConnection("jdbc:derby://localhost:1527/test");
                
                PreparedStatement ps=cn.prepareStatement("select * from level1 where password=?");
                ps.setString(1, password);
                ResultSet rs= ps.executeQuery();
                if(rs.next()==true)
                {
                out.print("Welcome User");
             
                    
                    if(password.equals("shakespeare"))
                    {
                  %> <jsp:forward page="Pranked.jsp"/><%
                    }
                    else if(password.equals(""))
                    {
                       
                       %> <jsp:forward page="LevelOne.jsp"/><%
                        
                    }
                    
                }
                 

  else
                {
                    
                  
  %>
                   

 <jsp:forward page="LevelOne.jsp"/>
              
      <%
                    }   
                    
         
   }
         
   catch(Exception ex)
            {
                out.print(ex);
            }
        %>
	    </body>
</html>
