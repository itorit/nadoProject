/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.43
 * Generated at: 2019-11-04 11:11:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.groupware.employee;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class employeeEnroll_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<title>NADO Groupware</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"/nado/resources/css/bootstrap.css\">\r\n");
      out.write("<script src=\"/nado/resources/js/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write(".error{\r\n");
      out.write("\tcolor:darkred;\r\n");
      out.write("\tfont-size:13px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-lg-2\"></div>\r\n");
      out.write("\t\t\t<div class=\"col-lg-8\">\r\n");
      out.write("\t\t\t\t<div class=\"container\" style=\"margin: 30px 0 30px 0\">\r\n");
      out.write("\t\t\t\t\t<h2 class=\"text-info text-center\">NADO</h2>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"card\">\r\n");
      out.write("\t\t\t\t\t<div class=\"card-body\" style=\"padding:60px\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-title\" style=\"margin-bottom:50px\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"text\">아이디 등록신청</h4>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-text\">\r\n");
      out.write("\t\t\t\t\t\t\t<form id=\"enrollForm\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"padding:10px 0 10px 0;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"emp_name\">이름</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"emp_name\" id=\"emp_name\" class=\"form-control\" placeholder=\"이름입력\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"padding:10px 0 10px 0;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"user_id\" id=\"user_id_lable\">아이디</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"user_id\" id=\"user_id\" class=\"form-control\" placeholder=\"아이디(최소5글자)\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"idAlertBox\" style=\"border-top:0;\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"padding:10px 0 0 0;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"user_pwd\">비밀번호</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"password\" name=\"user_pwd\" id=\"user_pwd\" class=\"form-control\" placeholder=\"비밀번호\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"pwdAlertBox\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"password\" id=\"user_pwd2\" class=\"form-control\" placeholder=\"비밀번호확인\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"pwdComfirm\" style=\"border-top:0;\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"padding:10px 0 10px 0;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"phone\">전화번호</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"tel\" name=\"phone\" id=\"phone\" class=\"form-control\" placeholder=\"-없이 숫자만 입력하세요.\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div id=\"phoneAlertBox\" style=\"border-top:0;\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"phoneAlertBox\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"padding:10px 0 10px 0;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"email\">이메일</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"email\" name=\"email\" id=\"email\" class=\"form-control\" placeholder=\"이메일주소\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div id=\"emailAlertBox\" style=\"border-top:0;\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"padding:10px 0 10px 0;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"emp_no\">주민등록번호</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"emp_no\" id=\"emp_no\" class=\"form-control\" placeholder=\"-없이 입력하세요.\" maxlength=\"13\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"text-align:center;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"btn-group btn-group-toggle\" data-toggle=\"buttons\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"btn btn-outline-info active\"><input type=\"radio\" name=\"marriage\" value=\"N\" checked>미혼</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label class=\"btn btn-outline-info\"><input type=\"radio\" name=\"marriage\" value=\"Y\">기혼</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div style=\"display: inline\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label for=\"postcode\" style=\"display: block;\">주소</label> <input\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\ttype=\"text\" name=\"postcode\" id=\"postcode\" placeholder=\"우편번호\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"sample6_extraAddress\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tid=\"sample6_extraAddress\" placeholder=\"참고항목\"><span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"button\" onclick=\"sample6_execDaumPostcode()\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tvalue=\"우편번호 찾기\" id=\"btn1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"address\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tid=\"address\" placeholder=\"주소\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"detailAddress\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tid=\"detailAddress\" placeholder=\"상세주소\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-gourp\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"submit\" class=\"form-control btn-info\" value=\"가입신청\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t</div> <!-- card-text 끝 -->\r\n");
      out.write("\t\t\t\t\t</div> <!-- card-body 끝 -->\r\n");
      out.write("\t\t\t\t</div> <!-- card 끝 -->\r\n");
      out.write("\t\t\t</div> <!-- col-lg-6 끝 -->\r\n");
      out.write("\t\t\t<div class=\"col-lg-2\"></div>\r\n");
      out.write("\t\t</div> <!-- 로우 끝 -->\r\n");
      out.write("\t</div> <!-- 컨테이너 끝 -->\r\n");
      out.write("\t<script src=\"/nado/resources/js/jquery.validate.js\"></script>\r\n");
      out.write("\t<script src=\"/nado/resources/js/additional-methods.js\"></script>\r\n");
      out.write("\t<script src=\"/nado/resources/js/messages_ko.js\"></script>\r\n");
      out.write("\t<script src=\"/nado/resources/js/bootstrap.js\"></script>\r\n");
      out.write("\t<script src=\"https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"/nado/resources/js/jun.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}