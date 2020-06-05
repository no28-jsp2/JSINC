<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
        <h3><i class="fa fa-angle-right"></i> 커뮤니티 만들기</h3>
		
<form action="submitCom" method="post" onsubmit="return validat();" >
		
		 <div class="form-group">
		 
		 <h4>커뮤니티 제목<br></h4>
                <input type="name" name="title" class="form-control"
                 id="title" placeholder="커뮤니티 명" data-rule="minlen:4" data-msg="Please enter at least 4 chars" >
                <div class="validate"></div>
              </div>
    	 <h4>커뮤니티 소개<br></h4>
		<div class="form-group">
			<textarea class="form-control" name="content" id="message"
				placeholder="소개글" rows="5" data-rule="required"
				data-msg="Please write something for us"></textarea>
			<div class="validate"></div>
		</div>
		
		  <div class="form-send" align="center">
                <button type="submit" class="btn btn-success">커뮤니티 만들기</button>
                <button type="button" class="btn btn-danger" style="width: 100px;" onclick="location.href='allCommunity'">취소</button>
          </div>
		</form>
		   <div align="center">
            <h4 class="title">커뮤니티 </h4>
            <p>커뮤니티는 누구나 만들 수 있습니다. 단, 생성한 커뮤니티는 관리자 설정 여부에 따라 자동으로 또는 관라지의 승인을 얻은 후에 활성화 됩니다.</p><p> Tips.해당 커뮤니티에 가입하지 않은 경우, 게시물 작성은 불가하고 댓글 작성은 가능합니다.</p>
            <ul class="contact_details">
              <li><i class="fa fa-phone-square"></i> 02-478-3266</li>
              <li><i class="fa fa-home"></i> 서울특별시 종로구 돈화문로 26</li>
            </ul>
            </div>
	</section>
	</section>
	<!-- 검사 -->
	<script type="text/javascript">
	function validat(){
		if($("#title").val()==""){
			alert("커뮤니티 제목을 입력해주세요")
			$("#title").focus()
			return false;
		}
		if($("#message").val()==""){
			alert("소개글을 입력해주세요")
			$("#message").focus()
			return false;
		}
		
		alert("커뮤니티 승인 요청을 하였습니다.")
		
	}
	</script>
	
	
	
	
	
	
	<!--main content end-->
	<jsp:include page="../default/footer.jsp" />
	<script	src="resources/bxSli/js/jquery-3.5.1.min.js"></script>
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


</body>
</html>