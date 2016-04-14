<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String currPass = request.getParameter("currpass");
    String nPass = request.getParameter("npass");
    String cPass = request.getParameter("cpass");

    String sPass = session.getAttribute("password").toString();
    String email = session.getAttribute("email").toString();

    if (sPass.equals(currPass)) {
        Class.forName("oracle.jdbc.OracleDriver");
        Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "water", "123");
        PreparedStatement ps = cn.prepareStatement("update registration set password=? where username=?");
        ps.setString(1, nPass);
        ps.setString(2, email);
        ps.executeUpdate();
        response.sendRedirect("ChangePass.jsp?success=y");
    } else {
        response.sendRedirect("ChangePass.jsp?err=y");
    }
%>