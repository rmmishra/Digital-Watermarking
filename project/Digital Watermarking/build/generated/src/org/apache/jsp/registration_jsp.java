package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            p\n");
      out.write("            {\n");
      out.write("                text-align:right;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script language=\"javascript\" type=\"text/javascript\">\n");
      out.write("            function randomString() {\n");
      out.write("                var chars = \"0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz\";\n");
      out.write("                var string_length = 8;\n");
      out.write("                var randomstring = '';\n");
      out.write("                for (var i = 0; i < string_length; i++) {\n");
      out.write("                    var rnum = Math.floor(Math.random() * chars.length);\n");
      out.write("                    randomstring += chars.substring(rnum, rnum + 1);\n");
      out.write("                }\n");
      out.write("                document.f1.randomfield.value = randomstring;\n");
      out.write("            }\n");
      out.write("            function fname()\n");
      out.write("            {\n");
      out.write("                f1.n1.value = \"\"\n");
      out.write("                //f1.n2.value=\"lastname\"\n");
      out.write("            }\n");
      out.write("            function lname()\n");
      out.write("            {\n");
      out.write("                f1.n2.value = \"\"\n");
      out.write("                //f1.n1.value=\"firstname\"\n");
      out.write("            }\n");
      out.write("            function lcheck()\n");
      out.write("            {\n");
      out.write("                t = f1.n4.value\n");
      out.write("                s = t.length\n");
      out.write("                if (s <= 3)\n");
      out.write("                    window.alert(\"password should be graterthan 3 characters\")\n");
      out.write("            }\n");
      out.write("            function pcheck()\n");
      out.write("            {\n");
      out.write("                p = f1.n4.value\n");
      out.write("                q = f1.n5.value\n");
      out.write("                if (p != q)\n");
      out.write("                {\n");
      out.write("                    window.alert(\"please check the pasword\")\n");
      out.write("                    f1.n5.value = \"\"\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function scheck()\n");
      out.write("            {\n");
      out.write("\n");
      out.write("                a = f1.n1.value\n");
      out.write("                b = f1.n2.value\n");
      out.write("                c = f1.n3.value\n");
      out.write("                d = f1.n4.value\n");
      out.write("                e = f1.n5.value\n");
      out.write("                f = f1.n6.value\n");
      out.write("                if (a == \" \" || a == \"firstname\" || b == \" \" || b == \"lastname\")\n");
      out.write("\n");
      out.write("                {\n");
      out.write("                    window.alert(\"fill in the details\");\n");
      out.write("                    //document.f1.n1.backgroundcolor=\"red\";\n");
      out.write("                    event.returnValue = false;\n");
      out.write("                }\n");
      out.write("                if (c == \"\" || d == \"\" || e == \"\" || f == \"\")\n");
      out.write("                {\n");
      out.write("                    window.alert(\"fill in the details\");\n");
      out.write("                    event.returnValue = false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("function validation()\n");
      out.write("{\n");
      out.write("var emailfilter=/^\\w+[\\+\\.\\w-]*@([\\w-]+\\.)*\\w+[\\w-]*\\.([a-z]{2,4}|\\d+)$/i;\n");
      out.write("var b=emailfilter.test(document.form2.mailid.value);\n");
      out.write("if(b===false)\n");
      out.write("{\n");
      out.write("alert(\"Please Enter a valid Mail ID\");\n");
      out.write("document.form2.mailid.focus();\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("}\n");
      out.write("function Validate()\n");
      out.write("{\n");
      out.write("var a = document.form.phone.value;\n");
      out.write("if(a==\"\")\n");
      out.write("{\n");
      out.write("alert(\"please Enter the Contact Number\");\n");
      out.write("document.form.phone.focus();\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("if(isNaN(a))\n");
      out.write("{\n");
      out.write("alert(\"Enter the valid Mobile Number(Like : 9566137117)\");\n");
      out.write("document.form.phone.focus();\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("}\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"Aliceblue\">\n");
      out.write("        <form name=\"f1\" action=\"auth.jsp\" onsubmit=\"return scheck()\" method=\"get\">\n");
      out.write("            <b>\n");
      out.write("                <h2><center>REGISTRATION FORM</h2></center>\n");
      out.write("            </b>\n");
      out.write("            <table align=\"center\" border=\"1\" cellspacing=7 cellpadding=8>>\n");
      out.write("                <tr><td colspan=\"2\"align=\"center\"><b><h4>PERSONAL DETAILS</h4></b></td></tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><p><b>Name</b></p></td>\n");
      out.write("                    <td><input type=text name=\"n1\" value=\"firstname\" required onclick=\"fname()\"/>\n");
      out.write("                        <input type=text name=\"n2\" value=\"lastname\" onclick=\"lname()\"/></td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td><p><b>Gender</b></p></td>\n");
      out.write("                    <td><select><option>-select one-</option>\n");
      out.write("                            <option>Female</option>\n");
      out.write("                            <option>Male</option>\n");
      out.write("                        </select></td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td><p><b>Country</b></p></td>\n");
      out.write("                    <td><select><option>America</option>\n");
      out.write("                            <option>Afghanistan</option>\n");
      out.write("                            <option>Australia</option>\n");
      out.write("                            <option>Belgium</option> \n");
      out.write("                            <option>Bangladesh</option>\n");
      out.write("                            <option>Bhutan/option>\n");
      out.write("                            <option>Canada</option>\n");
      out.write("                            <option>Denmark</option>\n");
      out.write("                            <option>Egypt</option>\n");
      out.write("                            <option>France</option>\n");
      out.write("\n");
      out.write("                            <option>Germany</option>\n");
      out.write("                            <option>Hongkong</option>\n");
      out.write("                            <option>India</option>\n");
      out.write("                            <option>Japan</option>\n");
      out.write("                            <option>Kuwait</option>\n");
      out.write("                            <option>Libya</option>\n");
      out.write("                            <option>Malaysia</option>\n");
      out.write("                            <option>Nepal</option>\n");
      out.write("                            <option>Oman</option>\n");
      out.write("                            <option>Pakistan</option>\n");
      out.write("                            <option>Qatar</option>\n");
      out.write("                            <option>Russia</option>\n");
      out.write("                            <option>Singapore</option>\n");
      out.write("                            <option>Thailand</option>\n");
      out.write("                            <option>United States</option>\n");
      out.write("                            <option>Vatican City</option>\n");
      out.write("                            <option>Wallis</option>\n");
      out.write("                            <option>Yemen</option>\n");
      out.write("                            <option>Zimbabwe</option>\n");
      out.write("\n");
      out.write("                        </select></td>\n");
      out.write("                </tr><br>\n");
      out.write("\n");
      out.write("                <tr><td colspan=\"2\" align=\"center\"><h4>SELECT USERNAME AND PASSWORD</h4></td></tr>\n");
      out.write("                <tr><td>\n");
      out.write("                        <p><b>Username</b></p>\n");
      out.write("                    </td>\n");
      out.write("                    <td><input type=email name=\"email\" onblur=\"validation()\"/>\n");
      out.write("                        <input type=submit value=\"Check\"/></td></tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td><p><b>Password</b></p></td>\n");
      out.write("                    <td> <input id=\"field_pwd1\" title=\"Password must contain at least 6 characters, including UPPER/lowercase and numbers.\" type=\"password\" required pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,}\" name=\"password\" onblur=\"lcheck()\"/></p></td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td><p><b>Re-type Password</b></p></td>\n");
      out.write("                   <td> <input id=\"field_pwd2\" title=\"Please enter the same Password as above.\" type=\"password\" required pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,}\" name=\"n5\"onblur=\"pcheck()\"/></td>></p>\n");
      out.write("\n");
      out.write("                   \n");
      out.write("                </tr><br><br>\n");
      out.write("\n");
      out.write("                <tr><td colspan=\"2\" align=\"center\"><h4>IF U FORGOT YOUR PASSWORD OR ID</h4></td></tr>\n");
      out.write("\n");
      out.write("                <tr><td><p><b>Security Question</b></p></td>\n");
      out.write("                    <td><select name=\"q\"><option>-select one-</option>\n");
      out.write("                            <option>Your Nationality?</option>\n");
      out.write("                            <option>Favorite pasttime?</option>\n");
      out.write("                            <option>Pet's name?</option>\n");
      out.write("                            <option>Father's Profession?</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr><td><p><b>Your Answer</b></p></td>\n");
      out.write("                    <td><input type=text name=\"n6\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td colspan=\"2\" align=\"center\"><h4>Key Generation</h4></td></tr>\n");
      out.write("                <tr><td>\n");
      out.write("                        <p><b>Key</b></p>\n");
      out.write("                    </td>\n");
      out.write("                    <td><input type=\"text\" name=\"randomfield\" value=\"\" />\n");
      out.write("                        <input type=\"button\" value=\"Generate Key\" onclick=\"randomString();\"/></td></tr>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("            <br>\n");
      out.write("            <b><center><input type=submit value=\"CREATE MY ACCOUNT\"/></center></b>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("</center>\n");
      out.write("</body>\n");
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
