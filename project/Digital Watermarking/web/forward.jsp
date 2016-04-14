
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DBConnection"%>
<%
    String e = request.getParameter("email");
    String p = request.getParameter("password");
    String click = request.getParameter("button");

    if (click.equals("Forget Password")) {
        session.setAttribute("user", e);
        response.sendRedirect("Forget.jsp");
    } else {
        Connection con = DBConnection.getCon();
        PreparedStatement ps = con.prepareStatement("select password,name from register where email=?");
        ps.setString(1, e);
        ResultSet rs = ps.executeQuery();
        if (rs.next())
        {
        String dp = rs.getString(1);
        String name = rs.getString(2);
        
        if(e.equals("admin@gmail.com")&& p.equals("admin"))
        {
            session.setAttribute("user", name);
            session.setAttribute("email", e);

            response.sendRedirect("welcome.jsp"); 
        }

       else if (dp.equals(p)) {
            session.setAttribute("user", name);
            session.setAttribute("email", e);

            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("index.html?err=a");
        }
    }
        else
        {
              response.sendRedirect("index.html?err=Not Registered");
        }
    }
%>