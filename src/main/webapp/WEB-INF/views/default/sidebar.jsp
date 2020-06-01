<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS.Inc</title>
</head>
<body>
   <!--sidebar start-->
      <aside>
         <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
               <p class="centered">
                  <a href="profile">
                     <img src="${pageContext.request.contextPath }/resources/img/${user.img}" class="img-circle" width="80">
                  </a>
               </p>
               <h5 class="centered"><i class="fa fa-user"></i> ${user.name } <br>(${user.userEmail })</h5>
               
               <!-- 출/퇴근 관리 -->
               <li class="mt">
                  <a href="attendance"> 
                     <i class="fa fa-asterisk"></i> <span>출/퇴근</span>
                  </a>
               </li>
               
               <!-- 커뮤니티 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-desktop"></i> <span>커뮤니티</span>
                  </a>
                  <ul class="sub">
                     <li><a href="createCommunity">커뮤티티 만들기</a></li>
                     <li><a href="joinCommunity">가입 커뮤니티</a></li>
                  </ul>
               </li>
               
               <!-- 게시판 -->
               <li class="sub-menu"><a href="javascript:;"> <i
                     class="fa fa-cogs"></i> <span>게시판</span>
               </a>
                  <ul class="sub">
                     <li><a href="allCompanyBoard">전사게시판</a></li>
                     <li><a href="departmentBoard">부서게시판</a></li>
                     <li><a href="referenceBoard">부서게시판</a></li>
                  </ul>
               </li>
               
               <!-- 전자 결재 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-book"></i>  <span>전자 결재</span>
                  </a>
                  <ul class="sub">
                     <li><a href="newSign">새 결재</a></li>
                     <li><a href="signPost">결재 상신</a></li>
                     <li><a href="signAproved">결재 승인</a></li>
                     <li><a href="signWait">결재 대기</a></li>
                     <li><a href="signSuccess">결재 완료</a></li>
                  </ul>
               </li>
               
               <!-- 주소록 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-tasks"></i> <span>주소록</span>
                  </a>
                  <ul class="sub">
                     <li><a href="publicAddressbook">공용 주소록</a></li>
                     <li><a href="personalAddressbook">개인 주소록</a></li>
                     <li><a href="form_validation.html">부서 주소록</a></li>
                  </ul>
               </li>
               
               <!-- 캘린더 -->
               <li>
                  <a href="calender">
                     <i class="fa fa-th"></i> <span>캘린더</span>
                  </a>
               </li>
               
               <!-- 메일 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-envelope"></i> <span>메일</span> <span class="label label-theme pull-right mail-info">2</span>
                  </a>
                  <ul class="sub">
                     <li><a href="receiveMail">받은 메일함</a></li>
                     <li><a href="sendMail">보낸 메일함</a></li>
                     <li><a href="garbage">휴지통</a></li>
                  </ul>
               </li>
               
               <!-- 보고 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class=" fa fa-bar-chart-o"></i><span>보고</span>
                  </a>
                  <ul class="sub">
                     <li><a href="dayReport">일일 보고</a></li>
                     <li><a href="weekReport">주간 보고</a></li>
                     <li><a href="workReport">업무 일지</a></li>
                  </ul>
               </li>
               
               <!-- 메신져 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-comments-o"></i> <span>메신저</span>
                  </a>
                  <ul class="sub">
                     <li><a href="lobby">로비</a></li>
                     <li><a href="chatRoom">채팅방</a></li>
                  </ul>
               </li>
               
               <!-- 설문 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-map-marker"></i>  <span>설문</span>
                  </a>
                  <ul class="sub">
                     <li><a href="startedSurvey">진행중인 설문</a></li>
                     <li><a href="endsurvey">마감된 설문</a></li>
                     <li><a href="mySurvey">내가 만든 설문</a></li>
                  </ul>
               </li>
            </ul>
            <!-- sidebar menu end-->
         </div>
      </aside>
      <!--sidebar end-->
</body>
</html>