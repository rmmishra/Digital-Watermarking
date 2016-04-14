<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    String email = request.getParameter("email");
    String ques = "";
    String ans = "";

    Class.forName("oracle.jdbc.OracleDriver");
    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "water", "123");
    PreparedStatement ps = cn.prepareStatement("select secques,secans from registration where username=?");
    ps.setString(1, email);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
        ques = rs.getString(1);
        ans = rs.getString(2);
        session.setAttribute("ans", ans);
        session.setAttribute("email", email);
    }

%>
<html>
<body>
	<center>
		<h2>Reset Password</h2>
		<form action="resetPass.jsp">
			Security Question <input type="text" value="<%=ques%>" disabled><br>
			<br> Security Answer&nbsp;&nbsp; <input type="text" name="ans"
				required><br> <br> <input type="submit"
				value="Update Password">
		</form>
		<% if(request.getParameter("err")!=null) {  %>

		<p style="color: red; font-size: 15pt">Invalid Answer</p>

		<% }%>
	</center>
</body>
</html>
