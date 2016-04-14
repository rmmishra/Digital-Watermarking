
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="pack.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<%
            try
            {
                String fn = request.getParameter("n1");
                String ln = request.getParameter("n2");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String qu = request.getParameter("q");
                String a = request.getParameter("n6");
                String r = request.getParameter("randomfield");

                
               Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","water", "123");
                PreparedStatement ps = con.prepareStatement("insert into registration values(?,?,?,?,?,?,?)");
                ps.setString(1, fn);
                ps.setString(2, ln);
                ps.setString(3, email);
                ps.setString(4, password);
                ps.setString(5, qu);
                ps.setString(6, a);
                ps.setString(7, r);
                
					             
            ResultSet rs =ps.executeQuery();
					 
	if (rs.next())
        { 
           RequestDispatcher rd=request.getRequestDispatcher("index_1.jsp");
               rd.forward(request, response);
                    }
         else
            {
               RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
                        rd.forward(request, response);
            }
            }
            catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }
            catch (SQLException e) 
            {
            System.out.println(e);
             } 
        catch(Exception e)
        {
       System.out.println(e);
        }
                        
       finally{
            out.close();
            }

        
         
            
        
            
        
        
                %>
</body>
</html>
