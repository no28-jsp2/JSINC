<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<link rel="stylesheet" type="text/css" href="resource/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css" href="resource/lib/gritter/css/jquery.gritter.css" />

<!-- Custom styles for this template -->
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-responsive.css" rel="stylesheet">
<script src="resources/lib/chart-master/Chart.js"></script>
</head>
<body>
<section id="container">
		<jsp:include page="../default/header.jsp" />
		<jsp:include page="../default/sidebar.jsp" />
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 보낸 쪽지함
				</h3>
				<div class="row mb">
					<!-- page start-->
					<div class="content-panel">
						<div class="adv-table">
							<table cellpadding="0" cellspacing="0" border="0"
								class="display table table-bordered" id="hidden-table-info">
								<thead>
											<tr>
										<th>받는사람</th>
										<th>부서</th>
										<th>제목</th>
										<th>송신 시간</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
								
								<c:forEach var="dto" items="${list }">
								<tr>
									<td><h5>${dto.receiver } ${dto.recRank }</h5></td>
									<td><h5>${dto.recDep }</h5></td>
									<td><h5><a href="sentContentView?subject=${dto.subject }&content=${dto.content}&sentTime=${dto.sentTime}&sender=${dto.sender}">${dto.subject }</a></h5></td>
									<td><h5>${dto.sentTime }</h5></td>
									<td><button type="button" class="btn btn-danger">삭제</button></td>
								</tr>
								
								</c:forEach>
								
								</tbody>
							</table>
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
					"aoColumnDefs" : [ {"bSortable" : false, "aTargets" : [ 0 ]} ], "aaSorting" : [ [ 3, 'desc' ] ]
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