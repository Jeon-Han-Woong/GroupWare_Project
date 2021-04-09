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
	content="Creative, Dashmemberget, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
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
<link href="/resources/assets/fullcalendar/fullcalendar/fullcalendar.css"
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

		<!-- main content start -->


<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-files-o"></i> 내 정보 수정</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="icon_document_alt"></i>내 정보</li>
              <li><i class="icon_document_alt"></i>내 정보 수정</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                내 정보 수정
              </header>
				
              <div class="panel-body">
        
                <div class="form">
                  <form class="form-validate form-horizontal" method="post" action="/myboard/modifyrun">
               	<input type="hidden" name="mno" value="${board.mno }">
                    <div class="form-group ">
                      
                      <label for="membername" class="control-label col-lg-2 col-lg-offset-1">이름 <span
                          class="required"></span></label>
                      <div class="col-lg-3">
                        <input class=" form-control"  name="mname" value="${board.mname }" disabled />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="pwd" class="control-label col-lg-1">비밀번호 <span class="required">*</span></label>
                      <div class="col-lg-3">
                        <input class=" form-control"  name="mpwd" value="${board.mpwd }"  />
                      </div>
                      <label for="repwd" class="control-label col-lg-2 col-lg-offset-1">비밀번호 확인 <span
                          class="required">*</span></label>
                      <div class="col-lg-3">
                        <input class=" form-control"  name="repwd" type="text" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="email" class="control-label col-lg-1">이메일 </label>
                      <div class="col-lg-6">
                        <input class="form-control"  name="memail" value="${board.memail }" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="hiredate" class="control-label col-lg-1">입사일 </label>
                      <div class="col-lg-6">
                        <input class="form-control"  name="hiredate" value="${board.hiredate }" disabled />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="dept" class="control-label col-lg-1">부서 <span class="required"></span></label>
                      <div class="col-lg-2">
                        <select class="form-control" id="dept" name="dept" disabled>
                          <option>1</option>
                          <option>영업1부</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                      <label for="level" class="control-label col-lg-1 col-lg-offset-1">직위 <span
                          class="required"></span></label>
                      <div class="col-lg-2">
                        <select  class="form-control" id="levle" name="level"  disabled>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="phonenumber" class="control-label col-lg-1">연락처 <span class="required"></span></label>
                      <div class="col-lg-6">
                        <input class="form-control" name="mpnum" value="${board.mpnum }" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="address" class="control-label col-lg-1">주소 </label>
                      <div class="col-lg-6">
                        <input class="form-control"  name="maddress" value="${board.maddress }" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="hiredate" class="control-label col-lg-1">생년월일 </label>
                      <div class="col-lg-6">
                        <input class="form-control"  name="mbirth" value="${board.mbirth }" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="gender" class="control-label col-lg-1">성별 </label>
                      <div class="col-lg-2">
                        <select class="form-control" id="gender" name="gender">
                          <option>남자</option>
                          <option>여자</option>
                        </select>
                      </div>
                      <label for="milchk" class="control-label col-lg-1 col-lg-offset-1">병역여부 </label>
                      <div class="col-lg-2">
                        <select class="form-control" id="milchk" name="milck">
                          <option>미필</option>
                          <option>군필</option>
                        </select>
                      </div>
                      <label for="marrychk" class="control-label col-lg-1 col-lg-offset-1">혼인여부 </label>
                      <div class="col-lg-2">
                        <select class="form-control" id="marrychk" name="marrychk">
                          <option>미혼</option>
                          <option>기혼</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="vacationchk" class="control-label col-lg-1">휴가여부 <span
                          class="required"></span></label>
                      <div class="col-lg-2">
                        <select class="form-control" id="vacationchk" name="vacationchk" disabled>
                          <option>근무중</option>
                          <option>휴가중</option>
                        </select>
                      </div>
                      <label for="remainvac" class="control-label col-lg-1 col-lg-offset-1">휴가일수 <span
                          class="required"></span></label>
                      <div class="col-lg-2">
                        <input class="form-control"  name="vacarem" value="${board.vacarem }" disabled  />
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
							<button class="btn btn-primary "  type="submit">수정</button>
                        <button class="btn btn-default"  type="button">Cancel</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </section>
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>
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
	</body>

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