<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="resources/img/favicon.png" rel="icon">
  <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="resources/css/style.css" rel="stylesheet">
  <link href="resources/css/style-responsive.css" rel="stylesheet">
<body>
<jsp:include page="../default/header.jsp" />
	<jsp:include page="../default/sidebar.jsp" />
	 <!--main content start-->
	 
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
      
          <div class="col-sm-13">
            <section class="panel">
              <header class="panel-heading wht-bg">
                
                
                <h4 class="gen-case">
                    	받은 메세지
                  </h4>
                  
                  
              </header>
              <div class="panel-body ">
                <div class="mail-header row">
                  <div class="col-md-8">
                    <h4 class="pull-left">제목:${subCon.subject } </h4>
                  </div>
                  
                </div>
                <div class="mail-sender">
                  <div class="row">
                     <div class="col-md-8">
                      <strong>보낸사람:</strong>
                      <span>${subCon.rank }</span>
                    </div>
                    <div class="col-md-4">
                      <p class="date"> ${subCon.sentTime }</p>
                    </div>
                  </div>
                </div>
                <div class="view-mail">
                	${subCon.content }
                </div>
              
                <div class="compose-btn pull-left">
                  <a href="RecMessage" class="btn btn-sm btn-theme"><i class="fa fa-reply"></i> 뒤로가기</a>
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
	 <jsp:include page="../default/footer.jsp"/>
	
                <!-- js placed at the end of the document so the pages load faster -->
  <script src="resources/lib/jquery/jquery.min.js"></script>
  <script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="resources/lib/jquery.scrollTo.min.js"></script>
  <script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="resources/lib/common-scripts.js"></script>
  <!--script for this page-->
</body>
</html>