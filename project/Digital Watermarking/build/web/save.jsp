<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%

    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String mobile = request.getParameter("mobile");
    String sques = request.getParameter("sques");
    String sans = request.getParameter("sans");

    Class.forName("oracle.jdbc.OracleDriver");
    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "trg1", "trg1");
    PreparedStatement ps = cn.prepareStatement("insert into userinfo values(?,?,?,?,?)");
    ps.setString(1, email);
    ps.setString(2, password);
    ps.setString(3, mobile);
    ps.setString(4, sques);
    ps.setString(5, sans);
    ps.executeUpdate();

%>
<h3>Registered Successfully</h3><br><br>
<a href="index.jsp">Click here to login</a>