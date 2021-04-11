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

  <title>Creative - Bootstrap Admin Template</title>

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
            <h3 class="page-header"><i class="fa fa-file-text-o"></i>문서 상세 보기</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">Home</a></li>
              <li><i class="icon_document_alt"></i>내 문서 열람</li>
              <li><i class="fa fa-file-text-o"></i>문서 상세 보기</li>
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
                <form  class="form-horizontal" >
                <input type="hidden" name="bno" value="${board.bno }">
                <input type="hidden" name="searchType" value=${cri.searchType } />
				<input type="hidden" name="keyword" value=${cri.keyword } />					   
				<input type="hidden" name="page" value="${cri.page }">
                <br><br>
                  <!-- 추후 삭제 가능-->
                  <c:choose>
                        <c:when test="${board.signstate == 1 }">
                 <div class="row" style="height:130px">
                    
                    <div class="col-md-4 col-md-offset-4">
                    </div>
                      
                      <table style="border:1px solid; width:300px; "class="text-center ">
                        <thead>
                        <tr>
                    
                        <th style="border:1px solid; width:50%"  class="text-center"><h4>반려일자</h4></th>
                          <th style="border:1px solid; width:50%" class="text-center"><h4>반려결재자</h4></th><!-- 조건에 따른 hide 구현 예정 -->
                        </tr>
                        </thead>
                        <tbody>
                        <tr >
                          <td style="border:1px solid; height:100px">${board.bsign_date }</td>
                          <td style="border:1px solid; height:100px">${board.bsigner}</td>
                        </tr>
                        </tbody>
                      </table>
                      
                      

                    </div>
                    </c:when>
                    <c:when test="${board.signstate == 0 || board.signstate == 2}">
                 <div class="row" style="height:130px">
                    
                    <div class="col-md-4 col-md-offset-4">
                    </div>
                      
                      <table style="border:1px solid; width:300px; "class="text-center ">
                        <thead>
                        <tr>
                    
                        <th style="border:1px solid; width:50%"  class="text-center"><h4>결재일자</h4></th>
                          <th style="border:1px solid; width:50%" class="text-center"><h4>결재자</h4></th><!-- 조건에 따른 hide 구현 예정 -->
                        </tr>
                        </thead>
                        <tbody>
                        <tr >
                          <td style="border:1px solid; height:100px">${board.bsign_date }</td>
                          <td style="border:1px solid; height:100px">${board.bsigner}</td>
                        </tr>
                        </tbody>
                      </table>
                      
                      

                    </div>
                    </c:when>
                        </c:choose>
                    <br>
                    <br><br><br>
                    
               <div class="form-group">
                    <h1 class="text-center">${board.fname}</h1>
                    
            		<br><br><br>
               
               </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">제목</label>
                  
                    <div class="col-sm-11 ">
                      <input type="text" class="form-control" readonly="true"  value="${board.btitle}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">부서명</label>
                    <div class="col-sm-11 ">
                      <input type="text" class="form-control"  readonly="true" value="영업지원팀"><!-- deptno 작성예정 -->
                    </div>
                  </div>
<!--                   <div class="form-group"> -->
<!--                     <label class="col-sm-1 control-label"> 문서명</label> -->
<!--                     <div class="col-sm-11"> -->
<%--                       <input type="text" class="form-control" readonly="true" value="${board.fname}"> --%>
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="form-group"> -->
<!--                     <label class="col-sm-1 control-label">작성자</label> -->
<!--                     <div class="col-sm-11"> -->
<%--                       <input class="form-control" id="focusedInput" type="text" readonly="true" value="${reportRead.mname}"> --%>
<!--                     </div> -->
<!--                   </div> -->
                  <div class="form-group">
                    <label class="col-sm-1 control-label">작성일</label>
                    <div class="col-sm-11">
                      <input class="form-control" id="disabledInput" type="text" readonly="true" value="${board.bwrite_date}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">내용</label>
                    <div class="col-sm-11">
                      <textarea class="form-control" readonly="true" cols="30" rows="10">${board.bcontent}</textarea>
                    </div>
                  </div>
                  <input type="hidden" id="signstate" value="${board.signstate}">
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-8"></div>
                      <a class="btn btn-primary btn-lg col-md-1" style="margin-right:5px; margin-left: 70px;" href="/mymenu/mydocu?page=${cri.page }&searchType=${cri.searchType}&keyword=${cri.keyword}" title="Bootstrap 3 themes generator"><i class="icofont-list"></i></a>
                      <a class="btn btn-success btn-lg col-md-1 useboard" type="submit" style="margin-right:5px;" title="Bootstrap 3 themes generator" data-oper="modify"><i class="icofont-edit"></i></a>
                      <a class="btn btn-danger btn-lg col-md-1 useboard" type="submit" data-oper="remove" title="Bootstrap 3 themes generator"><i class="icofont-trash"></i></a>
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
	$('.useboard').on("click", function(e){
		e.preventDefault();
		
		var operation = $(this).data("oper");
		formObj.attr("method", "post");
		
		if(operation === "modify"){
			formObj.attr("action", "/mymenu/mydocumodify");
		} else if(operation ==="remove"){
			formObj.attr("action","/mymenu/remove");
			alert("삭제되었습니다.");
		}
		formObj.submit();
	});
}); // document
</script>
</body>

</html>
