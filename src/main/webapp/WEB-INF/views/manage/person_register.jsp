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
            <h3 class="page-header"><strong><i class="icofont-user"></i> 사원 등록</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icofont-robot-face"></i><a href="/manage/">관리자 메뉴</a></li>
              <li><i class="icofont-users-social"></i><a href="/manage/personnel">인사 관리</a></li>
              <li><i class="icofont-search-user"></i><a href="/manage/permanage">사원 관리</a></li>
              <li><i class="icofont-user"></i>사원 등록</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                사원 등록하기
              </header>
              <div class="panel-body">
                <div class="form">
                  <form class="form-validate form-horizontal" id="register_form" method="post" action="/manage/personreg">
                    <div class="form-group">
                      <label for="mname" class="control-label col-lg-1">이름</label>
                      <div class="col-lg-3">
                        <input class=" form-control" id="mname" name="mname" type="text" required/>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="mpwd" class="control-label col-lg-1">비밀번호</label>
                      <div class="col-lg-3">
                        <input class=" form-control" id="mpwd" name="mpwd" type="password" required/>
                      </div>
                      <label for="repwd" class="control-label col-lg-2 col-lg-offset-1">비밀번호 확인</label>
                      <div class="col-lg-3">
                        <input class=" form-control" id="repwd" type="password" required/>
                      </div>  
                    </div>
                    <div class="form-group">
                      <label for="memail" class="control-label col-lg-1">이메일</label>
                      <div class="col-lg-6">
                        <input class="form-control" id="memail" name="memail" type="text" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="hiredate" class="control-label col-lg-1">입사일</label>
                      <div class="col-lg-6">
                        <input class="form-control" id="hiredate" name="hiredate" type="date" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="deptname" class="control-label col-lg-1">부서</label>
                      <div class="col-lg-2">
                        <select class="form-control" id="deptno" name="deptno">
                          <c:forEach var="d" items="${dept}">
                          	<option value="${d.deptno}">${d.deptname}</option>
                          </c:forEach>
                        </select>
                      </div>
                      <label for="position" class="control-label col-lg-1 col-lg-offset-1">직위</label>
                      <div class="col-lg-2">
                        <select class="form-control" id="position" name="position">
                          <option value="부장">부장</option>
                          <option value="과장">과장</option>
                          <option value="차장">차장</option>
                          <option value="대리">대리</option>
                          <option value="사원">사원</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="mpnum" class="control-label col-lg-1">연락처</label>
                      <div class="col-lg-6">
                        <input class="form-control" id="mpnum" name="mpnum" type="text" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="maddress" class="control-label col-lg-1">주소</label>
                      <div class="col-lg-6">
                        <input class="form-control" id="maddress" name="maddress" type="text" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="mbirth" class="control-label col-lg-1">생년월일</label>
                      <div class="col-lg-6">
                        <input class="form-control" id="mbirth" name="mbirth" type="date" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="gender" class="control-label col-lg-1">성별</label>
                      <div class="col-lg-2">
                        <select class="form-control" id="gender" name="gender">
                          <option value="1">남자</option>
                          <option value="2">여자</option>
                        </select>
                      </div>
                      <label for="military" class="control-label col-lg-1 col-lg-offset-1">병역여부</label>
                      <div class="col-lg-2">
                        <select class="form-control" id="military" name="military">
                          <option value="1">군필</option>
                          <option value="2">미필</option>
                        </select>
                      </div>
                      <label for="marry" class="control-label col-lg-1 col-lg-offset-1">혼인여부</label>
                      <div class="col-lg-2">
                        <select class="form-control" id="marry" name="marry">
                          <option value="1">기혼</option>
                          <option value="2">미혼</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="vacachk" class="control-label col-lg-1">휴가여부</label>
                      <div class="col-lg-2">
                        <select class="form-control" id="vacachk" name="vacachk">
                          <option value="1">근무중</option>
                          <option value="2">휴가중</option>
                        </select>
                      </div>
                      <label for="vacarem" class="control-label col-lg-1 col-lg-offset-1">휴가일수</label>
                      <div class="col-lg-2">
                        <input class="form-control" id="vacarem" name="vacarem" type="text" value="12" required/>
                      </div>
                    </div>
                    <div class="form-group row">
                        <button class="btn btn-primary btn-lg col-lg-1 col-lg-offset-4" type="submit"><i class="icofont-check-circled"></i></button>
                        <a class="btn btn-default btn-lg col-lg-1 col-lg-offset-1" type="button" href="/manage/permanage"><i class="icofont-close-circled"></i></a>
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
    	document.getElementById('hiredate').value = new Date().toISOString().substring(0, 10);
    </script>

</body>

</html>
