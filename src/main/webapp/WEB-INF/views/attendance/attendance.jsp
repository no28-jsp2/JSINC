<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>JS.Inc</title>

<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-responsive.css" rel="stylesheet">

</head>

<body>
	<section id="container">
		<jsp:include page="../default/header.jsp"/>
		<jsp:include page="../default/sidebar.jsp"/>
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row mt">
					<div class="col-lg-6 col-md-6 col-sm-12">
						<!--  BUTTONS ROUND -->
						<div class="showback">
							<h4>
								<i class="fa fa-angle-right"></i> 출근
							</h4>
							<form action="goWork">
								<button type="submit" class="btn btn-primary btn-lg btn-block">
									<i class="fa fa-check-circle"></i>출&nbsp;&nbsp;근
								</button>
								<br>
								
							</form>
						</div>
						<!--  BUTTONS GROUP -->
						<div class="showback">
							<h4>
								<i class="fa fa-angle-right"></i> 퇴근
							</h4>
							<form action="leaveWork">
								<button type="submit" class="btn btn-default btn-lg btn-block">
									<i class="fa fa-check-circle-o"></i> 퇴&nbsp;&nbsp;근
								</button>
								<br>
								
							</form>
						</div>
						<!-- /showback -->
						<!--  BUTTONS NESTING -->
						<div class="showback">
							<h4>
								<i class="fa fa-angle-right"></i> Time
							</h4>
							<h5>출근 : ${applicationScope.start.goWork }</h5>
							<h5>퇴근 : ${applicationScope.end.leaveWork } </h5>
						</div>
						<!-- /showback -->
						<!--  BUTTONS SIZES -->
						<div class="showback">
							<h4>
								<i class="fa fa-angle-right"></i> 차트(그래프)
							</h4>
							
						</div>
						<!-- /showback -->
					</div>
					
					<!-- /col-lg-6 -->
					<div class="col-lg-6 col-md-6 col-sm-12">
						<!--  SPLIT BUTTONS -->
						<div class="showback">
							<div>
								<h4>
									<i class="fa fa-angle-right"></i> 근무 기록
								</h4>
								<form action="list">
									<div class="btn-group">
										<button type="submit" class="btn btn-theme" name="month" value="01">Jan</button>
										<button type="submit" class="btn btn-default" name="month" value="02">Feb</button>
										<button type="submit" class="btn btn-theme" name="month" value="03">Mar</button>
										<button type="submit" class="btn btn-default" name="month" value="04">Apr</button>
										<button type="submit" class="btn btn-theme" name="month" value="05">May</button>
										<button type="submit" class="btn btn-default" name="month" value="06">Jun</button>
										<button type="submit" class="btn btn-theme" name="month" value="07">Jul</button>
										<button type="submit" class="btn btn-default" name="month" value="08">Aug</button>
										<button type="submit" class="btn btn-theme" name="month" value="09">Sep</button>
										<button type="submit" class="btn btn-default" name="month" value="10">Oct</button>
										<button type="submit" class="btn btn-theme" name="month" value="11">Nov</button>
										<button type="submit" class="btn btn-default" name="month" value="12">Dec</button>
									</div>
								</form>
								<hr>
								<table class="table">
									<thead>
										<tr>
											<th>날짜</th>
											<th>출근</th>
											<th>퇴근</th>
											<th>근무시간</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lists }" var="dto_att">
											<tr>
												<td>2020.${month }</td>
												<td>${dto_att.goWork }</td>
												<td>${dto_att.leaveWork }</td>
												<td>${dto_att.workTime }시간</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<h5><b style="color: blue;">${month }</b>월 총 근무 시간 : <b style="color: blue;">${totWorkTime }</b> (h)</h5>
							</div>
						</div>
						<!-- /showback -->
					</div>
					<!-- /col-lg-6 -->
				</div>
				<!--/ row -->
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<jsp:include page="../default/footer.jsp"/>
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/lib/jquery/jquery.min.js"></script>

	<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/lib/jquery.scrollTo.min.js"></script>
	<script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="resources/lib/common-scripts.js"></script>
</body>

</html>
