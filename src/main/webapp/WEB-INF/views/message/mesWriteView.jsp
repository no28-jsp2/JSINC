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
  <link href="resources/lib/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="resources/css/style.css" rel="stylesheet">
  <link href="resources/css/style-responsive.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<section id="container">
	<jsp:include page="../default/header.jsp" />
	<jsp:include page="../default/sidebar.jsp" />
  <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="row mt">
          <div class="col-sm-13">
            <section class="panel">
              <header class="panel-heading wht-bg">
                <h4 class="gen-case">
                   메세지 보내기
                  </h4>
              </header>
              <div class="panel-body">
           
                <div class="compose-mail">
                  <form role="form-horizontal" method="post" onsubmit="return val()" action="sending">
                    <div class="form-group">
                      <label for="toEmpNo" class="">To:</label>
                      <input type="text" tabindex="1" id="to" class="form-control" value="[${emp.dep }]&nbsp;&nbsp;${emp.name } ${emp.rank }" disabled="disabled">
                    </div>
                    <div class="form-group">
                      <label for="subject" class="" >Subject:</label>
                      <input type="text" name="subject" tabindex="1" id="subject" class="form-control">
                    </div>
                    <div class="compose-editor">
                      <textarea name="content" class="wysihtml5 form-control" rows="9" id="area"></textarea>
                    </div>
                    <div class="compose-btn">
                      <button class="btn btn-theme btn-sm" type="submit"><i class="fa fa-check"></i> 보내기</button>
                      <button class="btn btn-sm" type="button" onclick="#"><i class="fa fa-times"></i> 지우기</button>
                      <button class="btn btn-sm" id="cancel">취소</button>
                      <input type="text" value="${emp.empNo }" name="recEmpNo">
                      <input type="text" value="${emp.name }" name="receiver">
                      <input type="text" value="${emp.rank }" name="recRank">
                      <input type="text" value="${emp.dep }" name="recDep">
                      
                    </div>
                  </form>
                </div>
              </div>
            </section>
          </div>
        </div>
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
</section>
<script type="text/javascript">
function val(){
	if($("#subject").val()==""){
		alert("제목을 작성해주세요")
		return false
	}
	if($("#area").val()== "" || $("#area").val()== null || $("#area").val() == '&nbsp;' || $("#area").val() == '<br>' || $("#area").val() == '<br/>' || $("#area").val() == '<p>&nbsp;'){
		alert("내용을 작성해주세요")
		return false
	}
	
	
	alert("전송 완료")
	
}




</script>
        
   
      <jsp:include page="../default/footer.jsp"/>
      <!-- /wrapper -->
   
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="resources/lib/jquery/jquery.min.js"></script>
  <script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="resources/lib/jquery.scrollTo.min.js"></script>
  <script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="resources/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script type="text/javascript" src="resources/lib/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
  <script type="text/javascript" src="resources/lib/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

  <script type="text/javascript">
    //wysihtml5 start

    $('.wysihtml5').wysihtml5();

    //wysihtml5 end
  </script>
</body>

</html>