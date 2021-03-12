<%-- 
    Document   : login
    Created on : 12 Mar, 2021, 7:59:17 PM
    Author     : Dell
--%>

 <%@page import="java.sql.*" %>
 <%@page import="java.lang.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Hello New User</h1>
        <%
        String fname = request.getParameter("FirstName");
        String lname = request.getParameter("LastName");
        String cno = request.getParameter("Contact");
        String institute = request.getParameter("Institute");
        String email = request.getParameter("Email");
        try
        {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn=DriverManager.getConnection("jdbc:derby://localhost:1527/test");
                PreparedStatement smt=cn.prepareStatement("insert into login values(?,?,?,?,?)");
            smt.setString(1,fname);
            smt.setString(2,lname);
            smt.setString(3,cno);
            smt.setString(4, institute);
            smt.setString(5,email);
            smt.executeUpdate();
            //JOptionPane.showMessageDialog(null,cnt+" rows inserted");
            out.print("record saved successfully");
            cn.close();  
        }
        catch(Exception e)
        {
            out.print(e);
            //JOptionPane.showMessageDialog(null,e);
        }
        %> <jsp:forward page="LevelZero.jsp"/>
    </body>
</html>
