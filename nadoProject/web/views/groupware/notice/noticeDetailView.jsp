<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="employee.model.vo.Employee,notice.model.vo.Notice, java.util.ArrayList"%>
<%
   Employee loginEmp = (Employee) session.getAttribute("loginEmp"); //267, 321 사용자 프로필
   String manager = loginEmp.getIdLevel(); //340 줄

   // 521줄 560줄 까지 관리자 메뉴 
   
   Notice notice = (Notice)request.getAttribute("notice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>NADO</title>


<style type="text/css">
div#ir1content{
	width:740px;
	height:300px;
}
.viewww{
	border : none;
}
</style>
<script type="text/javascript" src="/nado/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/nado/resources/groupware/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>


<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="/nado/resources/groupware/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome 사이드 메뉴 앞에 아이콘 생성됨-->
<link rel="stylesheet" href="/nado/resources/groupware/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="/nado/resources/groupware/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style 전체적인 테마스타일 바뀜 왼쪽 사이드 메뉴도 바뀜-->
<link rel="stylesheet" href="/nado/resources/groupware/dist/css/AdminLTE.min.css">

<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. 색상들 변경됨-->
<link rel="stylesheet" href="/nado/resources/groupware/dist/css/skins/_all-skins.min.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="/nado/resources/groupware/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>


