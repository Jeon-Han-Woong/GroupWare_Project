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
  
  <style type="text/css">
  #middlebtn {
  	vertical-align: middle;
  }
  </style>
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
            <h3 class="page-header"><strong><i class="icofont-search-user"></i>사원 관리</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icofont-robot-face"></i><a href="/manage/">관리자 메뉴</a></li>
              <li><i class="icofont-users-social"></i><a href="/manage/personnel">인사 관리</a></li>
              <li><i class="icofont-search-user"></i>사원 관리</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            
              
              <header class="panel-heading text-primary">
                  <div class="row">
                    <h3 class="col-lg-4 col-md-4">사원 관리</h3>
                    
                    <div class="container">
                      <a href="/manage/personreg" class="btn btn-primary pull-right"><i class="icofont-plus-square"></i></a>
                    </div>
                  </div>
              </header>
              <section class="panel">
              <table class="mb-3 table table-bordered table-striped table-advance table-hover text-center">
                <thead>
                  <tr>
                    <th class="text-center">사번</th>
                    <th class="text-center">이름</th>
                    <th class="text-center">연락처</th>
                    <th class="text-center">이메일</th>
                    <th class="text-center">부서</th>
                    <th class="text-center">직급</th>
                    <th class="text-center">생년월일</th>
                    <th class="text-center">휴가여부</th>
                    <th class="text-center">휴가일수</th>
                    <th class="text-center">비고</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="mem" items="${list}">
	                  <tr>
	                  	<td>${mem.mno}</td>
	                  	<td><a href="/manage/perdetail?mno=${mem.mno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}">${mem.mname}</a></td>
	                  	<td>${mem.mpnum}</td>
	                  	<td>${mem.memail}</td>
	                  	<td>${mem.deptname}</td>
	                  	<td>${mem.position}</td>
	                  	<td>${mem.mbirth}</td>
	                  	<td>
	                  		<c:choose>
	                  			<c:when test="${mem.vacachk eq 1}">
	                  				<c:out value="O"/>
	                  			</c:when>
	                  			<c:when test="${mem.vacachk eq 2}">
	                  				<c:out value="X"/>
	                  			</c:when>
	                  		</c:choose>
	                  	</td>
	                  	<td>${mem.vacarem}</td>
	                  	<td>
	                      <div id="managebtn" class="btn-group">
	                        <a class="btn btn-success managebtn" type="submit" href="/manage/permodifyget?mno=${mem.mno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}"><i class="icofont-edit"></i></a>
	                        <a class="btn btn-danger managebtn delbtn" type="submit" href="/manage/perremoveget?mno=${mem.mno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}"><i class="icofont-ui-delete"></i></a>
	                      </div>
	                    </td>
	                  </tr>
                  </c:forEach>
                </tbody>
              </table>
              <div class="container mt-3">
              	<div class="row text-center">
              	<br>
              		<div class="box-body">
<!--               			<select name="searchType"> -->
<%--               				<option value="n" <c:out value="${cri.searchType == null ? 'selected' : '' }"/>> --%>
<!--               				검색 조건 선택 -->
<!--               				</option> -->
<!--               				<option value="name" -->
<%--               				<c:out value="${cri.searchType eq 'name' ? 'selected' : '' }"/>> --%>
<!--               				이름 -->
<!--               				</option> -->
<!--               				<option value="dept" -->
<%--               				<c:out value="${cri.searchType eq 'dept' ? 'selected' : '' }"/>> --%>
<!--               				부서 -->
<!--               				</option> -->
<!--               				<option value="position" -->
<%--               				<c:out value="${cri.searchType eq 'position' ? 'selected' : '' }"/>> --%>
<!--               				직급 -->
<!--               				</option> -->
<!--               			</select> -->
				<div class="btn-group" data-toggle="buttons">
<%-- 					<label class="btn btn-default <c:out value="${cri.searchType eq 'n' ? 'active' : '' }"/>"> --%>
<!--                                           <input type="radio" name="searchType" id="option1" value="n"  -->
<%--                                           <c:out value="${cri.searchType eq 'n' ? 'checked' : '' }"/>> 선택 --%>
<!--                                       </label> -->
                    <label class="btn btn-default <c:out value="${cri.searchType eq 'name' ? 'active' : '' }"/>">
                                          <input type="radio" name="searchType" id="option2" value="name" 
                                          <c:out value="${cri.searchType eq 'name' ? 'checked' : '' }"/>> 이름
                                      </label>
                    <label class="btn btn-default <c:out value="${cri.searchType eq 'dept' ? 'active' : '' }"/>">
                                          <input type="radio" name="searchType" id="option3" value="dept" 
                                          <c:out value="${cri.searchType eq 'dept' ? 'checked' : '' }"/>> 부서
                                      </label>
                    <label class="btn btn-default <c:out value="${cri.searchType eq 'position' ? 'active' : '' }"/>">
                                          <input type="radio" name="searchType" id="option4" value="position" 
                                          <c:out value="${cri.searchType eq 'position' ? 'checked' : '' }"/>> 직급
                                      </label>
                  </div>
                  <div class="row">
                  	<br>

              			<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}" placeholder="Search">
              			
              			<button class="btn btn-default btn-lg" id="searchBtn"><i class="icofont-search-user"></i></button>
                  </div>
 						
              		</div>
              	</div>
              </div>
              <div class="text-center">
                  <ul class="pagination">
                    <c:if test="${pageMaker.prev}">
                    	<li><a href="/manage/permanage?page=${pageMaker.startPage - 1}&searchType=${cri.searchType}&keyword=${cri.keyword}">«</a></li>
                    </c:if>
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
                    	<li class="<c:out value="${pageMaker.cri.page == index ? 'active' : '' }" />" >
                    		<a href="/manage/permanage?page=${index}&searchType=${cri.searchType}&keyword=${cri.keyword}">${index}</a></li>
                    </c:forEach>
                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    	<li><a href="/manage/permanage?page=${pageMaker.endPage + 1}&searchType=${cri.searchType}&keyword=${cri.keyword}">»</a></li>
                    </c:if>
                  </ul>
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
// 		var formObj = $("form");
		
// 		$(".managebtn").on("click", function(e) {
// 			e.preventDefault();
			
// 			if ($(this).data("oper") === "remove"){
// 				formObj.attr("action", "perremove")
// 			} else {
// 				formObj.attr("action", "permodify")
// 			}
// 			formObj.submit();
// 		});
		
		$('#searchBtn').on("click", function(event) {
			var keyword = $("#keywordInput").val();
			if (keyword === null) {
				keyword = "";
			} 
			self.location = "permanage"
							+ "?page=1"
							+ "&searchType="
							+ $('input[name="searchType"]:checked').val()
							+ "&keyword=" + keyword;
		})
// 		$('input[name="searchType"]:checked').val()
// 		window.addEventListener("wheel", function() {passive: false} );
		
		
		
		$(".delbtn").on("click", function(e) {
			var result = confirm("정말 삭제하시겠습니까?");
			
			if(result) {
				
			} else {
				e.preventDefault();
			}
			
		})


	});
    
    </script>

</body>

</html>
