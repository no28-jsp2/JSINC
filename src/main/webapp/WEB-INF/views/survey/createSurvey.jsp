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
							<form action="surveyInput" class="form-horizontal style-form" onsubmit="return permission()">
							
								<div class="form-group">
									<label for="ctitle" class="control-label col-lg-2" style="text-align: center;">설문 제목</label>
									<div class="col-lg-10">
										<input type="text" class="form-control " id="ctitle" name="title" required>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label" style="text-align: center;">마감 날짜</label>
									<div class="col-md-3 col-xs-11">
										<div data-date-viewmode="years" data-date-format="yyyy-mm-dd" data-date="2020-${loginMonth }-${loginDay}" class="input-append date dpYears">
											<input type="text" readonly="" value="2020-${loginMonth }-${loginDay}" size="16" class="form-control" name="eDate"> 
											<span class="input-group-btn add-on">
												<button class="btn btn-theme" type="button">
													<i class="fa fa-calendar"></i>
												</button>
											</span>
										</div>
										<span class="help-block">Select date</span>
									</div>
								</div>

								<div class="form-group ">
									<label for="ccomment" class="control-label col-lg-2" style="text-align: center;">설문 내용</label>
									<div class="col-lg-10">
										<textarea class="form-control " id="ccomment" name="comment" required style="height: 200px;"></textarea>
										&#187; 옵션 갯수 설정에 따른 각 옵션별 항목을 설문 내용에 적어주세요.<br>
										ex) 2개 선택시 : 1. 찬성 // 2. 반대
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2" style="text-align: center;">답변 옵션 설정</label>
									<div class="col-lg-10">
										<div class="radio">
											<label> 
												<input type="radio" name="optionsRadios" id="optionsRadios1" value="2" checked> 
												옵션 2개 (1, 2)
											</label>
										</div>
										<div class="radio">
											<label> 
												<input type="radio" name="optionsRadios" id="optionsRadios2" value="5">
												옵션 5개 (1, 2, 3, 4, 5)
											</label>
										</div>
									</div>
									
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button class="btn btn-theme" type="submit">올리기</button>
										<button class="btn btn-theme04" type="button" onclick="location.href='createSurvey'">초기화</button>
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
	<script type="text/javascript">
		function permission() {
			alert("설문 등록 승인 요청을 하였습니다.")
		}
	</script>
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
