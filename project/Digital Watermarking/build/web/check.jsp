
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dbpassword="";
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "water", "123");
    PreparedStatement ps = cn.prepareStatement("select password from registration where username=?");
    ps.setString(1, email);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
       dbpassword=rs.getString(1);
    }
    if(dbpassword.equals(password))
    {
        session.setAttribute("email",email);
        session.setAttribute("password",password);
        response.sendRedirect("url.html");
    }
    else
        response.sendRedirect("home.htm?err=y");
        
        
    
    %>