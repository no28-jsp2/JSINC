<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">
input {
	border: hidden;
}

select {
	border: hidden;
}
textarea {
	border: hidden;
}
</style>
<title>JS.Inc</title>
</head>

<body>
	<section id="container">
		<jsp:include page="../default/header.jsp" />

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 결재 상신
				</h3>
				<div class="row mt">
					<!--  DATE PICKERS -->
					<div class="col-lg-12">
						<div class="form-panel">
							<form action="signInsert" method="post">
								<div>
									<table>
										<tr>
											<td>제목 : </td>
											<td><input type="text" name="title"></td>
										</tr>
										<tr>
											<td>작성자 : </td>
											<td><input type="text" name="writer" value="${user.name } ${user.rank}" readonly="readonly"></td>
											<td>보고 대상자<input type="text" name="target"></td>
												<td style="display: none;"><input type="text" name="empno" value="${user.empNo }"></td>
												<td style="display: none;"><input type="text" name="department" value="${user.dep }"></td>
										</tr>
										
									</table>
								</div>
								<br>

								<div>
									<table>
										<tr>
											<td>결재 분류 : </td>&nbsp;
											<td><select id="signChange" name="signs" >
													<option value="선택">선택</option>
													<option value="휴가">휴가</option>
													<option value="외근">외근</option>
													<option value="연장근무">연장근무</option>
											</select></td>
										</tr>
									</table>
								</div>
								<br>
								<div id="vacation" style="display: none;">
									<table>
										<tr>
											<td>휴가 일자 : </td>
											<td><input id="vacation1" disabled="disabled" name="startDT" type="date"> ~ <input id="vacation2" disabled="disabled" name="endDT" type="date"></td>
										</tr>
										<tr>
											<td>휴가 사유 : </td>
											<td><textarea id="vacation3" disabled="disabled" name="content"></textarea></td>
										</tr>
									</table>
								</div>
								<div id="outwork1" style="display: none;">
									<table>
										<tr>
											<td>외근 일자 : </td>
											<td><input id="outwork2" disabled="disabled" name="outwork" type="date"></td>
										</tr>
										<tr>
											<td>외근 지역 : </td>
											<td><input id="outwork3" disabled="disabled" type="text" name="worklocation"></td>
										</tr>
										<tr>
											<td>작업 내용(간략히) :</td>
											<td><textarea id="outwork4" disabled="disabled" name="content"></textarea></td>
										</tr>
									</table>
								</div>
								<div id="extend" style="display: none;">
									<table>
										<tr>
											<td>연장 시간  : </td>
											<td><input id="extend1" disabled="disabled" name="startDT" type="time" value="18:00:00"> ~ <input id="extend2" disabled="disabled" name="endDT" type="time"></td>
										</tr>
										<tr>
											<td>연장 근무 사유 : </td>
											<td><textarea id="extend3" disabled="disabled" name="content"></textarea></td>
										</tr>
									</table>
								</div>
								<div>
									<button type="submit" class="btn">등록</button>
									<button type="reset" class="btn">취소</button>
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
	<script type="text/javascript">
		$("#signChange").change(function() {
			var value = $(this).val();
			if(value=="휴가"){
				document.all.vacation.style.display="";
				document.all.outwork1.style.display="none";
				document.all.extend.style.display="none";
				$("#vacation1").removeAttr("disabled");
				$("#vacation2").removeAttr("disabled");
				$("#vacation3").removeAttr("disabled");
				$("#outwork2").removeAttr("disabled");
				$("#outwork3").removeAttr("disabled");
				$("#outwork4").attr("disabled",true);
				$("#extend1").attr("disabled",true);
				$("#extend2").attr("disabled",true);
				$("#extend3").attr("disabled",true);
			}else if(value=="외근"){
				document.all.outwork1.style.display="";
				document.all.vacation.style.display="none";
				document.all.extend.style.display="none";
				$("#vacation1").removeAttr("disabled");
				$("#vacation2").removeAttr("disabled");
				$("#outwork2").removeAttr("disabled");
				$("#outwork3").removeAttr("disabled");
				$("#outwork4").removeAttr("disabled");
				$("#vacation3").attr("disabled",true);
				$("#extend1").attr("disabled",true);
				$("#extend2").attr("disabled",true);
				$("#extend3").attr("disabled",true);
				
				
			}else if(value=="연장근무"){
				document.all.extend.style.display="";
				document.all.vacation.style.display="none";
				document.all.outwork1.style.display="none";
				$("#extend1").removeAttr("disabled");
				$("#extend2").removeAttr("disabled");
				$("#extend3").removeAttr("disabled");
				$("#outwork2").removeAttr("disabled");
				$("#outwork3").removeAttr("disabled");
				$("#outwork4").attr("disabled",true);
				$("#vacation1").attr("disabled",true);
				$("#vacation2").attr("disabled",true);
				$("#vacation3").attr("disabled",true);
			}else{
				document.all.vacation.style.display="none";
				document.all.outwork.style.display="none";
				document.all.extend.style.display="none";
				$("#outwork2").attr("disabled",true);
				$("#outwork3").attr("disabled",true);
				$("#outwork4").attr("disabled",true);
				$("#vacation1").attr("disabled",true);
				$("#vacation2").attr("disabled",true);
				$("#vacation3").attr("disabled",true);
				$("#extend1").attr("disabled",true);
				$("#extend2").attr("disabled",true);
				$("#extend3").attr("disabled",true);
			}


		})
	</script>

</body>

</html>
