
<html>
<head>
<title>login</title>
<link href="/css/login.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/login.css" type="text/css">
<link rel="stylesheet" href="css/login.css" type="text/css" />

</head>
<body>
	<center>
		<div id="header">
			<h1 id="htxt">Login</h1>
		</div>
		<div id="email">
			<form action="check.jsp">
				Email &nbsp;&nbsp;&nbsp; <input type="email" name="email" required><br>
				<br> Password <input type="password" name="password" required><br>
				<br> <input type="submit" value="Login">
			</form>
		</div>
		<div id="frm">
			<a href="Forget.jsp"><button>Forget Password</button></a> <br> <br>
			<a href="registration.jsp">Click here to Register</a><br>
		</div>


		<% if(request.getParameter("err")!=null) {  %>

		<p style="color: red; font-size: 15pt">Invalid Email or Password</p>

		<% }%>
	</center>
</body>
</html>
