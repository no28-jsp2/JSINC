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
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 캘린더
				</h3>
				<!-- page start-->
				<div class="row mt">
					<aside class="col-lg-3 mt">
						<h4>
							<i class="fa fa-angle-right"></i> 일정 추가
						</h4>
						<div id="external-events">
							<div class="external-event label label-theme">My Event 1</div>
							<div class="external-event label label-success">My Event 2</div>
							<div class="external-event label label-info">My Event 3</div>
							<div class="external-event label label-warning">My Event 4</div>
							<div class="external-event label label-danger">My Event 5</div>
							<div class="external-event label label-default">My Event 6</div>
							<div class="external-event label label-theme">My Event 7</div>
							<div class="external-event label label-info">My Event 8</div>
							<div class="external-event label label-success">My Event 9</div>
							<p class="drop-after">
								<input type="checkbox" id="drop-remove"> Remove After Drop
							</p>
						</div>
					</aside>
					<aside class="col-lg-9 mt">
						<section class="panel">
							<div class="panel-body">
								<div id="calendar" class="has-toolbar"></div>
							</div>
						</section>
					</aside>
				</div>
				<!-- page end-->
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<jsp:include page="../default/footer.jsp"/>
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/lib/jquery/jquery.min.js"></script>
	<script src="resources/lib/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="resources/lib/fullcalendar/fullcalendar.min.js"></script>
	<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/lib/jquery.scrollTo.min.js"></script>
	<script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="resources/lib/common-scripts.js"></script>
	<!--script for this page-->
	<script src="resources/lib/calendar-conf-events.js"></script>

</body>

</html>
