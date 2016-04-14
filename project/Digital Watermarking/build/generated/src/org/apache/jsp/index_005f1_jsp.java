package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" \n");
      out.write("<html>\n");
      out.write("    <head><title> login </title>\n");
      out.write("        <link href=\"/css/login.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/login.css\" type=\"text/css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/login.css\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("   <body>\n");
      out.write("    <center>\n");
      out.write("        <div id=\"header\">\n");
      out.write("        <h1 id=\"htxt\">Login</h1>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"email\">\n");
      out.write("        <form action=\"check.jsp\">\n");
      out.write("            Email &nbsp;&nbsp;&nbsp; <input type=\"email\" name=\"email\" required><br><br>\n");
      out.write("            Password <input type=\"password\" name=\"password\" required><br><br>\n");
      out.write("            <input type=\"submit\" value=\"Login\">\n");
      out.write("        </form></div>\n");
      out.write("        <div id=\"frm\">\n");
      out.write("            <a href=\"Forget.jsp\"><button>Forget Password</button></a>\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <a href=\"registration.jsp\">Click here to Register</a><br>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        ");
 if(request.getParameter("err")!=null) {  
      out.write("\n");
      out.write("           \n");
      out.write("        <p style=\"color:red;font-size: 15pt\">Invalid Email or Password</p>   \n");
      out.write("      \n");
      out.write("        ");
 }
      out.write("\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
