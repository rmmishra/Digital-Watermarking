<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

    String email = session.getAttribute("email").toString();
    String pass = request.getParameter("password");

    Class.forName("oracle.jdbc.OracleDriver");
    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "water", "123");
    PreparedStatement ps = cn.prepareStatement("update registration set password=? where username=?");
    ps.setString(1, pass);
    ps.setString(2, email);
    ps.executeUpdate();

%>

<center><h2>Password Updated..</h2></center>
<center><a href="home.htm">Home</a></center>