<body class="hold-transition skin-purple-light sidebar-mini">

   <!-- 공통 -->
   <div class="wrapper">
      <header class="main-header">
      
         <!-- 로고 Logo -->
         <a href="/nado/views/groupware/main.jsp" class="logo"> <!-- 미니 사이드바 50x50px 미니 로고 mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>NADO</b></span> <!-- 모바일 디바이스 사이즈 로고 logo for regular state and mobile devices -->
            <span class="logo-lg"><b>NADO</b>Groupware</span>
         </a>
         
         <!-- 일반 사원 페이지 -->
         <% if (manager.equals("G") || manager.equals("M")) { %>
         <!-- 헤더 네비바 Header Navbar: style can be found in header.less -->
         <nav class="navbar navbar-static-top">
            <!-- 토글 버튼 Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button"> 
               <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
               <ul class="nav navbar-nav">
                  <!-- 쪽지 토글 버튼 Messages: style can be found in dropdown.less-->
                  <li class="dropdown messages-menu">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                        <i class="fa fa-envelope"></i> 
                           <span class="label label-success">4</span>
                     </a>
                     <ul class="dropdown-menu">
                        <li class="header">4개의 새로운 쪽지가 있습니다.</li>
                        <li>
                           <!-- 쪽지 토글 눌렀을 때 드롭다운 메뉴 inner menu: contains the actual data -->
                           <ul class="menu">
                              <!-- 쪽지 내용 부분 시작 start message --> 
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img src="/nado/resources/groupware/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                    </div>
                                    <h4>보낸사람 이름<small><i class="fa fa-clock-o"></i> 시간</small></h4>
                                    <p>쪽지 내용</p>
                                 </a>
                              </li>
                              <!-- 쪽지 내용 부분 끝 end message -->
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img src="/nado/resources/groupware/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                    </div>
                                    <h4>AdminLTE Design Team <small><i class="fa fa-clock-o"></i> 2시간</small></h4>
                                    <p>Why not buy a new awesome theme?</p>
                                 </a>
                              </li>
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img src="/nado/resources/groupware/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                    </div>
                                    <h4>Developers <small><i class="fa fa-clock-o"></i>오늘</small></h4>
                                    <p>Why not buy a new awesome theme?</p>
                                 </a>
                              </li>
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img src="/nado/resources/groupware/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image"></div>
                                    <h4>Sales Department <small><i class="fa fa-clock-o"></i>어제</small></h4>
                                    <p>Why not buy a new awesome theme?</p>
                                 </a>
                              </li>
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img
                                          src="/nado/resources/groupware/dist/img/user4-128x128.jpg"
                                          class="img-circle" alt="User Image">
                                    </div>
                                    <h4>Reviewers <small><i class="fa fa-clock-o"></i> 2일</small></h4>
                                    <p>Why not buy a new awesome theme?</p>
                                 </a>
                              </li>
                           </ul>
                        </li>
                        <li class="footer"><a href="#">모든 쪽지 보기</a></li>
                     </ul>
                  </li><!-- 쪽지 드롭다운 메뉴 끝 -->
                  
                  <!-- 알림 토글 버튼 Notifications: style can be found in dropdown.less -->
                  <li class="dropdown notifications-menu">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                         <i class="fa fa-bell"></i> <span class="label label-warning">10</span>
                     </a>
                     <ul class="dropdown-menu">
                        <li class="header">10개의 알림이 있습니다.</li>
                        <li>
                           <!-- 알림 토글 버튼 드롭다운 메뉴 inner menu: contains the actual data -->
                           <ul class="menu">
                              <li>
                                 <a href="#"> <i class="fa fa-clipboard text-blue"></i>
                                    전자결재가 승인되었습니다.
                                 </a>
                              </li>
                              <li>
                                 <a href="#"> <i class="fa fa-calendar text-yellow"></i>
                                    오늘의 일정이 있습니다.
                                 </a>
                              </li>
                              <li>
                                 <a href="#"> <i class="fa fa-envelope text-purple"></i>
                                    새로운 메일이 도착했습니다.
                                 </a>
                              </li>
                              <li>
                                 <a href="#"> <i class="fa fa-table text-green"></i>
                                    새로운 댓글이 달렸습니다.
                                 </a>
                              </li>
                              <li>
                                 <a href="#"> <i class="fa fa-calendar-check-o text-red"></i>
                                    예약신청이 반려되었습니다.
                                 </a>
                              </li>
                           </ul>
                        </li>
                        <li class="footer"><a href="#">전체 보기</a></li>
                     </ul>
                  </li>
                  <!-- 알림 토글 메뉴 끝 -->
                     
                  <!-- 채팅 토글 버튼 Control Sidebar Toggle Button -->
                  <li>
                     <a href="#" data-toggle="control-sidebar">
                        <i class="fa fa-wechat"></i>
                     </a>
                  </li>
                  <!-- 채팅 토글 끝 -->
                  
                  <!-- 상단 프로필 영역 User Account: style can be found in dropdown.less -->
                  <li class="dropdown user user-menu">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                        <!-- 오른쪽 상단 프로필 사진 -->
                        <% if(loginEmp.getMyProfile() != null) { %>
                        <img src="/nado/resources/groupware/employee_profile/<%= loginEmp.getMyProfile() %>" class="user-image" alt="User Image"> 
                        <% } else { %>
                        <img src="/nado/resources/groupware/employee_profile/default-profile.png" class="user-image" alt="User Image"> 
                        <% } %>
                        <span class="hidden-xs"><%= loginEmp.getEmpName() %></span>
                     </a>
                     <!-- 프로필 부분 클릭했을 때 드롭다운 메뉴 -->
                     <ul class="dropdown-menu">
                        <!-- 프로필 사진 User image -->
                        <li class="user-header">
                        <% if(loginEmp.getMyProfile() != null) { %>
                        <img   src="/nado/resources/groupware/employee_profile/<%= loginEmp.getMyProfile() %>" class="img-circle" alt="User Image">
                        <% } else { %>
                        <img src="/nado/resources/groupware/employee_profile/default-profile.png" class="img-circle" alt="User Image">
                        <% } %>
                           <p><%= loginEmp.getDeptName() %> <%= loginEmp.getJobName() %></p>
                           <p><%= loginEmp.getEmpName() %></p>
                        </li>
                        <!-- 프로필 수정, 로그아웃 버튼 Menu Footer-->
                        <li class="user-footer">
                           <div class="pull-left">
                              <a href="#" class="btn btn-default btn-flat">프로필</a>
                           </div>
                           <div class="pull-right">
                              <a href="/nado/emplo" class="btn btn-default btn-flat">로그아웃</a>
                           </div>
                        </li>
                     </ul>
                  </li>
                  <!-- 프로필 영역 끝 -->
               </ul>
            </div>
         </nav>
      </header>

      <!-- 왼쪽 사이드바 시작 Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
         <!-- sidebar: style can be found in sidebar.less -->
         <section class="sidebar">
            <!-- 왼쪽 사이드바 사용자 정보 부분 Sidebar user panel -->
            <div class="user-panel">
               <div class="user-panel-image">
                  <% if(loginEmp.getMyProfile() != null) { %>
                  <img src="/nado/resources/groupware/employee_profile/<%= loginEmp.getMyProfile() %>" class="img-circle" alt="User Image">
                  <% } else { %>
                  <img src="/nado/resources/groupware/employee_profile/default-profile.png" class="img-circle" alt="User Image">
                  <% } %>
               </div>
               <br>
               <div class="user-panel-info">
                  <p><%= loginEmp.getDeptName() %> <%= loginEmp.getJobName() %> <%= loginEmp.getEmpName() %></p>
                  <input type="button" id="logout" onclick="location='/nado/emplo'" value="로그아웃">
               </div>
            </div>

            <!-- 왼쪽 사이드바 검색 기능 부분 search form -->
            <form action="#" method="get" class="sidebar-form">
               <div class="input-group">
                  <input type="text" name="q" class="form-control" placeholder="검색">
                  <span class="input-group-btn">
                     <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                        <i class="fa fa-search"></i>
                     </button>
                  </span>
               </div>
            </form>
            <!-- 왼쪽 사이드바 검색 부분 끝 /.search form -->

            <!-- 왼쪽 사이드바 메뉴 시작 sidebar menu: : style can be found in sidebar.less  -->
            <ul class="sidebar-menu" data-widget="tree">

               <!-- 전자결재 메뉴 -->
               <li class="treeview">
                  <a href="#"> <i class="fa fa-clipboard"></i> <span>전자결재</span>
                     <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
                  </a>
                  <ul class="treeview-menu">
                     <li>
                        <a href="/nado/views/groupware/approval/approvalSendForm.jsp">
                           <i class="fa fa-angle-right"></i> 기안하기
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/approval/approvalListView.jsp">
                           <i class="fa fa-angle-right"></i> 진행중인 문서
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/approval/approvalDocumentView.jsp">
                           <i class="fa fa-angle-right"></i> 문서함
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/approval/approvalSettingView.jsp">
                           <i class="fa fa-angle-right"></i> 설정
                        </a>
                     </li>
                  </ul>
               </li>

               <!-- 조직도 메뉴 -->
               <li class="notreeview">
                  <a href="/nado/emplist.ad"> 
                     <i class="fa fa-group"></i> <span>조직도</span>
                  </a>
               </li>

               <!-- 전자메일 메뉴 -->
               <li class="treeview">
                  <a href="#"> <i class="fa fa-envelope"></i> <span>전자메일</span> 
                     <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
                  </a>
                  <ul class="treeview-menu">
                     <li>
                        <a href="/nado/views/groupware/email/emailSendForm.jsp">
                           <i class="fa fa-angle-right"></i> 메일쓰기
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/email/emailSelfForm.jsp">
                           <i class="fa fa-angle-right"></i> 내게 쓰기
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/email/emailListView.jsp">
                           <i class="fa fa-angle-right"></i> 전체 메일함
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/email/emailSendView.jsp">
                           <i class="fa fa-angle-right"></i> 보낸 메일함
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/email/emailReceiveView.jsp">
                           <i class="fa fa-angle-right"></i> 받은 메일함
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/email/emailSaveView.jsp">
                           <i class="fa fa-angle-right"></i> 임시 메일함
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/email/emailSelfView.jsp">
                           <i class="fa fa-angle-right"></i> 내게 쓴 메일함
                        </a>
                     </li>
                     <li>
                        <a href="/nado/views/groupware/email/emailDeleteView.jsp">
                           <i class="fa fa-angle-right"></i>휴지통
                        </a>
                     </li>
                  </ul>
               </li>

               <!-- 캘린더 메뉴 -->
               <li class="notreeview">
                  <a href="/nado/views/groupware/calendar/calendarMainView.jsp"> 
                     <i class="fa fa-calendar-o"></i> <span>캘린더</span>
                  </a>
               </li>

               <!-- 게시판 메뉴 -->
               <li class="treeview">
                  <a href="#"> <i class="fa fa-table"></i> <span>게시판</span> 
                     <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
                  </a>
                  <ul class="treeview-menu">
                     <li>
                        <a href="/nado/nlist.ad">
                           <i class="fa fa-angle-right"></i>공지사항
                        </a>
                     </li>
                     <li>
                        <a href="/nado/surlist">
                           <i class="fa fa-angle-right"></i>설문조사
                        </a>
                     </li>
                     <li>
                        <a href="/nado/blist">
                           <i class="fa fa-angle-right"></i>자유게시판
                        </a>
                     </li>
                  </ul>
               </li>

               <!-- 주소록 메뉴 -->
               <li class="treeview">
                  <a href="#"> <i class="fa fa-address-book"></i> <span>주소록</span> 
                     <span class="pull-right-container"> <i] class="fa fa-angle-left pull-right"></i></span>
                  </a>
                  <ul class="treeview-menu">
                     <li>
                        <a href="pages/tables/simple.html">
                           <i class="fa fa-angle-right"></i> 주소록 추가
                        </a>
                     </li>
                     <li>
                        <a href="pages/tables/data.html">
                           <i class="fa fa-angle-right"></i> 개인 주소록
                        </a>
                     </li>
                     <li>
                        <a href="pages/tables/data.html">
                           <i class="fa fa-angle-right"></i> 공유 주소록
                        </a>
                     </li>
                  </ul>
               </li>

               <!-- 예약 메뉴 -->
               <li class="treeview">
                  <a href="#"> <i class="fa fa-calendar-check-o"></i> <span>예약</span>
                     <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
                  </a>
                  <ul class="treeview-menu">
                     <li>
                        <a href="pages/forms/general.html">
                           <i class="fa fa-angle-right"></i> 예약하기
                        </a>
                     </li>
                     <li>
                        <a href="pages/forms/advanced.html">
                           <i class="fa fa-angle-right"></i> 예약 조회
                        </a>
                     </li>
                     <li>
                        <a href="pages/forms/editors.html">
                           <i class="fa fa-angle-right"></i> 나의 예약 조회
                        </a>
                     </li>
                     <li>
                        <a href="pages/forms/editors.html">
                           <i class="fa fa-angle-right"></i> 예약 관리
                        </a>
                     </li>
                  </ul>
               </li>
               
               <!-- 마이페이지 메뉴 -->
               <li class="treeview">
                  <a href="#"> <i class="fa fa-user-circle"></i> <span>마이페이지</span> 
                     <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
                  </a>
                  <ul class="treeview-menu">
                     <li>
                        <a href="#">
                           <i class="fa fa-angle-right"></i> 근태 관리
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="fa fa-angle-right"></i> 쪽지함
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="fa fa-angle-right"></i> 내 정보 관리
                        </a>
                     </li>
                  </ul>
               </li>
            </ul>
         </section>
         <!-- 왼쪽 사이드바 메뉴 끝 /.sidebar -->
      </aside>

      <!-- 가운데 작업 영역 Content Wrapper. Contains page content -->
      <div class="content-wrapper">
         <!-- 가운데 작업 영역 헤더 부분 Content Header (Page header) -->
         <section class="content-header">
            <h1>공지사항 <small>Notice</small></h1>
            <ol class="breadcrumb">
               <li><a href="/nado/views/groupware/main.jsp"><i class="fa fa-home"></i> 홈</a></li>
               <li class="active">홈</li>
            </ol>
         </section>

