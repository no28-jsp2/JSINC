<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>JS.Inc</title>



</head>
<body>
	<section id="container">
		<jsp:include page="default/header.jsp" />
		<jsp:include page="default/sidebar.jsp" />
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-9 main-chart">
						<!--CUSTOM CHART START -->
						<div class="border-head">
							<h3>회사 사진</h3>
						</div>
						<div class="custom-bar-chart">
						<img src="img/company/com01.jpg" style="height: 80%; width: 100%">
						</div>
						<!--custom chart end-->

						<!-- SERVER STATUS PANELS -->

						<!-- /grey-panel -->

						<!-- /col-md-4-->

						<!--  /darkblue panel -->

						<!-- /col-md-4 -->

						<!-- /col-md-4 -->

						<!-- /row -->
						<div class="row">
							<!-- WEATHER PANEL -->
							<div class="col-md-4 mb">
								<div class="weather pn">
									<i class="fa fa-cloud fa-4x"></i>
									<h2>11º C</h2>
									<h4>종로구</h4>
								</div>
							</div>
							<!-- /col-md-4-->
							<!-- DIRECT MESSAGE PANEL -->
							<div class="col-md-8 mb">
								<div class="message-p pn">
									<div class="message-header">
										<h5>최신 메일함 or 쪽지</h5>
									</div>
									<div class="row">
										<div class="col-md-3 centered hidden-sm hidden-xs">
											<img src="img/ui-danro.jpg" class="img-circle" width="65">
										</div>
										<div class="col-md-9">
											<p>
												<name>Dan Rogers</name>
												sent you a message.
											</p>
											<p class="small">3 hours ago</p>
											<p class="message">Lorem Ipsum is simply dummy text of
												the printing and typesetting industry. Lorem Ipsum has been
												the industry's standard dummy text ever since the 1500s.</p>
											<form class="form-inline" role="form">
												<div class="form-group">
													<input type="text" class="form-control"
														id="exampleInputText" placeholder="Reply Dan">
												</div>
												<button type="submit" class="btn btn-default">Send</button>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- /col-md-8  -->
						</div>
						
						<!-- /row -->
	<div class="col-md-8 mb">
								<div class="message-p pn">
									<div class="message-header">
										<h5>결재 대기 문서</h5>
									</div>
									<div class="row">
										<div class="col-md-3 centered hidden-sm hidden-xs">
											<img src="img/ui-danro.jpg" class="img-circle" width="65">
										</div>
										<div class="col-md-9">
											<p>
												<name>Dan Rogers</name>
												sent you a message.
											</p>
											<p class="small">3 hours ago</p>
											<p class="message">Lorem Ipsum is simply dummy text of
												the printing and typesetting industry. Lorem Ipsum has been
												the industry's standard dummy text ever since the 1500s.</p>
											<form class="form-inline" role="form">
												<button type="submit" class="btn btn-default">Send</button>
											</form>
										</div>
									</div>
								</div>
							</div>


						<!-- /row -->
					</div>
					<!-- /col-lg-9 END SECTION MIDDLE -->
					<!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
					<div class="col-lg-3 ds">
						<!--COMPLETED ACTIONS DONUTS CHART-->
						
						<!--NEW EARNING STATS -->
						
						<!--new earning end-->
						<!-- RECENT ACTIVITIES SECTION -->
						<h4 class="centered mt">가입 커뮤니티 최신글</h4>
						<!-- First Activity -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>Just Now</muted>
									<br /> <a href="#">Paul Rudd</a> purchased an item.<br />
								</p>
							</div>
						</div>
						<!-- Second Activity -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>2 Minutes Ago</muted>
									<br /> <a href="#">James Brown</a> subscribed to your
									newsletter.<br />
								</p>
							</div>
						</div>
						<!-- Third Activity -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>3 Hours Ago</muted>
									<br /> <a href="#">Diana Kennedy</a> purchased a year
									subscription.<br />
								</p>
							</div>
						</div>
						<!-- Fourth Activity -->
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							<div class="details">
								<p>
									<muted>7 Hours Ago</muted>
									<br /> <a href="#">Brando Page</a> purchased a year
									subscription.<br />
								</p>
							</div>
						</div>
						<!-- USERS ONLINE SECTION -->
						<h4 class="centered mt">TEAM MEMBERS ONLINE</h4>
						<!-- First Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="img/ui-divya.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">DIVYA MANIAN</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Second Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="img/ui-sherman.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">DJ SHERMAN</a><br />
									<muted>I am Busy</muted>
								</p>
							</div>
						</div>
						<!-- Third Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="img/ui-danro.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">DAN ROGERS</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Fourth Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="img/ui-zac.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">Zac Sniders</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- CALENDAR-->
						<div id="calendar" class="mb">
							<div class="panel green-panel no-margin">
								<div class="panel-body">
									<div id="date-popover" class="popover top"
										style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
										<div class="arrow"></div>
										<h3 class="popover-title" style="disadding: none;"></h3>
										<div id="date-popover-content" class="popover-content"></div>
									</div>
									<div id="my-calendar"></div>
								</div>
							</div>
						</div>
						<!-- / calendar -->
					</div>
					<!-- /col-lg-3 -->
				</div>
				<!-- /row -->
			</section>
		</section>
		<!--main content end-->
		<jsp:include page="default/footer.jsp" />
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/lib/jquery/jquery.min.js"></script>

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
	<!--script for this page-->
	<script src="resources/lib/sparkline-chart.js"></script>
	<script src="resources/lib/zabuto_calendar.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var unique_id = $.gritter
									.add({
										// (string | mandatory) the heading of the notification
										title : 'Welcome to Dashio!',
										// (string | mandatory) the text inside the notification
										text : 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
										// (string | optional) the image to display on the left
										image : 'img/ui-sam.jpg',
										// (bool | optional) if you want it to fade out on its own or just sit there
										sticky : false,
										// (int | optional) the time you want it to be alive for before fading out
										time : 8000,
										// (string | optional) the class name you want to apply to that specific message
										class_name : 'my-sticky-class'
									});

							return false;
						});
	</script>
	<script type="application/javascript">
		
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  
	</script>
</body>

</html>
