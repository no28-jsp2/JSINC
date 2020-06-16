<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">
ul li img {
	width: 100%;
	height: 300px;
}
</style>

<title>JS.Inc</title>

</head>
<body>
	<section id="container">
		<jsp:include page="default/header.jsp" />
			 <!--sidebar start-->
      <aside>
         <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
               <p class="centered">
                  <a href="profile">
                     <img src="resources/img${user.img}" class="img-circle" width="80">
                  </a>
               </p>
               <h5 class="centered"><i class="fa fa-user"></i> ${user.name } <br>(${user.userEmail })</h5>
               
               <!-- 출/퇴근 관리 -->
               <li class="mt">
                  <a href="attendance"> 
                     <i class="fa fa-asterisk"></i> <span>출/퇴근</span>
                  </a>
               </li>
               
               <!-- 커뮤니티 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-desktop"></i> <span>커뮤니티</span>
                  </a>
                  <ul class="sub">
                     <li ><a href="createCommunity">커뮤니티 만들기</a></li>
                     <li ><a href="allCommunity">전체 커뮤니티</a></li>
                     <li><a href="joinCommunity">가입 커뮤니티</a></li>
                     
                  </ul>
               </li>
               
               <!-- 게시판 -->
               <li class="sub-menu"><a href="javascript:;"> <i
                     class="fa fa-cogs"></i> <span>게시판</span>
               </a>
                  <ul class="sub">
                     <li><a href="allCompanyBoard">전사 게시판</a></li>
                     <li><a href="departmentBoard">부서 게시판</a></li>
                     <li><a href="referenceBoard">자료실 게시판</a></li>
                  </ul>
               </li>
               
               <!-- 전자 결재 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-book"></i>  <span>전자 결재</span>
                  </a>
                  <ul class="sub">
                     <li><a href="newSign">결재 상신</a></li>
                     <li><a href="signWait">결재 대기</a></li>
                     <li><a href="signSuccess">결재 완료</a></li>
                  </ul>
               </li>
               
               <!-- 주소록 -->
               <li >
                  <a href="addressBook"> 
                     <i class="fa fa-tasks"></i><span>주소록</span>
                  </a>
               </li>
               
               <!-- 캘린더 -->
               <li>
                  <a href="toDoList">
                     <i class="fa fa-th"></i><span>스케줄</span>
                  </a>
               </li>
               

               
               <!-- 보고 -->
               <li>
                  <a href="report"> 
                     <i class=" fa fa-bar-chart-o"></i><span>보고</span>
               		</a>
               </li>
               
               <!-- 쪽지 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-comments-o"></i> <span>쪽지함</span><span class="label label-theme pull-right mail-info">${msgAlarm }</span>
                  </a>
                  <ul class="sub">
                     <li><a href="sentMessage">보낸 쪽지함</a></li>
                     <li><a href="RecMessage">받은 쪽지함</a></li>
                  </ul>
               </li>
               
               <!-- 설문 -->
               <li class="sub-menu">
                  <a href="javascript:;"> 
                     <i class="fa fa-map-marker"></i>  <span>설문</span>
                  </a>
                  <ul class="sub">
                  	 <li><a href="createSurvey">새 설문 작성</a></li>
                     <li><a href="startedSurvey">진행중인 설문</a></li>
                     <li><a href="endSurvey">마감된 설문</a></li>
                     <li><a href="mySurvey">내가 만든 설문</a></li>
                  </ul>
               </li>
            </ul>
            <!-- sidebar menu end-->
         </div>
      </aside>
      <!--sidebar end-->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-9 main-chart">
						<!--CUSTOM CHART START -->

						<div class="border-head"></div>
						<div class="custom-bar-chart"
							style="width: 90%; margin: 0 auto; margin-bottom: 50px;">
							<div align="center" style="margin: 0 auto;">
								<ul class="bxSlider">
									<li><img alt="" src="resources/bxSli/img/pic01.png"></a></li>
									<li><img alt="" src="resources/bxSli/img/pic02.jpg"></a></li>
									<li><img alt="" src="resources/bxSli/img/pic03.png"></a></li>
								</ul>
							</div>

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
									<i class="cicon"></i>
									<h2 class="ctemp">현재 온도:</h2>
									<h4 class="humtemp">습도:</h2>
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
						<h4 class="centered mt">읽지 않은 메세지</h4>
					
				<c:if test="${empty recList}">
						<div class="desc" align="center" style="margin-bottom: 250px;">
							<a href="RecMessage">받은 쪽지함 바로가기</a>
						</div>
				</c:if>	
						<c:forEach var="rec" items="${recList }" begin="0" end="3">
						<div class="desc">
							<div class="thumb">
								<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
							</div>
							
								<p>
									${rec.sentTime }
									<br /><a href="recContentView?subject=${rec.subject }&content=${rec.content}&sentTime=${rec.sentTime}&sender=${rec.sender}&senderRank=${rec.senderRank}&senderDep=${rec.senderDep}&senderEmpNo=${rec.senderEmpNo}">${rec.sender }</a>&nbsp;${rec.senderRank }님이  메세지를 보내셨습니다.<br />
								</p>
						
						</div>
						</c:forEach>
								
					
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
	<!-- 날씨 -->
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		
	<script>
	$.getJSON('http://api.openweathermap.org/data/2.5/weather?lat=37.5711258&lon=126.991981&APPID=254aee44df076ff4abe18019eaec0bbf', function(data){
		var $cTemp=Math.floor(data.main.temp-273.15)+"ºC";
		var $minTemp=Math.floor(data.main.temp_min-273.15);
	 	var $maxTemp=Math.floor(data.main.temp_max-273.15);
	 	var $cDate=data.dt;
	 	var $wIcon=data.weather[0].icon;
	 	var $hum=(data.main.humidity+"%");
	 	
	 	$('.ctemp').append($cTemp)
	 	$('.humtemp').append($hum)
	 	$('.cicon').append('<img src="http://openweathermap.org/img/wn/'+$wIcon+'@2x.png"/>')
	    });

	</script>
	
	<!--날씨 end  -->
	<!-- slider -->
	<link rel="stylesheet" href="resources/bxSli/css/jquery.bxslider.css">
	<script src="resources/bxSli/js/jquery-3.5.1.min.js"></script>
	<script src="resources/bxSli/js/jquery.bxslider.js"></script>
	<script src="resources/bxSli/images/controls.png"></script>
	<!-- slider end -->
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
    
    $(document).ready(function() {
		$(".bxSlider").bxSlider({
			auto : true,
			speed : 500,
			pause:5000,
			

		});

	});
	</script>
</body>

</html>