<!-- 가운데 메인 작업 영역 Main content -->
         <section class="content">










<br>
<br>


<% if(loginEmp.getUserId().equals(notice.getUserId())){ %><!-- 본인이 쓴 글일 때 -->

 <!-- 상세조회 부분 시작 -->
 <div style="align:center;width:100%;">
<form action="/nado/nupdate.ad" method="post" enctype="multipart/form-data">
<input type="hidden" name="noticeno" value="<%= notice.getNoticeNo() %>">
<input type="hidden" name="ofile" value="<%= notice.getNfileOriname() %>">
<input type="hidden" name="rfile" value="<%= notice.getNfileRename() %>">

<table align="center" style="border:0; width:1100px; cellspacing:0; cellpadding:0;">
<tr><th colspan="4"><h6 align="right"><a href="/nado/nlist.ad">전체 목록 보기</a></h6></th></tr>
<tr><th colspan="4" style="text-align:right; padding-bottom: 10px;">
			<input type="submit" value="수정하기" onclick="submitContents(this);">	&nbsp;
			<a href="JavaScript:window.location.reload()">다시 작성</a> &nbsp; 
			<a href="/nado/ndel.ad?no=<%= notice.getNoticeNo() %>&rfile=<%= notice.getNfileRename() %>">삭제하기</a> &nbsp;
			<a href="JavaScript:window.location=document.referrer;">이전 페이지로</a>
			</th></tr>
<tr><th width="60%" style="padding-left:20px;">[<%= notice.getNoticeNo() %>]&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="title" class="viewww" value="<%= notice.getNoticeTitle() %>" style="width:500px;"></th>
<th width="18%">작성자 :&nbsp;<input type="text" name="writer" class="viewww" value="<%= notice.getUserId() %>" disabled style="background:white;width:120px;"></th>
<th width="70px"><input type="date" name="date" class="viewww" value="<%= notice.getNoticeDate() %>" disabled style="background:white;width:130px;" ></th>
<th width="70px">조회수	&nbsp;<%= notice.getNoticeReadCount() %></th></tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:10px; margin-bottom:10px" width="100%"noshade align="center"></th></tr>
<tr><th colspan="4"><textarea name="ir1" id="ir1" rows="15" cols="148"><%= notice.getNoticeContent() %></textarea></th></tr>
<!-- <tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:0px; margin-bottom:10px" width="100%"noshade align="center"></th></tr> -->
<tr>
		<th colspan="4" style="text-align:left; padding-left:40px; padding-bottom:10px;">
		<% if(notice.getNfileOriname() != null && !notice.getNfileOriname().equals("null")){ %>
		<a href="/nado/nfdown?ofile=<%= notice.getNfileOriname() %>&rfile=<%= notice.getNfileRename() %>">
		<%= notice.getNfileOriname() %></a>&nbsp;
		<input type="checkbox" name="checkfile" value="<%= notice.getNfileOriname() %>">삭제하기
		<% }else{ %>
			첨부파일 없음
		<% } %> <br>
		<input type="file" name="upfile">
		</th>
</tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:10px; margin-bottom:0px;" width="100%"noshade align="center"></th></tr>
</table>
</form>
</div>
<!-- 상세조회 부분 끝 -->

<% }else{ %><!-- 본인이 쓴 글이 아닐 때 -->

<!-- 상세조회 부분 시작 -->
<div style="align:center;width:100%;">
<table align="center" style="border:0; width:1100px; cellspacing:0; cellpadding:0;">
<tr><th colspan="4"><h6 align="right"><a href="/nado/nlist.ad">전체 목록 보기</a></h6></th></tr>
<tr><th colspan="4" style="text-align:right; padding-bottom: 10px;">
			<a href="JavaScript:window.location=document.referrer;">이전 페이지로</a>
			</th></tr>
<tr><th width="60%" style="padding-left:20px;">[<%= notice.getNoticeNo() %>]&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" class="viewww" value="<%= notice.getNoticeTitle() %>" disabled style="background:white;width:500px;"></th>
<th width="18%">작성자 :&nbsp;<input type="text" class="viewww" value="<%= notice.getUserId() %>" disabled style="background:white;width:120px;"></th>
<th width="70px"><input type="date" name="date" class="viewww" value="<%= notice.getNoticeDate() %>" disabled style="background:white;width:130px;"></th>
<th width="70px">조회수	&nbsp;<%= notice.getNoticeReadCount() %></th></tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:10px; margin-bottom:10px" width="100%"noshade align="center"></th></tr>
<tr><th colspan="4" style="padding-left:20px;"><div id="ir1content" style="overflow: auto; width:100%;"><%= notice.getNoticeContent() %></div></th></tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:0px; margin-bottom:10px" width="100%"noshade align="center"></th></tr>
<tr>
		 <th colspan="4" style="text-align:left; padding-left:40px; padding-bottom:10px;">
		<% if(notice.getNfileOriname() != null && !notice.getNfileOriname().equals("null")){ %>
		<a href="/nado/nfdown?ofile=<%= notice.getNfileOriname() %>&rfile=<%= notice.getNfileRename() %>">
		<%= notice.getNfileOriname() %></a>&nbsp;
		<% }else{ %>
			첨부파일 없음
		<% } %> <br>
		</th>
</tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:10px; margin-bottom:0px;" width="100%"noshade align="center"></th></tr>
</table>
</div>
<!-- 상세조회 부분 끝 -->

 <% } %><!-- 상세조회 테이블 끝 -->













         </section>
         <!-- 가운데 메인 작업 영역 끝 /.content -->
      </div>
      <!-- 가운데 작업 영역 끝 /.content-wrapper -->
      
         
         <!-- 관리자 페이지 -->
         <% } else if(manager.equals("S")) { %>
         <!-- 관리자 페이지 헤더 네비바 Header Navbar: style can be found in header.less -->
         <nav class="navbar navbar-static-top">
            <!-- 관리자 페이지 토글 버튼 Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button"> 
               <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
               <ul class="nav navbar-nav">
                  <!-- 관리자 페이지 쪽지 토글 버튼 Messages: style can be found in dropdown.less-->
                  <li class="dropdown messages-menu">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                        <i class="fa fa-envelope"></i> <span class="label label-success">3</span>
                     </a>
                     <ul class="dropdown-menu">
                        <li class="header">3개의 새로운 쪽지가 있습니다.</li>
                        <li>
                           <!-- 관리자 페이지 쪽지 토글 눌렀을 때 드롭다운 메뉴 inner menu: contains the actual data -->
                           <ul class="menu">
                              <!-- 관리자 페이지 쪽지 내용 부분 시작 start message --> 
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img src="/nado/resources/groupware/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                    </div>
                                    <h4>보낸사람 이름<small><i class="fa fa-clock-o"></i> 시간</small></h4>
                                    <p>쪽지 내용</p>
                                 </a>
                              </li>
                              <!-- 관리자 페이지 쪽지 내용 부분 끝 end message -->
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img src="/nado/resources/groupware/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                    </div>
                                    <h4>AdminLTE Design Team <small><i class="fa fa-clock-o"></i> 2시간</small></h4>
                                    <p>Why not buy a new awesome theme?</p>
                                 </a>
                              </li>
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img src="/nado/resources/groupware/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                    </div>
                                    <h4>Developers <small><i class="fa fa-clock-o"></i>오늘</small></h4>
                                    <p>Why not buy a new awesome theme?</p>
                                 </a>
                              </li>
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img src="/nado/resources/groupware/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image"></div>
                                    <h4>Sales Department <small><i class="fa fa-clock-o"></i>어제</small></h4>
                                    <p>Why not buy a new awesome theme?</p>
                                 </a>
                              </li>
                              <li>
                                 <a href="#">
                                    <div class="pull-left">
                                       <img
                                          src="/nado/resources/groupware/dist/img/user4-128x128.jpg"
                                          class="img-circle" alt="User Image">
                                    </div>
                                    <h4>Reviewers <small><i class="fa fa-clock-o"></i> 2일</small></h4>
                                    <p>Why not buy a new awesome theme?</p>
                                 </a>
                              </li>
                           </ul>
                        </li>
                        <li class="footer"><a href="#">모든 쪽지 보기</a></li>
                     </ul>
                  </li><!-- 관리자 페이지 쪽지 드롭다운 메뉴 끝 -->
                  
                  <!-- 관리자 페이지 알림 토글 버튼 Notifications: style can be found in dropdown.less -->
                  <li class="dropdown notifications-menu">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                        <i class="fa fa-bell"></i> <span class="label label-warning">14</span>
                     </a>
                     <ul class="dropdown-menu">
                        <li class="header">14개의 알림이 있습니다.</li>
                        <li>
                           <!-- 관리자 페이지 알림 토글 버튼 드롭다운 메뉴 inner menu: contains the actual data -->
                           <ul class="menu">
                              <li>
                                 <a href="#"> <i class="fa fa-clipboard text-blue"></i>
                                    전자결재가 승인되었습니다.
                                 </a>
                              </li>
                              <li>
                                 <a href="#"> <i class="fa fa-calendar text-yellow"></i>
                                    오늘의 일정이 있습니다.
                                 </a>
                              </li>
                              <li>
                                 <a href="#"> <i class="fa fa-envelope text-purple"></i>
                                    새로운 메일이 도착했습니다.
                                 </a>
                              </li>
                              <li>
                                 <a href="#"> <i class="fa fa-table text-green"></i>
                                    새로운 댓글이 달렸습니다.
                                 </a>
                              </li>
                              <li>
                                 <a href="#"> <i class="fa fa-calendar-check-o text-red"></i>
                                    예약신청이 반려되었습니다.
                                 </a>
                              </li>
                           </ul>
                        </li>
                        <li class="footer"><a href="#">전체 보기</a></li>
                     </ul>
                  </li>
                  <!-- 관리자 페이지 알림 토글 메뉴 끝 -->
                     
                  <!-- 관리자 페이지 채팅 토글 버튼 Control Sidebar Toggle Button -->
                  <li>
                     <a href="#" data-toggle="control-sidebar">
                        <i class="fa fa-wechat"></i>
                     </a>
                  </li>
                  <!-- 관리자 페이지 채팅 토글 끝 -->
                  
                  <!-- 관리자 페이지 상단 프로필 영역 User Account: style can be found in dropdown.less -->
                  <li class="dropdown user user-menu">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                        <!-- 관리자 페이지 오른쪽 상단 프로필 사진 -->
                        <% if(loginEmp.getMyProfile() != null) { %>
                        <img src="/nado/resources/groupware/employee_profile/<%= loginEmp.getMyProfile() %>" class="user-image" alt="User Image"> 
                        <% } else { %>
                        <img src="/nado/resources/groupware/employee_profile/default-profile.png" class="user-image" alt="User Image">
                        <% } %>
                        <span class="hidden-xs"><%= loginEmp.getEmpName() %></span>
                     </a>
                     <!-- 관리자 페이지 프로필 부분 클릭했을 때 드롭다운 메뉴 -->
                     <ul class="dropdown-menu">
                        <!-- 프로필 사진 User image -->
                        <li class="user-header">
                        <% if(loginEmp.getMyProfile() != null) { %>
                        <img src="/nado/resources/groupware/employee_profile/<%= loginEmp.getMyProfile() %>" class="img-circle" alt="User Image">
                        <% } else { %>
                        <img src="/nado/resources/groupware/employee_profile/default-profile.png" class="img-circle" alt="User Image">
                        <% } %>
                           <p>관리자</p>
                           <p><%= loginEmp.getEmpName() %></p>
                        </li>
                        <!-- 관리자 페이지 프로필 수정, 로그아웃 버튼 Menu Footer-->
                        <li class="user-footer">
                           <div class="pull-left">
                              <a href="#" class="btn btn-default btn-flat">프로필</a>
                           </div>
                           <div class="pull-right">
                              <a href="/nado/emplo" class="btn btn-default btn-flat">로그아웃</a>
                           </div>
                        </li>
                     </ul>
                  </li>
                  <!-- 관리자 페이지 프로필 영역 끝 -->
               </ul>
            </div>
         </nav>
      </header>

      <!-- 관리자 페이지 왼쪽 사이드바 시작 Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
         <!-- sidebar: style can be found in sidebar.less -->
         <section class="sidebar">
            <!-- 관리자 페이지 왼쪽 사이드바 사용자 정보 부분 Sidebar user panel -->
            <div class="user-panel">
               <div class="user-panel-image">
                  <% if(loginEmp.getMyProfile() != null) { %>
                  <img src="/nado/resources/groupware/employee_profile/<%= loginEmp.getMyProfile() %>" class="img-circle" alt="User Image">
                  <% } else { %>
                  <img src="/nado/resources/groupware/employee_profile/default-profile.png" class="img-circle" alt="User Image">
                  <% } %>
               </div>
               <br>
               <div class="user-panel-info">
                  <p>관리자 <%= loginEmp.getEmpName() %></p>
                  <input type="button" id="logout" onclick="location='/nado/emplo'" value="로그아웃">
               </div>
            </div>

            <!-- 관리자 페이지 왼쪽 사이드바 검색 기능 부분 search form -->
            <form action="#" method="get" class="sidebar-form">
               <div class="input-group">
                  <input type="text" name="q" class="form-control" placeholder="검색">
                  <span class="input-group-btn">
                     <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                        <i class="fa fa-search"></i>
                     </button>
                  </span>
               </div>
            </form>
            <!-- 관리자 페이지 왼쪽 사이드바 검색 기능 끝 /.search form -->
            
            <!-- 관리자 메뉴 -->
            <ul class="sidebar-menu" data-widget="tree">
               <li>
                  <a href="/nado/empic.ad"> 
                     <i class="fa fa-drivers-license"></i> <span>사용자승인관리</span>
                  </a>
               </li>
               <li>
                  <a href="#"> 
                     <i class="fa fa-group"></i> <span>조직도</span>
                  </a>
               </li>
               <li class="treeview">
                  <a href="#">
                     <i class="fa fa-list"></i><span>게시판 관리</span> 
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i> </span> 
                  </a>
                  <ul class="treeview-menu">
                     <li>
                        <a href="/nado/nlist.ad">
                           <i class="fa fa-angle-right"></i>공지사항
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="fa fa-angle-right"></i>설문조사
                        </a>
                     </li>
                     <li>
                        <a href="/nado/blist">
                           <i class="fa fa-angle-right"></i>자유게시판
                        </a>
                     </li>
                  </ul>
               </li>
               <li>
                  <a href="calendar/calendarMonthView.jsp">
                     <i class="fa fa-clipboard"></i> <span>전자결재양식</span>
                  </a>
               </li>
            </ul>
         </section>
         <!-- 관리자 메뉴 끝 /.sidebar -->
         
         </aside>

         <!-- 관리자 페이지 가운데 작업 영역 Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <!-- 관리자 페이지 가운데 작업 영역 헤더 부분 Content Header (Page header) -->
            <section class="content-header">
               <h1>공지사항 <small>Notice</small></h1>
               <ol class="breadcrumb">
                  <li><a href="/nado/views/groupware/main.jsp"><i class="fa fa-home"></i> 홈</a></li>
                  <li class="active">홈</li>
               </ol>
            </section>

            <!-- 관리자 페이지 가운데 메인 작업 영역 Main content -->
            <section class="content">
               
               
               
               
               
               
               
               
               
 
               
               
 
 
<br>
<br>


<% if(loginEmp.getUserId().equals(notice.getUserId())){ %><!-- 본인이 쓴 글일 때 -->

 <!-- 상세조회 부분 시작 -->
 <div style="align:center;width:100%;">
<form action="/nado/nupdate.ad" method="post" enctype="multipart/form-data">
<input type="hidden" name="noticeno" value="<%= notice.getNoticeNo() %>">
<input type="hidden" name="ofile" value="<%= notice.getNfileOriname() %>">
<input type="hidden" name="rfile" value="<%= notice.getNfileRename() %>">

<table align="center" style="border:0; width:1100px; cellspacing:0; cellpadding:0;">
<tr><th colspan="4"><h6 align="right"><a href="/nado/nlist.ad">전체 목록 보기</a></h6></th></tr>
<tr><th colspan="4" style="text-align:right; padding-bottom: 10px;">
			<input type="submit" value="수정하기" onclick="submitContents(this);">	&nbsp;
			<a href="JavaScript:window.location.reload()">다시 작성</a> &nbsp; 
			<a href="/nado/ndel.ad?no=<%= notice.getNoticeNo() %>&rfile=<%= notice.getNfileRename() %>">삭제하기</a> &nbsp;
			<a href="JavaScript:window.location=document.referrer;">이전 페이지로</a>
			</th></tr>
<tr><th width="60%" style="padding-left:20px;">[<%= notice.getNoticeNo() %>]&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="title" class="viewww" value="<%= notice.getNoticeTitle() %>" style="width:500px;"></th>
<th width="18%">작성자 :&nbsp;<input type="text" name="writer" class="viewww" value="<%= notice.getUserId() %>" disabled style="background:white;width:120px;"></th>
<th width="70px"><input type="date" name="date" class="viewww" value="<%= notice.getNoticeDate() %>" disabled style="background:white;width:130px;" ></th>
<th width="70px">조회수	&nbsp;<%= notice.getNoticeReadCount() %></th></tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:10px; margin-bottom:10px" width="100%"noshade align="center"></th></tr>
<tr><th colspan="4"><textarea name="ir1" id="ir1" rows="15" cols="148"><%= notice.getNoticeContent() %></textarea></th></tr>
<!-- <tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:0px; margin-bottom:10px" width="100%"noshade align="center"></th></tr> -->
<tr>
		<th colspan="4" style="text-align:left; padding-left:40px; padding-bottom:10px;">
		<% if(notice.getNfileOriname() != null && !notice.getNfileOriname().equals("null")){ %>
		<a href="/nado/nfdown?ofile=<%= notice.getNfileOriname() %>&rfile=<%= notice.getNfileRename() %>">
		<%= notice.getNfileOriname() %></a>&nbsp;
		<input type="checkbox" name="checkfile" value="<%= notice.getNfileOriname() %>">삭제하기
		<% }else{ %>
			첨부파일 없음
		<% } %> <br>
		<input type="file" name="upfile">
		</th>
</tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:10px; margin-bottom:0px;" width="100%"noshade align="center"></th></tr>
</table>
</form>
</div>
<!-- 상세조회 부분 끝 -->

<% }else{ %><!-- 본인이 쓴 글이 아닐 때 -->

<!-- 상세조회 부분 시작 -->
<div style="align:center;width:100%;">
<table align="center" style="border:0; width:1100px; cellspacing:0; cellpadding:0;">
<tr><th colspan="4"><h6 align="right"><a href="/nado/nlist.ad">전체 목록 보기</a></h6></th></tr>
<tr><th colspan="4" style="text-align:right; padding-bottom: 10px;">
			<a href="JavaScript:window.location=document.referrer;">이전 페이지로</a>
			</th></tr>
<tr><th width="60%" style="padding-left:20px;">[<%= notice.getNoticeNo() %>]&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" class="viewww" value="<%= notice.getNoticeTitle() %>" disabled style="background:white;width:500px;"></th>
<th width="18%">작성자 :&nbsp;<input type="text" class="viewww" value="<%= notice.getUserId() %>" disabled style="background:white;width:120px;"></th>
<th width="70px"><input type="date" name="date" class="viewww" value="<%= notice.getNoticeDate() %>" disabled style="background:white;width:130px;"></th>
<th width="70px">조회수	&nbsp;<%= notice.getNoticeReadCount() %></th></tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:10px; margin-bottom:10px" width="100%"noshade align="center"></th></tr>
<tr><th colspan="4" style="padding-left:20px;"><div id="ir1content" style="overflow: auto; width:100%;"><%= notice.getNoticeContent() %></div></th></tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:0px; margin-bottom:10px" width="100%"noshade align="center"></th></tr>
<tr>
		 <th colspan="4" style="text-align:left; padding-left:40px; padding-bottom:10px;">
		<% if(notice.getNfileOriname() != null && !notice.getNfileOriname().equals("null")){ %>
		<a href="/nado/nfdown?ofile=<%= notice.getNfileOriname() %>&rfile=<%= notice.getNfileRename() %>">
		<%= notice.getNfileOriname() %></a>&nbsp;
		<% }else{ %>
			첨부파일 없음
		<% } %> <br>
		</th>
</tr>
<tr><th colspan="4"><hr style="border:1px solid lightgray; margin-top:10px; margin-bottom:0px;" width="100%"noshade align="center"></th></tr>
</table>
</div>
<!-- 상세조회 부분 끝 -->

 <% } %><!-- 상세조회 테이블 끝 -->
 








               




            </section>
            <!-- 관리자 페이지 가운데 메인 작업 영역 끝 /.content -->
         </div>
         <!-- 관리자 페이지 가운데 작업 영역 끝 /.content-wrapper -->
         <% } %>




