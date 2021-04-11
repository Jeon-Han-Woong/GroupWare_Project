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

<!-- main content start -->
 
 
 	<section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><strong><i class="icofont-ui-edit"></i></strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icon_document_alt"></i>문서 열람</li>
              <li><i class="icofont-ui-edit"></i>문서 수정</li>
            </ol>
          </div>
        </div>
        <div class="row" style="position: static; width: 1000px">
          <div >
            <section class="panel">
              <header class="panel-heading">
                상세보기
              </header>
              
              
              <div class="panel-body" >
                <form action="/sign/reportModify" class="form-horizontal " method="post">
       
                  <!-- 추후 삭제 가능-->
                  <div class="row" style="height:130px">
                    
                    <div class="col-md-8">
                    </div>
                     
                      
                      

                     <br><br><br>
                 
                  <div class="form-group">
                    <h1 class="text-center" id="titleForm">${board.fname}</h1>
                    <br><br>
                  </div>
                    
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">문서번호</label>
                    <div class="col-sm-11 ">
                      <input type="text" class="form-control" name="bno" readonly value="${board.bno}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">부서명</label>
                    <div class="col-sm-11 ">
                      <input type="text" class="form-control"  readonly value="${board.deptname}"><!-- deptno 작성예정 -->
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label"> 문서명</label>
                    <div class="col-sm-11">
                      <input type="text" class="form-control"  name="btitle">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">작성자</label>
                    <div class="col-sm-11">
                      <input class="form-control" id="focusedInput" type="text" readonly="true" value="${login.mname}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">작성일</label>
                    <div class="col-sm-11">
                      <input class="form-control" id="disabledInput" type="text" readonly="true" value="${board.bwrite_date}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">결재자</label>
                    <div class="col-sm-11">
                      <input type="text" class="form-control" readonly="true" value="${board.bsigner}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">결재일자</label>
                    <div class="col-sm-11">
                      <input type="text" class="form-control" readonly="true" value="${board.bsign_date}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">내용</label>
                    <div class="col-sm-11">
                      <textarea class="form-control" name = "bcontent" cols="30" rows="10"></textarea>
                    </div>
                  </div>
                  
                  <input type="hidden" id="signstate" value="${board.signstate}">
                  <input type="hidden" name="fno" id="fno" value="${board.fno}">
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-8"></div>
                      	<input type = "hidden" name="page" value="${cri.page}">
				    	<input type = "hidden" name="searchType" value="${cri.searchType}">
				    	<input type = "hidden" name="keyword" value="${cri.keyword}">
				    	
                      
                      <button type="submit" class="btn btn-primary btn-lg" style="margin-right:5px; margin-left: 180px;"><i class="icofont-ui-check"></i></button>
                  </div>
                  </div>
                </form>
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
  </section>

  <!-- container section start -->

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
	<!-- ck editor -->
	<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
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
      
	$(".signOk").on("click", function(){
		
		$("#signstate").val("2");
		
		
	});
	
	$(".signNo").on("click", function(){
		
		$("#signstate").val("1");
	});   
      
	$(document).ready(function(){
		
		if($("#fno").val() == 2){
		        	
		        	$("#titleForm").html('신청서');
	        } 
		});
    </script>

</body>

</html>
