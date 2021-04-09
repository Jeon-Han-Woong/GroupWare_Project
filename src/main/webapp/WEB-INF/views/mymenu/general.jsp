<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/icofont/icofont.min.css">
<!-- Bootstrap CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="/resources/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="/resources/css/elegant-icons-style.css" rel="stylesheet" />
<link href="/resources/css/font-awesome.min.css" rel="stylesheet" />
<!-- full calendar css-->
<link
	href="/resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link
	href="/resources/assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link
	href="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link rel="stylesheet" href="/resources/css/owl.carousel.css"
	type="text/css">
<link href="/resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="/resources/css/fullcalendar.css">
<link href="/resources/css/widgets.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/style-responsive.css" rel="stylesheet" />
<link href="/resources/css/xcharts.min.css" rel=" stylesheet">
<link href="/resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>
<body>
	<!-- container section start -->
	<section id="container" class="">

		<!-- include (header, sidebar) start -->
		<%@ include file="/WEB-INF/views/include/header.jsp"%>

		<%@ include file="/WEB-INF/views/include/sidebar.jsp"%>
		<!-- include (header, sidebar) end -->




		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-list-alt"></i> 공지사항
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
							<li><i class="fa fa-desktop"></i>게시판</li>
							<li><i class="fa fa-list-alt"></i>공지사항</li>
						</ol>
					</div>
				</div>
				<div class="row">
			<div class="col-lg-6">
				<!--notification start-->
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> 공지사항 </header>
							<table class="table">
								<thead>
									<tr>
										<th>제목</th>
										<th>내용</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="board" items="${general }">
										<tr>
											<td><a href="/mine/get?bno=${board.bno }"> ${board.btitle }</a></td>
											<td>${board.bcontent }</td>
											<td>${board.bwriter }</td>
											<td>${board.bwrite_date }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</section>
					</div>
				</div>
			</div>
		</div>
		
		<!--main content end-->



		<div class="text-right">
			<div class="credits">
				<!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Pu
           rchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>

		<!--main content end-->

	</section>

	<div class="container">
		<table class="table table-hover">

			<tbody>

			</tbody>
		</table>
	</div>
	<!-- javascripts -->
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/jquery-ui-1.10.4.min.js"></script>
	<script src="/resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript"
		src="/resources/js/jquery-ui-1.9.2.custom.min.js"></script>
	<!-- bootstrap -->
	<script src="/resources/js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="/resources/js/jquery.scrollTo.min.js"></script>
	<script src="/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- charts scripts -->
	<script src="/resources/assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="/resources/js/jquery.sparkline.js" type="text/javascript"></script>
	<script
		src="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="/resources/js/owl.carousel.js"></script>
	<!-- jQuery full calendar -->
	<script src="/resources/js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script
		src="/resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<!--script for this page only-->
	<script src="/resources/js/calendar-custom.js"></script>
	<script src="/resources/js/jquery.rateit.min.js"></script>
	<!-- custom select -->
	<script src="/resources/js/jquery.customSelect.min.js"></script>
	<script src="/resources/assets/chart-master/Chart.js"></script>

	<!--custome script for all page-->
	<script src="/resources/js/scripts.js"></script>
	<!-- custom script for this page-->
	<script src="/resources/js/sparkline-chart.js"></script>
	<script src="/resources/js/easy-pie-chart.js"></script>
	<script src="/resources/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="/resources/js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="/resources/js/xcharts.min.js"></script>
	<script src="/resources/js/jquery.autosize.min.js"></script>
	<script src="/resources/js/jquery.placeholder.min.js"></script>
	<script src="/resources/js/gdp-data.js"></script>
	<script src="/resources/js/morris.min.js"></script>
	<script src="/resources/js/sparklines.js"></script>
	<script src="/resources/js/charts.js"></script>
	<script src="/resources/js/jquery.slimscroll.min.js"></script>
</body>
</html>