<script type="text/javascript">
var oEditors = [];
// 추가 글꼴 목록
//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
nhn.husky.EZCreator.createInIFrame({
 oAppRef: oEditors,
 elPlaceHolder:"ir1",
 sSkinURI: "/nado/resources/groupware/se2/SmartEditor2Skin.html", 
 htParams : {
  bUseToolbar : true,    // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
  bUseVerticalResizer : true,  // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
  bUseModeChanger : true,   // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
  //aAdditionalFontList : aAdditionalFontSet,  // 추가 글꼴 목록
  fOnBeforeUnload : function(){
   //alert("완료!");
  }
 }, //boolean
 fOnAppLoad : function(){
  //예제 코드
  //oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
  

   					  /* //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
     					oEditors.getById["notice_content"].exec("PASTE_HTML", [notice_content.getValue()]); */

 },
 fCreator: "createSEditor2"
});

function pasteHTML() {
 var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
 oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
 var sHTML = oEditors.getById["ir1"].getIR();
 alert(sHTML);
}
 
function submitContents(elClickedObj) {
   
/* var s = oEditors.getById["ir1"].getIR();
 
if (this.frm.eaTitle.value == ''){
alert('제목을 기재해 주세요');
this.frm.eaTitle.focus();
return false;
}

if(!s) {
alert('내용을 기재해 주세요');
return true;
} */

 oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됩니다.
 
 // 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
 
/*  try {
  elClickedObj.form.submit();
 } catch(e) {} */
}

