<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>JS.Inc</title>
</head>

<body>
	<section id="container">
		<jsp:include page="../default/header.jsp" />
		
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 결재 승인
				</h3>
				<div class="row mt">
					<!--  DATE PICKERS -->
					<div class="col-lg-12">
						<div class="form-panel">
							<table border="0" cellpadding="0" cellspacing="0"
								class="display table table-bordered" id="hidden-table-info">
								<tr>
									<td>제목</td>
									<td>${sign.title }</td>
								</tr>
								<tr>
									<td>작성자</td>
									<td>${sign.writer }</td>
								</tr>
								<tr>
									<td>결재 분류</td>
									<td>${sign.signs }</td>
								</tr>
								<tr>
									<td>작성 일자</td>
									<td><fmt:formatDate value="${sign.regdate }"
											pattern="yyyy-MM-dd HH:mm:ss" /></td>
								</tr>
							</table>

							<br>
							<c:set var="signs" value="${sign.signs }"></c:set>
							<%
								String signs = (String) pageContext.getAttribute("signs");
								if (signs.equals("휴가")) {
							%>
							<div>
								<table border="0" cellpadding="0" cellspacing="0"
								class="display table table-bordered" id="hidden-table-info">
									<tr>
										<td>신청한 휴가 일자 :</td>
										<td>${sign.startDT }~ ${sign.endDT }</td>
									</tr>
									<tr>
										<td>휴가 사유 :</td>
										<td>${sign.content}</td>
									</tr>
								</table>
							</div>
							<%
								} else if (signs.equals("외근")) {
							%>
							<div>
								<table border="0" cellpadding="0" cellspacing="0"
								class="display table table-bordered" id="hidden-table-info">
									<tr>
										<td>신청한 외근 일자 :</td>
										<td>${sign.outwork }</td>
									</tr>
									<tr>
										<td>외근 지역 :</td>
										<td>${sign.worklocation}</td>
									</tr>
									<tr>
										<td>작업 내용 :</td>
										<td>${sign.content }</td>
									</tr>
								</table border="0" cellpadding="0" cellspacing="0"
								class="display table table-bordered" id="hidden-table-info">
							</div>
							<%
								} else if (signs.equals("연장근무")) {
							%>
							<div>
								<table>
									<tr>
										<td>신청한 연장 시간 :</td>
										<td>${sign.startDT }~ ${sign.endDT }</td>
									</tr>
									<tr>
										<td>연장 근무 사유 :</td>
										<td>${sign.content }</td>
									</tr>
									</div>
								</table>
								<%
									}
								%>
							</div>
							<!-- /form-panel -->
						</div>
						<!-- /col-lg-12 -->
					</div>
					<!-- /row -->
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<jsp:include page="../default/footer.jsp" />
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
	<!--script for this page-->
	<script src="resources/lib/jquery-ui-1.9.2.custom.min.js"></script>
	<script type="text/javascript"
		src="resources/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
	<script type="text/javascript"
		src="resources/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="resources/lib/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript"
		src="resources/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script type="text/javascript"
		src="resources/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="resources/lib/bootstrap-daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="resources/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script src="resources/lib/advanced-form-components.js"></script>

</body>

</html>
