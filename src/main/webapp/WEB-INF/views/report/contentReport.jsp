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
		<jsp:include page="../default/sidebar.jsp" />
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