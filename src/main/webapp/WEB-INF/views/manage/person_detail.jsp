<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="/resources/img/favicon.png">

  <title>SIGN ME</title>
  <link rel="icon" type="image/png"  href="/resources/img/signmefavicon.png"/>
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
  <link href="/resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="/resources/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="/resources/css/owl.carousel.css" type="text/css">
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
<body>
  <!-- container section start -->
  <section id="container" class="">

<!-- include (header, sidebar) start -->  
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
<%@ include file="/WEB-INF/views/include/sidebar.jsp" %>
<!-- include (header, sidebar) end -->
	<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><strong><i class="icofont-user"></i>사원 상세 정보</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icofont-robot-face"></i><a href="/manage/">관리자 메뉴</a></li>
              <li><i class="icofont-users-social"></i><a href="/manage/personnel">인사 관리</a></li>
              <li><i class="icofont-search-user"></i><a href="/manage/permanage">사원 관리</a></li>
              <li><i class="icofont-user"></i>사원 상세 정보</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                사원 상세 정보
              </header>
              <div class="panel-body">
                <div class="form">
                  <form class="form-validate form-horizontal" id="register_form" method="post">
                    <input type="hidden" name="mno" value="${detail.mno}">
                    <input type="hidden" name="deptno" value="${detail.deptno}">
                    <input type="hidden" name="mpwd" value="${detail.mpwd}">
                    <input type="hidden" name="marry" value="${detail.marry }">
                    <input type="hidden" name="military" value="${detail.military }">
                    <input type="hidden" name="gender" value="${detail.gender }">
                    <input type="hidden" name="vacachk" value="${detail.vacachk }">
                    <input type="hidden" name="page" value="${cri.page}">
                    <input type="hidden" name="searchType" value="${cri.searchType}">
                    <input type="hidden" name="keyword" value="${cri.keyword}">
                    <div class="form-group">
                      <label for="mname" class="control-label col-lg-1">이름 <span class="required">*</span></label>
                      <div class="col-lg-3">
                        <input class=" form-control" id="mname" name="mname" type="text" value="${detail.mname}" readonly/>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="memail" class="control-label col-lg-1">이메일 <span class="required">*</span></label>
                      <div class="col-lg-6">
                        <input class="form-control" id="memail" name="memail" type="text" value="${detail.memail}" readonly/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="hiredate" class="control-label col-lg-1">입사일 <span class="required"></span></label>
                      <div class="col-lg-6">
                        <input class="form-control" id="hiredate" name="hiredate" type="date" value="${detail.hiredate}" readonly/>
                      </div>
                      <label class="control-label col-lg-3">미선택 시, 등록일로 입력됩니다.</label>
                    </div>
                    <div class="form-group ">
                      <label for="deptname" class="control-label col-lg-1">부서 <span class="required"></span></label>
                      <div class="col-lg-2">
                        <input class="form-control" id="deptname" name="deptname" type="text" value="${detail.deptname}" readonly/>
                      </div>
                      <label for="position" class="control-label col-lg-1 col-lg-offset-1">직위 <span class="required"></span></label>
                      <div class="col-lg-2">
                        <input class="form-control" id="position" name="position" type="text" value="${detail.position}" readonly/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="mpnum" class="control-label col-lg-1">연락처 <span class="required">*</span></label>
                      <div class="col-lg-6">
                        <input class="form-control" id="mpnum" name="mpnum" type="text" value="${detail.mpnum}" readonly/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="maddress" class="control-label col-lg-1">주소 <span class="required">*</span></label>
                      <div class="col-lg-6">
                        <input class="form-control" id="maddress" name="maddress" type="text" value="${detail.maddress}" readonly/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="mbirth" class="control-label col-lg-1">생년월일 <span class="required"></span></label>
                      <div class="col-lg-6">
                        <input class="form-control" id="mbirth" name="mbirth" type="date" value="${detail.mbirth}" readonly/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="gender" class="control-label col-lg-1">성별 <span class="required"></span></label>
                      <div class="col-lg-2">
                        <input class="form-control" id="gender" type="text" value=
                        <c:choose>
                  			<c:when test="${detail.gender eq 1}">
                  				<c:out value="남자"/>
                  			</c:when>
                  			<c:when test="${detail.gender eq 2}">
                  				<c:out value="여자"/>
                  			</c:when>
                  		</c:choose> readonly/>
                      </div>
                      <label for="military" class="control-label col-lg-1 col-lg-offset-1">병역여부 <span class="required"></span></label>
                      <div class="col-lg-2">
                        <input class="form-control" id="military" type="text" value=
							<c:choose>
                  				<c:when test="${detail.military eq 1}">
                  					<c:out value="군필"/>
                  				</c:when>
                  				<c:when test="${detail.military eq 2}">
                  					<c:out value="미필"/>
                  				</c:when>
                  			</c:choose> readonly/>
                      </div>
                      <label for="marry" class="control-label col-lg-1 col-lg-offset-1">혼인여부 <span class="required"></span></label>
                      <div class="col-lg-2">
                        <input class="form-control" id="marry" type="text" value=
	                        <c:choose>
	                  			<c:when test="${detail.marry eq 1}">
	                  				<c:out value="기혼"/>
	                  			</c:when>
	                  			<c:when test="${detail.marry eq 2}">
	                  				<c:out value="미혼"/>
	                  			</c:when>
	                  		</c:choose> readonly/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="vacachk" class="control-label col-lg-1">휴가여부 <span class="required"></span></label>
                        <div class="col-lg-2">
                        <input class="form-control" id="vacachk" type="text" value=
                        	<c:choose>
                  				<c:when test="${detail.vacachk eq 1}">
                  					<c:out value="근무중"/>
	                  			</c:when>
	                  			<c:when test="${detail.vacachk eq 2}">
	                  				<c:out value="휴가중"/>
	                  			</c:when>
	                  		</c:choose> readonly/>
                      </div>
                      
                      <label for="vacarem" class="control-label col-lg-1 col-lg-offset-1">휴가일수</label>
                      <div class="col-lg-2">
                        <input class="form-control" id="vacarem" name="vacarem" type="text" value="${detail.vacarem}" readonly/>
                      </div>
                    </div>
                    <div class="form-group row">
                    	<a class="btn btn-default btn-lg col-lg-1 col-lg-offset-3" href="/manage/permanage?page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}"><i class="icofont-exit"></i></a>
                        <button class="btn btn-success btn-lg col-lg-1 col-lg-offset-1" data-oper="modify" type="submit"><i class="icofont-edit"></i></button>
                        <button class="btn btn-danger btn-lg col-lg-1 col-lg-offset-1" data-oper="remove" type="submit"><i class="icofont-ui-delete"></i></button>
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

 
  <!-- container section start -->
  <div class="text-right">
        <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </section>

<!-- javascripts -->
  <script src="/resources/js/jquery.js"></script>
  <script src="/resources/js/jquery-ui-1.10.4.min.js"></script>
  <script src="/resources/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="/resources/js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="/resources/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="/resources/js/jquery.scrollTo.min.js"></script>
  <script src="/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="/resources/assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="/resources/js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="/resources/js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <script src="/resources/js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="/resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
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
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>
    
    <script type="text/javascript">
    $(document).ready(function() {
		var formObj = $("form");
		
		$("button").on("click", function(e) {
			e.preventDefault();
			
			if ($(this).data("oper") === "remove"){
				formObj.attr("action", "perremove")
			} else {
				formObj.attr("action", "permodify")
			}
			formObj.submit();
		});
	
	});
    </script>

</body>

</html>
