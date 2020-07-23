<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- by성택_화면 잠금 페이지_20200529 -->

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>JS.Inc</title>

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

</head>

<body onload="getTime()">
	<div class="container">
		<div id="showtime"></div>
		<div class="col-lg-4 col-lg-offset-4">
			<div class="lock-screen">
				<h2>
					<a data-toggle="modal" href="#myModal"><i class="fa fa-lock"></i></a>
				</h2>
				<p>UNLOCK</p>
				<!-- Modal -->
				<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
					tabindex="-1" id="myModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="lock">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title">화면 잠금 해체</h4>
								</div>
								<div class="modal-body">
									<p class="centered">
										<img class="img-circle" width="80"
											src="resources/img${user.img}">
									</p>
									<input type="password" name="password" placeholder="비밀번호 입력"
										autocomplete="off" class="form-control placeholder-no-fix">
								</div>
								<div class="modal-footer centered">
									<button data-dismiss="modal" class="btn btn-theme04"
										type="button">취소</button>
									<button class="btn btn-theme03" type="submit">로그인</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- modal -->
			</div>
			<!-- /lock-screen -->
		</div>
		<!-- /col-lg-4 -->
	</div>
	<!-- /container -->
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/lib/jquery/jquery.min.js"></script>
	<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
	<!--BACKSTRETCH-->
	<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
	<script type="text/javascript"
		src="resources/lib/jquery.backstretch.min.js"></script>
	<script>
		$.backstretch("resources/img/login-bg.jpg", {
			speed : 500
		});
	</script>
	<script>
		function getTime() {
			var today = new Date();
			var h = today.getHours();
			var m = today.getMinutes();
			var s = today.getSeconds();
			// add a zero in front of numbers<10
			m = checkTime(m);
			s = checkTime(s);
			document.getElementById('showtime').innerHTML = h + ":" + m + ":"
					+ s;
			t = setTimeout(function() {
				getTime()
			}, 500);
		}

		function checkTime(i) {
			if (i < 10) {
				i = "0" + i;
			}
			return i;
		}
	</script>
</body>

</html>
