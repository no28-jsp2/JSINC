<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<body>
	<jsp:include page="../default/header.jsp" />
	<jsp:include page="../default/sidebar.jsp" />
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>
				<i class="fa fa-angle-right"></i>커뮤니티 글
			<c:choose>
			<c:when test="${signBut == 1 }">
				<button type="button" disabled="disabled" class="btn btn-round btn-success" onclick="location.href='signUp?title=${view.title}'" >가입
					중</button>
			</c:when>
			<c:otherwise >
					<button type="button" class="btn btn-round btn-success" onclick="location.href='signUp?title=${view.title}'" >가입
					하기</button>
			</c:otherwise>
			
			</c:choose>
			</h3>
		
		
			<script type="text/javascript">
			$('#sign').ready(function(){
				$('#sign').click(function(){
					alert("가입이 완료 되었습니다.")
					console.log("aaaaaa")
				});
				
			});
			</script>
			
			
		
			
			<div class="showback">
							<h4>
								<i class="fa fa-angle-right"></i> 마스터:${view.name }${view.rank }
							</h4>
							<h4>
								<i class="fa fa-angle-right"></i> 커뮤니티 명:${view.title }
							</h4>
							<h4>
								<i class="fa fa-angle-right"></i> 소개:${view.content }
							</h4>
							
			</div>
			<input type="text" id="hide" style="visibility: hidden;"value="${view.title }">
			
			<div style="width: 80%" align="left">

				<div class="form-group">
				<div class="showback">
				<form action="content" onsubmit="return validat()">
					<input type="text" style="visibility: hidden; value="${cno }">
					<textarea class="form-control" name="message" id="contact-message"
						placeholder="내용을 입력해주세요" rows="5" data-rule="required"
						data-msg="Please write something for us"></textarea>
					<button type="submit" class="btn btn-round btn-info" style="margin: 10px;">이야기
						하기</button>
					
				</form>	
					</div>
				</div>
				<hr>
<script type="text/javascript">
	function validat(){
		if($("#contact-message").val()==""){
			alert("내용을 작성해주세요")
			$("#contact-message").focus()
			return false;
		}
		if(${signBut != 1 }){
			alert("가입을 해주시기 바랍니다")
			$("#contact-message").focus()
			return false;
		}
		
		
		alert("등록 되었습니다~")
		
	}
</script>
				

					


				<div class="room-box">
					<h5 class="text-primary">박남혜 차장 2020-06-04 09시04분</h5>
					<span>게시판 목록에서 글번호 대신 '공지'라는 텍스트가 표시되며 목록 상단에 고정됩니다.</span><a href="#" onclick="attachAddr(); return false;" class="btn ty_2 small">추가</a>
              </div>
              	<div class="room-box">
					<h5 class="text-primary">홍길동 차장 2020-06-04 09시04분</h5>
					<span>게시판 목록에서 글번호 대신 '공지'라는 텍스트가 표시되며 목록 상단에 고정됩니다.</span><a href="#" onclick="attachAddr(); return false;" class="btn ty_2 small">추가</a>
              </div>
              
              
              
					
				</div>
			</div>





	<button type="button" class="btn btn-round btn-danger"  style="margin: 10px;">탈퇴 하기..</button>
		</section>
	</section>
	



	<!--main content end-->
	<jsp:include page="../default/footer.jsp" />
	<script src="resources/bxSli/js/jquery-3.5.1.min.js"></script>
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
	<script type="text/javascript">
    /* Formating function for row details */
    function fnFormatDetails(oTable, nTr) {
      var aData = oTable.fnGetData(nTr);
      var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
      sOut += '<tr><td>Rendering engine:</td><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
      sOut += '<tr><td>Link to source:</td><td>Could provide a link here</td></tr>';
      sOut += '<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>';
      sOut += '</table>';

      return sOut;
    }

    $(document).ready(function() {
      /*
       * Insert a 'details' column to the table
       */
      var nCloneTh = document.createElement('th');
      var nCloneTd = document.createElement('td');
      nCloneTd.innerHTML = '<img src="lib/advanced-datatable/images/details_open.png">';
      nCloneTd.className = "center";

      $('#hidden-table-info thead tr').each(function() {
        this.insertBefore(nCloneTh, this.childNodes[0]);
      });

      $('#hidden-table-info tbody tr').each(function() {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
      });

      /*
       * Initialse DataTables, with no sorting on the 'details' column
       */
      var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [{
          "bSortable": false,
          "aTargets": [0]
        }],
        "aaSorting": [
          [1, 'asc']
        ]
      });

      /* Add event listener for opening and closing details
       * Note that the indicator for showing which row is open is not controlled by DataTables,
       * rather it is done here
       */
      $('#hidden-table-info tbody td img').live('click', function() {
        var nTr = $(this).parents('tr')[0];
        if (oTable.fnIsOpen(nTr)) {
          /* This row is already open - close it */
          this.src = "lib/advanced-datatable/media/images/details_open.png";
          oTable.fnClose(nTr);
        } else {
          /* Open this row */
          this.src = "lib/advanced-datatable/images/details_close.png";
          oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
        }
      });
    });
  </script>
</body>
</html>