function setDefaultFont() {
 var sDefaultFont = '궁서';
 var nFontSize = 24;
 oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
}

</script>





         <footer class="main-footer">
            <div class="pull-right hidden-xs">
               <b>Version</b> 1.0.0
            </div>
            <strong>Copyright &copy; 2019 
               <a href="/nado/index.jsp">NADO Groupware</a>.</strong> All rights reserved.
         </footer>

         <!-- 공통 -->
         <!-- 오른쪽 채팅 사이드바 Control Sidebar -->
         <aside class="control-sidebar control-sidebar-dark" style="display: none;"></aside>
         <!-- 오른쪽 채팅 사이드바 끝 /.control-sidebar -->
        
         <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
         <div class="control-sidebar-bg"></div>
      </div>
      <!-- ./wrapper -->

   <!-- jQuery 3 -->
   <script src="/nado/resources/groupware/bower_components/jquery/dist/jquery.min.js"></script>
   <!-- jQuery UI 1.11.4 -->
   <script src="/nado/resources/groupware/bower_components/jquery-ui/jquery-ui.min.js"></script>
   <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
   <script>
     $.widget.bridge('uibutton', $.ui.button);
   </script>
   <!-- Bootstrap 3.3.7 -->
   <script src="/nado/resources/groupware/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
   <!-- Sparkline -->
   <script src="/nado/resources/groupware/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
   <!-- jQuery Knob Chart -->
   <script src="/nado/resources/groupware/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
   <!-- Bootstrap WYSIHTML5 -->
   <script src="/nado/resources/groupware/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
   <!-- Slimscroll -->
   <script src="/nado/resources/groupware/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <!-- FastClick -->
   <script src="/nado/resources/groupware/bower_components/fastclick/lib/fastclick.js"></script>
   <!-- AdminLTE App -->
   <script src="/nado/resources/groupware/dist/js/adminlte.min.js"></script>
   <!-- AdminLTE for demo purposes -->
   <script src="/nado/resources/groupware/dist/js/demo.js"></script>
</body>
</html>