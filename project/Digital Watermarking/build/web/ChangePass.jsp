<html>
    <body>
    <center>
        <h2>Change Password</h2>
        <form action="change.jsp">
            Current Password  <input type="text" name="currpass" required><br><br>
            New Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="npass" required><br><br>
            Confirm Password <input type="text" name="cpass" required><br><br>
            <input type="submit" value="Update Password">
            
        </form>
        <p> <a href="index_1.jsp"><b>Signout</b></a><br>
            <a href="url.html">Proceed</a></p>
         
        <%if(request.getParameter("err")!=null)
        {%>
        
        <p style="color:red;font-size: 15pt">Invalid Current Password</p>   
       
        <% }%>
        
         
        <%if(request.getParameter("success")!=null)
        {%>
        
        <p style="color:green;font-size: 15pt">Password Updated</p> </br>  
        <a href="home.htm">Home</a>
       
        <% }%>
    </center>
    </body>
</html>