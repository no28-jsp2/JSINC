<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
        <h3><i class="fa fa-angle-right"></i> 내가 가입한 커뮤니티</h3>

	 <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <hr>
                <thead>
                  <tr>
                  	<th>번호</th>
                    <th>커뮤니티(명)</th>
                    <th>회원수</th>
                    <th>마스터</th>
                    <th>가입여부</th>
                  </tr>
                </thead>
                <tbody>
           	<c:choose>
				<c:when test="${noData eq '0' }">
				<tr>
				<td colspan="5" align="center">내용이 없습니다</td>
				</tr>
				</c:when>
				<c:otherwise>
				<c:forEach items='${allList }' var="dto">
				<tr>
				<td>${dto.cNo }</td>
				<td><a href="viewCom?title=${dto.title }&cno=${dto.cNo}">${dto.title}</a></td>
				<td>${dto.members }</td>
				<td>${dto.name } ${dto.rank }</td>
				<td>가입</td>
				</tr>
				</c:forEach>   
				
				</c:otherwise>
				            
            </c:choose>
               
                </tbody>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->


		
	</section>
	</section>
	
	
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