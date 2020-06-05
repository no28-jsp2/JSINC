<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
          		<div>
          		제목 : ${board.title }
          		</div>
          		<div>
          		작성자 : ${board.writer } &nbsp; 작성일자 : <fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
          		</div>
          		<div>
          		내용 : ${board.content }
          		</div>
          		<div>
          		첨부 파일 : <a href="fileDownload?bno=${board.bno}"/>${board.realfile }</a>
          		</div>
        	<a href="referenceBoard" id="list" class="btn">목록보기</a>
					
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