<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    String email = request.getParameter("email");
    String key = "";
   

    Class.forName("oracle.jdbc.OracleDriver");
    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "water", "123");
    PreparedStatement ps = cn.prepareStatement("select key from registration where username=?");
    ps.setString(1, email);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
        key = rs.getString(1);
       session.setAttribute("email", email);
    }

%>
<html>
<head>
<title>JSP Page</title>
</head>
<body>
	<center>
		<form style="position: absolute; top =80; left: 300;"
			action="home.htm">
			<table align="center" border="1">
				<tr>
					<td><p>
							<b>Your Key</b>
						</p></td>
					<td><input type="text" value="<%=key%>" disabled />
						</center> <br> <br></td>
				</tr>
			</table>
			<br> <b><center>
					<input type=submit value="SUBMIT" />
				</center></b>

		</form>
		<% if(request.getParameter("err")!=null) {  %>

		<p style="color: red; font-size: 15pt">Invalid user</p>

		<% }%>
	
</body>
</html>
