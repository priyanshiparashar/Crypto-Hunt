<%-- 
    Document   : LevelOne
    Created on : 12 Mar, 2021, 10:03:18 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Level One</title>
        
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="center"><div class="glow">
        <h6>Well that was Easy</h6>
        </div>
        <br>
        <form style="color: white" action="checkpass.jsp" method="post">
            <h3><em>To complete the level be sure to check everything from the hints</em>
            </h3><br>
            <b>Enter the password now:</b>
            <input type="text" name="password">
            <br>
            <br>
            <button type="submit">Check</button>
        </form>
            
        </div>
    </body>
</html>
