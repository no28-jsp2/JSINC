<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	th {background-color: #B2D3C2;}
	table{table-layout: fixed;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
 <jsp:include page="../default/header.jsp" />
	<!--sidebar start-->
      <aside>
         <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
               <p class="centered">
                  <a href="profile">
                     <img src="resources/img${user.img}" class="img-circle" width="80">
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
                     <li><a href="createCommunity">커뮤니티 만들기</a></li>
                     <li><a href="allCommunity">전체 커뮤니티</a></li>
                     <li><a href="joinCommunity">가입 커뮤니티</a></li>
                     
                  </ul>
               </li>
               
               <!-- 게시판 -->
               <li class="sub-menu"><a href="javascript:;"> <i
                     class="fa fa-cogs"></i> <span>게시판</span>
               </a>
                  <ul class="sub">
                     <li><a href="allCompanyBoard">전사 게시판</a></li>
                     <li><a href="departmentBoard">부서 게시판</a></li>
                     <li><a href="referenceBoard">자료실 게시판</a></li>
                  </ul>
               </li>
               
               <!-- 전자 결재 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-book"></i>  <span>전자 결재</span>
                  </a>
                  <ul class="sub">
                     <li><a href="newSign">결재 상신</a></li>
                     <li><a href="signWait">결재 대기</a></li>
                     <li><a href="signSuccess">결재 완료</a></li>
                  </ul>
               </li>
               
               <!-- 주소록 -->
               <li >
                  <a href="addressBook"> 
                     <i class="fa fa-tasks"></i><span>주소록</span>
                  </a>
               </li>
               
               <!-- 캘린더 -->
               <li>
                  <a href="toDoList">
                     <i class="fa fa-th"></i><span>스케줄</span>
                  </a>
               </li>
               

               
               <!-- 보고 -->
               <li>
                  <a class="active" href="report"> 
                     <i class=" fa fa-bar-chart-o"></i><span>보고</span>
               		</a>
               </li>
               
               <!-- 쪽지 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-comments-o"></i> <span>쪽지함</span><span class="label label-theme pull-right mail-info">${msgAlarm }</span>
                  </a>
                  <ul class="sub">
                     <li><a href="sentMessage">보낸 쪽지함</a></li>
                     <li><a href="RecMessage">받은 쪽지함</a></li>
                  </ul>
               </li>
               
               <!-- 설문 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-map-marker"></i>  <span>설문</span>
                  </a>
                  <ul class="sub">
                  	 <li><a href="createSurvey">새 설문 작성</a></li>
                     <li><a href="startedSurvey">진행중인 설문</a></li>
                     <li><a href="endSurvey">마감된 설문</a></li>
                     <li><a href="mySurvey">내가 만든 설문</a></li>
                  </ul>
               </li>
            </ul>
            <!-- sidebar menu end-->
         </div>
      </aside>
      <!--sidebar end-->
    <section id="main-content">
    
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i>보고</h3>
        <div class="row mb">
        	<c:set var="name" value="${user.name }"></c:set>
          <!-- page start-->
          	<div class="content-panel" align="center">
          		<table  style=" border-style:solid; width: 700px;" >
          		<tr>
          			<td rowspan="3" width="60%"><center> ${rp.title }</center>	</td>
          			
          				<th width="20%"><center>부서</center></th><td width="20%">${rp.department }</td>
          				<tr><th><center>이름</center></th><td>${rp.writer }</td></tr>
          				<tr><th><center>날짜</center></th><td><fmt:formatDate value="${rp.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td></tr>
          			
          		</tr>
          		</table>
          		<br>
          		<table style="border-style:solid; width: 700px;">
          		<tr>
          			<th width="10%"><center>내용</center></th>
          			<td >${rp.content }</td>
          		</tr>
          		</table>
          			
          		
        	<a href="report" class="btn">목록보기</a>
			<button id="update" class="btn">수정</button>
			<a href="deleteRp?bno=${rp.bno }" class="btn">삭제</a>
          <!-- page end-->
        	</div>
        </div>
        
        <!-- /row -->
      </section>
      <!-- /wrapper -->
      <jsp:include page="../default/footer.jsp" />
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->	

<script src="resources/lib/jquery/jquery.min.js"></script>
  <script type="text/javascript" language="javascript" src="resources/lib/advanced-datatable/js/jquery.js"></script>
  <script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="resources/lib/jquery.scrollTo.min.js"></script>
  <script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script type="text/javascript" language="javascript" src="resources/lib/advanced-datatable/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="resources/lib/advanced-datatable/js/DT_bootstrap.js"></script>
  <!--common script for all pages-->
  <script src="resources/lib/common-scripts.js"></script>
  <c:set var="userName" value="${user.name }"></c:set>
  <c:set var="rpName" value="${rp.writer }"></c:set>
<script>
<% 
	String userName = (String)pageContext.getAttribute("userName");
	String rpName = (String)pageContext.getAttribute("rpName");
%>
				$("#update").on('click',function() {
					<% if(userName.equals(rpName)){%>
						location.href = "updateReport?bno=${rp.bno}";
					<%}else{%>
						alert("작성자가 아니면 수정할수 없습니다!");
						location.href = "report";
					<%}%>
				
				});
        </script>
  
  
</body>
</html>