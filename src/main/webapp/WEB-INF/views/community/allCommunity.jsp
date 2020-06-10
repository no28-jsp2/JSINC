<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Bootstrap core CSS -->
<link href="resources/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--external css-->
<link href="resources/lib/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-responsive.css" rel="stylesheet">
<body>
	<jsp:include page="../default/header.jsp" />
	<jsp:include page="../default/sidebar.jsp" />
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>
				<i class="fa fa-angle-right"></i> 전체 커뮤니티
			</h3>
			<!-- /col-md-12 -->
			<div class="col-md-12 mt">
				<div class="content-panel">
					<table class="table table-hover">
						<hr>
						<thead>
							<tr>
								<th>번호</th>
								<th>커뮤니티(명)</th>
								<th>회원수</th>
								<th>마스터</th>
								<th>가입여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${allList }" var="dto">
								<tr>
									<td>${dto.cNo }</td>
									<td><a href="viewCom?title=${dto.title }">${dto.title}</a></td>
									<td>${dto.members }</td>
									<td>${dto.name } ${dto.rank }</td>
									<td>${dto.join }</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
			<!-- /col-md-12 -->

		</section>
	</section>




	<!--main content end-->
	<jsp:include page="../default/footer.jsp" />
	<script src="resources/bxSli/js/jquery-3.5.1.min.js"></script>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/lib/jquery.scrollTo.min.js"></script>
	<script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="resources/lib/jquery.sparkline.js"></script>
	<!--common script for all pages-->
	<script src="resources/lib/common-scripts.js"></script>
	<script type="text/javascript"
		src="resources/lib/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="resources/lib/gritter-conf.js"></script>


</body>
</html>