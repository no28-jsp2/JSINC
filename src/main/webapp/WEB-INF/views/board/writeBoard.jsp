<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<h3>
			<i class="fa fa-angle-right"></i> 전사 게시판
		</h3>
		<div class="row mb" align="center">

			<!-- page start-->
			<div class="content-panel" >
				<form name="forma" action="write" method="post">
					<div>
					<input type="text" placeholder="제목" name="title" style="width: 300px;">
					<input type="text" id="wr" name="writer" value="${user.name }" style="width: 100px;">
					
					</div>
					<hr>
					<div>
					<textarea name="content" style="width: 500px; height: 300px;" placeholder="내용을 입력해 주세요!"></textarea>
					</div>
					<hr>
					<div>
					<button type="button" id="sub">등록</button>&nbsp;&nbsp;
					<button type="reset" >취소</button>
					</div>

				</form>
			</div>
		</div>
	</section>
	<jsp:include page="../default/footer.jsp" />
	
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
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
	
		$("#sub").click(function() {
			document.forma.submit();
		})
		$("#wr").attr('readonly', true);
	
</script>

	
</body>
</html>