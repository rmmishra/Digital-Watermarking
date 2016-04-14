<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p align="right">
		<a href="url.html"><b>Water Marking</b></a><br>
		<a href="ChangePass.jsp"><b>Change Password</b></a><br> 
		<a href="index_1.jsp"><b>Signout</b></a>
		
	</p>


<center>
<table border="2">
<tr><th>S_NO</th><th>Text/Image</th><th>BackGroung Image</th><th>Combined Image</th></tr>

<%
int n=1;
Class.forName("oracle.jdbc.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "water", "123");
PreparedStatement ps = cn.prepareStatement("select * from image");

ResultSet rs=ps.executeQuery();
while(rs.next())
{
	
%>
   
   <tr><td><%=n%></td>
<td><img alt="NA" src="water-mark-image/<%=rs.getString("fgimg")%>" height="200" width="400" /></td>
<td><img alt="NA" src="water-mark-image/<%=rs.getString("bgimg")%>" height="200" width="400" /></td>
<td><img alt="NA" src="water-mark-image/<%=rs.getString("cmbimg")%>" height="200" width="400" /></td></tr>
   
<%
n++;
}
cn.close();

%>

</table>
</center>

</body>
</html>