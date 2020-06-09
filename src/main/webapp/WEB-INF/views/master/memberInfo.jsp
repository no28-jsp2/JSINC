<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>JS.Inc</title>
<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href="resources/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="resources/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/lib/advanced-datatable/css/DT_bootstrap.css" />
<!-- Custom styles for this template -->
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-responsive.css" rel="stylesheet">
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="memberMng" class="logo"><b>JS<span>Inc</span></b></a>
			<!--logo end-->
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="logout">로그아웃</a></li>
				</ul>
			</div>
		</header>
		<!--header end-->
		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<h5 class="centered">
						<i class="fa fa-user"></i> 관리자
					</h5>
					<!-- 사원 관리 -->
					<li class="mt">
						<a class="active" href="#"> 
							<i class="fa fa-asterisk"></i>
							<span>사원 관리</span>
						</a>
					</li>

					<!-- 커뮤니티 관리 -->
					<li>
						<a href="#"> 
							<i class="fa fa-asterisk"></i>
							<span>커뮤니티 승인/삭제</span>
						</a>
					</li>

					<!-- 설문 관리 -->
					<li>
						<a href="#"> 
							<i class="fa fa-asterisk"></i>
							<span>설문 승인/삭제</span>
						</a>
					</li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 사원 정보
				</h3>
				<div class="row mb">
					<!-- page start-->
					<div class="content-panel">
						<div class="form-panel">
							<h4 class="mb">
								<i class="fa fa-angle-right"></i> 수정하기
							</h4>
							<form class="form-horizontal style-form" method="get">
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">Default</label>
									<div class="col-sm-10">
										<input type="text" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">Help text</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"> 
										<span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">Rounder</label>
									<div class="col-sm-10">
										<input type="text" class="form-control round-form">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">Input focus</label>
									<div class="col-sm-10">
										<input class="form-control" id="focusedInput" type="text" value="This is focused...">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">Disabled</label>
									<div class="col-sm-10">
										<input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">Placeholder</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="placeholder">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">Password</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" placeholder="">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-2 col-sm-2 control-label">Static control</label>
									<div class="col-lg-10">
										<p class="form-control-static">email@example.com</p>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- page end-->
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
	<script type="text/javascript" language="javascript" src="resources/lib/advanced-datatable/js/jquery.js"></script>
	<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/lib/jquery.scrollTo.min.js"></script>
	<script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
	<script type="text/javascript" language="javascript" src="resources/lib/advanced-datatable/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="resources/lib/advanced-datatable/js/DT_bootstrap.js"></script>
	<!--common script for all pages-->
	<script src="resources/lib/common-scripts.js"></script>
	<!--script for this page-->
	<script src="resources/lib/ckeditor/ckeditor.js"></script>
	<script type="text/javascript">
		/* Formating function for row details 
		function fnFormatDetails(oTable, nTr) {
			var aData = oTable.fnGetData(nTr);
			var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
			sOut += '<tr><td>Rendering engine:</td><td>' + aData[2] + '</td></tr>';
			sOut += '</table>';
			return sOut;
		}
		*/
		$(document).ready(
			function() {
				var nCloneTh = document.createElement('th');
				var nCloneTd = document.createElement('td');
				/*
				nCloneTd.innerHTML = '<img src="resources/lib/advanced-datatable/images/details_open.png">';
				nCloneTd.className = "center";
				*/
				
				$('#hidden-table-info thead tr').each(
					function() {
						this.insertBefore(nCloneTh,this.childNodes[0]);
					}
				);

				$('#hidden-table-info tbody tr').each(
					function() {
						this.insertBefore(nCloneTd.cloneNode(true),this.childNodes[0]);
					}
				);
				
				/*
				 * Initialse DataTables, with no sorting on the 'details' column
				 */
				 
				var oTable = $('#hidden-table-info').dataTable({
					"aoColumnDefs" : [ {"bSortable" : false, "aTargets" : [ 0 ]} ], "aaSorting" : [ [ 1, 'asc' ] ]
				});

				/* Add event listener for opening and closing details
				 * Note that the indicator for showing which row is open is not controlled by DataTables,
				 * rather it is done here
				 */
				
				 /*
				$('#hidden-table-info tbody td img').live('click',
					function() {
						var nTr = $(this).parents('tr')[0];
						if (oTable.fnIsOpen(nTr)) {
							this.src = "resources/lib/advanced-datatable/images/details_open.png";
							oTable.fnClose(nTr);
						} else {
							this.src = "resources/lib/advanced-datatable/images/details_close.png";
							oTable.fnOpen(nTr,fnFormatDetails(oTable,nTr),'details');
						}
					}
				);*/
			}
		);
	</script>
</body>

</html>
