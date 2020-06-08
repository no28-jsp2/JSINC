<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	th{background-color: #B2D3C2; width: 50px; height: 30px;}
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
        	
          <!-- page start-->
          <div class="content-panel" align="center">
        	
			<form action="write" method="post">
	<table style="width: 500px; border: solid;">
	<tr><th>보고서</th><td>
	<select name="reportName">
		<option value="일일보고">일일보고</option>
		<option value="주간보고">주간보고</option>
		<option value="업무보고">업무보고</option>
	</select></td>
	<th>제목</th><td><input type="text" name="title" ></td></tr>
	<tr><th>부서</th>
	<td><select name="department">
		<option value="개발부">개발부</option>
		<option value="경영지원부">경영지원부</option>
		<option value="경리부">경리부</option>
		<option value="품질관리부">품질관리부</option>
		<option value="해외업무부">해외업무부</option>
	</select></td>
	<th>보고자</th><td><input type="text" id="wr" name="writer" value="${user.name }"></td></tr>
	<tr><td colspan="4"><textarea name="content" style="width: 500px; height: 300px;"></textarea></td></tr>
	</table>
	<button type="submit" class="btn">보고서 등록</button>
	<button type="reset" class="btn">취소</button>
	</form>
	</div>
	</div>
	</section>
	</section>
	
	
	
<jsp:include page="../default/footer.jsp"/>
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
  <script type="text/javascript">
		
		$("#wr").attr('readonly', true);
		
</script>
	
	
</body>
</html>