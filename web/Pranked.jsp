<%-- 
    Document   : Pranked
    Created on : 13 Mar, 2021, 1:11:26 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pranked(Level 2)</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div align="center">
        <form style="color: white" method="post">
            <h5 class="glow">Good going</h5><br>
            <h1>My friend asked me the password, so I sent this Employee file :P</h1>
        <a href="EMP.pdf">Employee</a>
        <h2>Enter your Password:<input type="text" name="password"></h2>
        <br>
        <button type="submit">Check!!</button>
        <%
            String password=request.getParameter("password");
        try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn=DriverManager.getConnection("jdbc:derby://localhost:1527/test");
                
                PreparedStatement ps=cn.prepareStatement("select * from level2 where password=?");
                ps.setString(1, password);
                ResultSet rs= ps.executeQuery();
      
                    if(password.equals("solarScarab"))
                    {
                  %> <jsp:forward page="Level3.jsp"/><%
                    }
                                     
 <jsp:forward page="Pranked.jsp"/>
              
      <%
                    }   
                    
         
   }
         
   catch(Exception ex)
            {
                out.print(ex);
            }
        %>
        </form>
        </div>
    </body>
</html>
