<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>JS.Inc</title>
</head>

<body>
	<section id="container">
		<jsp:include page="../default/header.jsp"/>
		<jsp:include page="../default/sidebar.jsp"/>
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 새 설문 작성
				</h3>
				<div class="row mt">
					<!--  DATE PICKERS -->
					<div class="col-lg-12">
						<div class="form-panel">
							<form action="edit" class="form-horizontal style-form">
							
								<div class="form-group">
									<label for="ctitle" class="control-label col-lg-2" style="text-align: center;">to do</label>
									<div class="col-lg-10">
										<input type="text" class="form-control" value="${editPage.todo }" id="ctitle" name="todo" required>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label" style="text-align: center;">날짜</label>
									<div class="col-md-3 col-xs-11">
										<div data-date-viewmode="years" data-date-format="yyyy-mm-dd" data-date="${editPage.eDate }" class="input-append date dpYears">
											<input type="text" readonly="" value="${editPage.eDate }" size="16" class="form-control" name="eDate">
											<span class="input-group-btn add-on">
												<button class="btn btn-theme" type="button">
													<i class="fa fa-calendar"></i>
												</button>
											</span>
										</div>
										<span class="help-block">Select date</span>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button class="btn btn-theme" type="submit">수정</button>
										<button class="btn btn-theme04" type="button" onclick="location.href='toDoList'">취소</button>
									</div>
								</div>
							</form>
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
		<jsp:include page="../default/footer.jsp"/>
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/lib/jquery/jquery.min.js"></script>
	<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/lib/jquery.scrollTo.min.js"></script>
	<script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="resources/lib/common-scripts.js"></script>
	<!--script for this page-->
	<script src="resources/lib/jquery-ui-1.9.2.custom.min.js"></script>
	<script type="text/javascript" src="resources/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
	<script type="text/javascript" src="resources/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="resources/lib/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="resources/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script type="text/javascript" src="resources/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript" src="resources/lib/bootstrap-daterangepicker/moment.min.js"></script>
	<script type="text/javascript" src="resources/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script src="resources/lib/advanced-form-components.js"></script>

</body>

</html>
