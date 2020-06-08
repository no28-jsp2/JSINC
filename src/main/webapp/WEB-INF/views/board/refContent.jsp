<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	th {background-color: #B2D3C2; }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:include page="../default/header.jsp" />
		<jsp:include page="../default/sidebar.jsp" />
    <section id="main-content">
    
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 자료실 게시판</h3>
        <div class="row mb">
        	
          <!-- page start-->
          	<div class="content-panel">
          		<table  style=" border-style:solid; width: 500px; height: 150px;">
          		<tr><th>제목 </th><td> ${board.title }</td></tr>
          		<tr><th>작성자 </th><td> ${board.writer }</td></tr>
          		<tr><th>작성일자 </th><td> <fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td></tr>
          		<tr><th>내용 </th><td> ${board.content }</td></tr>
          		<tr><th>첨부 파일 </th><td> <a href="fileDownload?bno=${board.bno}"/>${board.realfile }</a></td></tr>
          		</table>
        	<a href="referenceBoard" id="list" class="btn">목록보기</a>
			<a href="update" class="btn">수정</a>
			<a href="delete" class="btn">삭제</a>
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
</body>
</html>