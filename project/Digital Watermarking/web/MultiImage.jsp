<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %> 
    <%@ page import="pack.ImageMaker" %>  
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String imgpath=ImageMaker.path;		

MultipartRequest m = new MultipartRequest(request, imgpath, 1024 *1024 * 1024,new com.oreilly.servlet.multipart.DefaultFileRenamePolicy()); 
String bgname=m.getOriginalFileName("bg");
String fgname=m.getOriginalFileName("fg");
System.out.println(bgname+"          "+fgname);

ImageMaker imageMaker=new ImageMaker();
imageMaker.imageToImage(bgname, fgname);

Class.forName("oracle.jdbc.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "water", "123");
PreparedStatement ps = cn.prepareStatement("insert into image values(?,?,?)");
ps.setString(1, fgname);
ps.setString(2, bgname);
ps.setString(3, fgname.substring(0, 2)+bgname.substring(0, 2)+".jpg");

ps.executeUpdate();
cn.close();
response.sendRedirect("email.jsp");
%>
</body>
</html>