/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.43
 * Generated at: 2019-11-03 10:01:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.homepage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import cloud.model.vo.Cloud;

public final class passwordCheckView_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("cloud.model.vo.Cloud");
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
      out.write("\r\n");

   Cloud loginUser = (Cloud)session.getAttribute("loginUser");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>NADO Cloud</title>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"description\" content=\"The River template project\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/nado/resources/homepage/css/bootstrap-4.1.2/bootstrap.min.css\">\r\n");
      out.write("<link href=\"/nado/resources/homepage/plugins/font-awesome-4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/nado/resources/homepage/plugins/OwlCarousel2-2.3.4/owl.carousel.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/nado/resources/homepage/plugins/OwlCarousel2-2.3.4/owl.theme.default.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/nado/resources/homepage/plugins/OwlCarousel2-2.3.4/animate.css\">\r\n");
      out.write("<link href=\"/nado/resources/homepage/plugins/jquery-datepicker/jquery-ui.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"/nado/resources/homepage/plugins/colorbox/colorbox.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/nado/resources/homepage/css/main_styles.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/nado/resources/homepage/css/responsive.css\">\r\n");
      out.write("<script src=\"/nado/resources/js/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write(".main_nav li:not(:last-of-type){\r\n");
      out.write("   margin-right: 49px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("   <div class=\"super_container\">\r\n");
      out.write("\r\n");
      out.write("      <!-- Header -->\r\n");
      out.write("\r\n");
      out.write("   <header class=\"header\">\r\n");
      out.write("      <div class=\"header_content d-flex flex-row align-items-center justify-content-start\">\r\n");
      out.write("         <div class=\"logo\"><a href=\"/nado/index.jsp\"><b>NADO</b></a></div>\r\n");
      out.write("         <div class=\"ml-auto d-flex flex-row align-items-center justify-content-start\">\r\n");
      out.write("            <nav class=\"main_nav\">\r\n");
      out.write("               <ul class=\"d-flex flex-row align-items-start justify-content-start\">\r\n");
      out.write("                     <li class=\"active\"><a href=\"/nado/index.jsp\">홈</a></li>\r\n");
      out.write("                     <li><a href=\"/nado/views/homepage/priceGuidanceView.jsp\">상품/가격 안내</a></li>\r\n");
      out.write("                     <li><a href=\"/nado/views/homepage/subscriptView.jsp\">그룹웨어 신청</a></li>\r\n");
      out.write("                     <li><a href=\"/nado/views/homepage/customerSupportView.jsp\">고객지원</a></li>\r\n");
      out.write("                     ");
 if(loginUser != null){ 
      out.write("\r\n");
      out.write("                     <li><a href=\"/nado/views/homepage/passwordCheckView.jsp\">내 정보 수정</a></li>\r\n");
      out.write("                     ");
 if(loginUser.getClId().equals("nado")){ 
      out.write("\r\n");
      out.write("                     <li><a href=\"/nado/views/homepage/cloudAdminMain.jsp\">관리 페이지로 이동</a></li>\r\n");
      out.write("                     ");
}else{ 
      out.write("\r\n");
      out.write("                     <li><a href=\"/nado/views/homepage/companyLogin.jsp\">그룹웨어로 이동</a></li>\r\n");
      out.write("                     ");
} 
      out.write("\r\n");
      out.write("                  </ul>\r\n");
      out.write("               </nav>\r\n");
      out.write("               <div class=\"book_button\">\r\n");
      out.write("                  <a href=\"/nado/cllo\">로그아웃</a>\r\n");
      out.write("               </div>\r\n");
      out.write("\r\n");
      out.write("               ");
}else{ 
      out.write("\r\n");
      out.write("               </ul>\r\n");
      out.write("               </nav>\r\n");
      out.write("               <div class=\"book_button\">\r\n");
      out.write("                  <a href=\"/nado/views/homepage/login.jsp\">로그인</a>\r\n");
      out.write("               </div>\r\n");
      out.write("               <div class=\"book_button\">\r\n");
      out.write("                  <a href=\"/nado/views/homepage/cloudEnroll.jsp\">회원가입</a>\r\n");
      out.write("               </div>\r\n");
      out.write("               ");
}
      out.write("\r\n");
      out.write("               <!-- Hamburger Menu -->\r\n");
      out.write("               <div class=\"hamburger\">\r\n");
      out.write("                  <i class=\"fa fa-bars\" aria-hidden=\"true\"></i>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("   </header>\r\n");
      out.write("\r\n");
      out.write("      <!-- Menu -->\r\n");
      out.write("\r\n");
      out.write("      <div\r\n");
      out.write("         class=\"menu trans_400 d-flex flex-column align-items-end justify-content-start\">\r\n");
      out.write("         <div class=\"menu_close\">\r\n");
      out.write("            <i class=\"fa fa-times\" aria-hidden=\"true\"></i>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"menu_content\">\r\n");
      out.write("            <nav class=\"menu_nav text-right\">\r\n");
      out.write("               <ul>\r\n");
      out.write("                  <li><a href=\"/nado/index.jsp\">홈</a></li>\r\n");
      out.write("                  <li><a href=\"/nado/views/homepage/priceGuidanceView.jsp\">상품/가격 안내</a></li>\r\n");
      out.write("                  <li><a href=\"/nado/views/homepage/subscriptView.jsp\">그룹웨어 신청</a></li>\r\n");
      out.write("                  <li><a href=\"/nado/views/homepage/customerSupportView.jsp\">고객지원</a></li>\r\n");
      out.write("                  ");
 if(loginUser != null){ 
      out.write("\r\n");
      out.write("                  <li><a href=\"/nado/views/homepage/passwordCheckView.jsp\">내 정보 수정</a></li>\r\n");
      out.write("                  ");
 if(loginUser.getClId().equals("nado")){ 
      out.write("\r\n");
      out.write("                  <li><a href=\"/nado/views/homepage/cloudAdminMain.jsp\">관리페이지로 이동</a></li>\r\n");
      out.write("                  ");
 } else { 
      out.write("\r\n");
      out.write("                  <li><a href=\"/nado/views/homepage/companyLogin.jsp\">그룹웨어로 이동</a></li>\r\n");
      out.write("                  ");
 } 
      out.write("\r\n");
      out.write("                  <br>\r\n");
      out.write("                  <li><a href=\"/nado/cllo\">로그아웃</a></li>\r\n");
      out.write("                  ");
 } else { 
      out.write("\r\n");
      out.write("                  <br>\r\n");
      out.write("                  <li><a href=\"/nado/views/homepage/login.jsp\">로그인</a></li>\r\n");
      out.write("                  <li><a href=\"/nado/views/homepage/cloudEnroll.jsp\">회원가입</a>\r\n");
      out.write("                     ");
 } 
      out.write("\r\n");
      out.write("               </ul>\r\n");
      out.write("            </nav>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <!-- Home -->\r\n");
      out.write("\r\n");
      out.write("      <div class=\"home\">\r\n");
      out.write("      \t<div class=\"container\">\r\n");
      out.write("      \t\t<div class=\"row\" style=\"margin-top:180px; text-align:center;\">\r\n");
      out.write("      \t\t\t<div class=\"col-lg-4\">\r\n");
      out.write("      \t\t\t</div>\r\n");
      out.write("      \t\t\t<div class=\"col-lg-4\">\r\n");
      out.write("      \t\t\t\t<div style=\"padding:30px; font-size:30px; color:black;\">\r\n");
      out.write("      \t\t\t\t\t\t회원정보수정\r\n");
      out.write("      \t\t\t\t</div>\r\n");
      out.write("      \t\t\t\t<div class=\"card\">\r\n");
      out.write("      \t\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("\t\t      \t\t\t\t<form id=\"check_pwd\">\r\n");
      out.write("\t\t      \t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t      \t\t\t\t\t\t<label for=\"user_pwd\" style=\"float:left; color:black;\">비밀번호확인</label>\r\n");
      out.write("\t\t      \t\t\t\t\t\t<input class=\"form-control\" type=\"password\" name=\"user_pwd\" id=\"user_pwd\" placeholder=\"비밀번호를 입력하세요.\">\t\r\n");
      out.write("\t\t      \t\t\t\t\t\t<input type=\"hidden\" name=\"user_id\" id=\"user_id\" value=\"");
      out.print( loginUser.getClId() );
      out.write("\">\t\t\t\r\n");
      out.write("\t\t      \t\t\t\t\t</div>\r\n");
      out.write("\t\t      \t\t\t\t\t<div class=\"form-group\" style=\"margin:20px 0 0 0;\">\r\n");
      out.write("\t\t      \t\t\t\t\t\t<input type=\"submit\" style=\"background:#c7bee8;color:black;\"class=\"form-control\" value=\"확인\">\t\t\t\t\t\r\n");
      out.write("\t\t      \t\t\t\t\t</div>\r\n");
      out.write("\t\t      \t\t\t\t</form>\r\n");
      out.write("      \t\t\t\t\t</div>\r\n");
      out.write("      \t\t\t\t</div>\r\n");
      out.write("      \t\t\t</div>\r\n");
      out.write("      \t\t\t<div class=\"col-lg-4\">\r\n");
      out.write("      \t\t\t</div>\r\n");
      out.write("      \t\t</div>\r\n");
      out.write("      \t</div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      <!-- About -->\r\n");
      out.write("\r\n");
      out.write("      <div class=\"about\">\r\n");
      out.write("         \r\n");
      out.write("         <!-- Footer -->\r\n");
      out.write("\r\n");
      out.write("         <footer class=\"footer\">\r\n");
      out.write("            <div class=\"footer_content\">\r\n");
      out.write("               <div class=\"container\">\r\n");
      out.write("                  <div class=\"row\">\r\n");
      out.write("                     <div class=\"col\">\r\n");
      out.write("                        <div class=\"footer_logo_container text-center\">\r\n");
      out.write("                           <div class=\"footer_logo\">\r\n");
      out.write("                              <a href=\"#\"></a>\r\n");
      out.write("                              <div>NADO</div>\r\n");
      out.write("                              <div>since 2019</div>\r\n");
      out.write("                           </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                     </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"row footer_row\">\r\n");
      out.write("\r\n");
      out.write("                     <!-- Newsletter -->\r\n");
      out.write("                     <div class=\"footer_title\">\r\n");
      out.write("                        NADO\r\n");
      out.write("                        <div class=\"footer_list\">\r\n");
      out.write("                           <ul>\r\n");
      out.write("                              <li>(주)나도 경기도 의정부시 대표이사 손혜진</li>\r\n");
      out.write("                              <li>대표전화 1111-1111 사업자등록번호: 211-88-33333 통신판매업 신고번호: 제2019-경기의정부-1111호</li>\r\n");
      out.write("                           </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                     </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                     <!-- Footer images -->\r\n");
      out.write("                     <div class=\"col-lg-3\">\r\n");
      out.write("                        <div class=\"certificates d-flex flex-row align-items-start justify-content-lg-between justify-content-start flex-lg-nowrap flex-wrap\">\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                     </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"copyright\">\r\n");
      out.write("\r\n");
      out.write("               <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("\r\n");
      out.write("               Copyright &copy;\r\n");
      out.write("               <script>document.write(new Date().getFullYear());</script>\r\n");
      out.write("               All rights reserved | This template is made with \r\n");
      out.write("               <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"#\"target=\"_blank\">NADO</a>\r\n");
      out.write("               <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("            </div>\r\n");
      out.write("         </footer>\r\n");
      out.write("      </div>\r\n");
      out.write("\t  <script src=\"/nado/resources/js/jquery.validate.js\"></script>\r\n");
      out.write("\t  <script src=\"/nado/resources/js/additional-methods.js\"></script>\r\n");
      out.write("\t  <script src=\"/nado/resources/js/messages_ko.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/js/bootstrap.js\"></script>\r\n");
      out.write("\t  <script src=\"https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js\"></script>\r\n");
      out.write("      <script type=\"text/javascript\" src=\"/nado/resources/js/junEnroll.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/css/bootstrap-4.1.2/popper.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/css/bootstrap-4.1.2/bootstrap.min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/greensock/TweenMax.min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/greensock/TimelineMax.min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/scrollmagic/ScrollMagic.min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/greensock/animation.gsap.min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/greensock/ScrollToPlugin.min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/OwlCarousel2-2.3.4/owl.carousel.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/easing/easing.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/progressbar/progressbar.min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/parallax-js-master/parallax.min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/jquery-datepicker/jquery-ui.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/plugins/colorbox/jquery.colorbox-min.js\"></script>\r\n");
      out.write("      <script src=\"/nado/resources/homepage/js/custom.js\"></script>\r\n");
      out.write("      \r\n");
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