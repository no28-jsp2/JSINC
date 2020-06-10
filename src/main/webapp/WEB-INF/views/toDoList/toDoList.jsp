<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
<title>JS.Inc</title>
</head>

<body>
	<section id="container">
		<jsp:include page="../default/header.jsp"/>
		<jsp:include page="../default/sidebar.jsp"/>
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 스케줄
				</h3>
				<!-- SORTABLE TO DO LIST -->
				<div class="row mt">
					<div class="col-md-12">
						<section class="task-panel tasks-widget">
							<div class="panel-heading">
								<div class="pull-left">
									<h5>
										<i class="fa fa-tasks"></i> 오늘 할 일
									</h5>
								</div>
								<br>
							</div>
							<div class="panel-body">
								<div class="task-content">
									<ul class="task-list">
										<c:forEach items="${list }" var="dto_todo">
											<c:choose>
												<c:when test="${dto_todo.checked eq 'Y' }">
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="list-child" name="check" value="${dto_todo.todo}" checked="checked"/>
														</div>
														<div class="task-title">
															<span class="task-title-sp" style="text-decoration: line-through;">${dto_todo.todo}</span> 
															<div class="pull-right">
																<button class="btn btn-success btn-xs" onclick="location.href='check?btns=${dto_todo.todo}'">				
																	<i class=" fa fa-check"></i>
																</button>
																<button class="btn btn-primary btn-xs" onclick="location.href='editPage?btns=${dto_todo.todo}'">
																	<i class="fa fa-pencil"></i>
																</button>
																<button class="btn btn-danger btn-xs" onclick="location.href='delete?btns=${dto_todo.todo}'">
																	<i class="fa fa-trash-o "></i>
																</button>
															</div>
														</div>
													</li>
												</c:when>
												<c:otherwise>
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="list-child" name="check" value="${dto_todo.todo}"/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">${dto_todo.todo}</span> 
															<div class="pull-right">
																<button class="btn btn-success btn-xs" onclick="location.href='check?btns=${dto_todo.todo}'">				
																	<i class=" fa fa-check"></i>
																</button>
																<button class="btn btn-primary btn-xs" onclick="location.href='editPage?btns=${dto_todo.todo}'">
																	<i class="fa fa-pencil"></i>
																</button>
																<button class="btn btn-danger btn-xs" onclick="location.href='delete?btns=${dto_todo.todo}'">
																	<i class="fa fa-trash-o "></i>
																</button>
															</div>
														</div>
													</li>
												</c:otherwise>
											</c:choose>
											
										</c:forEach>
										
									</ul>
								</div>
								<div class=" add-task-row">
									<a class="btn btn-success btn-sm pull-left" href="addTodo">Add New Tasks</a> 
									
								</div>
							</div>
						</section>
					</div>
					<!-- /col-md-12-->
				</div>
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<jsp:include page="../default/footer.jsp"/>
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/lib/jquery/jquery.min.js"></script>
	<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="resources/lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/lib/jquery.scrollTo.min.js"></script>
	<script src="resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="resources/lib/common-scripts.js"></script>
	<!--script for this page-->
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<script src="resources/lib/tasks.js" type="text/javascript"></script>
	
	<script>
		jQuery(document).ready(function() {
			TaskList.initTaskWidget();
		});

		$(function() {
			$("#sortable").sortable();
			$("#sortable").disableSelection();
		});
	</script>

</body>

</html>
