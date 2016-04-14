
<%

    String uans = request.getParameter("ans");
    String dans = session.getAttribute("ans").toString();
    String email = session.getAttribute("email").toString();

    if (uans.equals(dans)) {
%>
<center>
	<form action="updatePass.jsp">
		Password <input type="text" name="password" required><br>
		<br> <input type="submit" value="Update">
	</form>
</center>

<%
    } else {
        response.sendRedirect("reset.jsp?err=y&email="+email);
    }
%>