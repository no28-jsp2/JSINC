<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <jsp:include page="../default/header.jsp" />
		<jsp:include page="../default/sidebar.jsp" />
    <section id="main-content">
    
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 자료실 게시판</h3>
        <div class="row mb">
        	
          <!-- page start-->
          <div class="content-panel">
          <div style="padding-right: 30px; float: right;" align="right"  >
        	<a href="upload"><button type="button" id="write" style="width: 70px; height: 25px;">글 쓰 기</button></a>
        	</div>
            <div class="adv-table">
              
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                <thead>
                  <tr>
                    <th>작성자</th>
                    <th>제목</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="ref" items="${reference}">
                  <tr>
                    <td>${ref.writer }</td>
                    <td><a href="refContent?bno=${ref.bno }">${ref.title }</a></td>
                    <td><fmt:formatDate value="${ref.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
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
      <jsp:include page="../default/footer.jsp" />
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->	

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
  

</body>
</html>