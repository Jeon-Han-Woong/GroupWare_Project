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
            <h3 class="page-header"><Strong><i class="icofont-search-document"></i>문서열람</Strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">메인</a></li>
              <li><i class="icofont-page"></i>게시판</li>
              <li><i class="icofont-search-document"></i>문서열람</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-sm-6">
            
          </div>
          <div class="col-sm-6">
            <section class="panel">
        </div>
        </div>
        
        
        <div class="row">
          <div class="col-lg-12">
          	 <header class="panel-heading text-primary">
                  <div class="row">
                    <h3 class="col-lg-4 col-md-4">결재 완료 문서</h3>
                    
                    
                  </div>
              </header>
            	<!-- search start -->
            	
             		
<!--              		<div class="box-body"> -->
<!--              			<select name="searchType"> -->
<%--              				<option value="n" <c:out value="${cri.searchType == null ? 'selected' : ''}" />>-</option> --%>
<%--              				<option value="t" <c:out value="${cri.searchType eq 't' ? 'selected' : ''}" />>제목</option> --%>
<%--              				<option value="c" <c:out value="${cri.searchType eq 'c' ? 'selected' : ''}" />>내용</option> --%>
<%--              				<option value="w" <c:out value="${cri.searchType eq 'w' ? 'selected' : ''}" />>작성자</option> --%>
<%--              				<option value="tc" <c:out value="${cri.searchType eq 'tc' ? 'selected' : ''}" />>제목+내용</option> --%>
<%--              				<option value="cw" <c:out value="${cri.searchType eq 'cw' ? 'selected' : ''}" />>내용+작성자</option> --%>
<%--              				<option value="tcw" <c:out value="${cri.searchType eq 'tcw' ? 'selected' : ''}" />>제목+내용+작성자</option> --%>
<!--              			</select> -->
             			
<%--              			<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}"> --%>
<!--              			<button id="searchBtn">Search</button> -->
<!--              		</div> -->
             	
             	<!-- search end -->
            
          		
            
            <section class="panel">

              <table class="table table-striped table-advance table-hover">
                <thead>
                  <tr>
                    <th class="text-center">글번호</th>
                    <th class="text-center">부서명</th>
                    <th class="text-center">제목</th>
                    <th class="text-center">작성자</th>
                    <th class="text-center">작성일자</th>
                    <th class="text-center">결재자</th>
                    <th class="text-center">결재일자</th>
                    <th class="text-center">결재상태</th>
                  </tr>
                 
                </thead>
                <tbody>
                   <c:forEach items="${signStateListB}" var="list">
                  <tr>
                    <td class="text-center">${list.bno}</td>
                    <td class="text-center">${list.deptname}</td>
                    <td class="text-center"><a href="/sign/reportRead?bno=${list.bno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}">${list.btitle}</a></td>
                    <td class="text-center">${list.mname}</td>
                    <td class="text-center">${list.bwrite_date}</td>
                    <td class="text-center">${list.bsigner}</td>
                    <td class="text-center">${list.bsign_date}</td>
                    <td class="text-center">
                    <c:choose>
                    	<c:when test="${list.signstate == 2}">
							<Strong class="text-primary"><c:out value="결재완료" /></Strong>                   
                    	</c:when> 
                    	<c:when test="${list.signstate == 1}">
							<c:out value="결재보류" />                   
                    	</c:when>
                    	<c:when test="${list.signstate == 0}">
							<c:out value="미결재" />                   
                    	</c:when>
                    </c:choose>
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
                    <label class="btn btn-default <c:out value="${cri.searchType eq 'title' ? 'active' : '' }"/>">
                                          <input type="radio" name="searchType" id="option2" value="title" 
                                          <c:out value="${cri.searchType eq 'name' ? 'checked' : '' }"/>> 제목
                                      </label>
                    <label class="btn btn-default <c:out value="${cri.searchType eq 'content' ? 'active' : '' }"/>">
                                          <input type="radio" name="searchType" id="option3" value="content" 
                                          <c:out value="${cri.searchType eq 'dept' ? 'checked' : '' }"/>> 내용
                                      </label>
                    <label class="btn btn-default <c:out value="${cri.searchType eq 'writer' ? 'active' : '' }"/>">
                                          <input type="radio" name="searchType" id="option4" value="writer" 
                                          <c:out value="${cri.searchType eq 'position' ? 'checked' : '' }"/>> 작성자
                                      </label>
                  </div>
                  <div class="row">
                  	<br>

              			<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
              			
              			<button class="btn btn-default btn-lg" id="searchBtn"><i class="icofont-search-document"></i></button>
              			<!--  <input type="text" name="keyword" id="keywordInput" value="${cri.keyword}"> 
<!--              			<button id="searchBtn">Search</button> -->
                  </div>
 						
              		</div>
              	</div>
              </div>
              
              <div class="text-center">
            <ul class="pagination justify-content-center">
        <c:if test="${pageMaker.prev}">
          <li class="page-item disabled">
          	<a class="page-link" href="/sign/signSuccessList?page=${pageMaker.startPage -1}">
          		&laquo;
          	</a>
          </li>
        </c:if>
        <c:forEach begin="${pageMaker.startPage}"
        			end ="${pageMaker.endPage}"
        			var ="idx">
        	<li class="page-item
        		<c:out value="${pageMaker.cri.page == idx ? 'active' : ''}" />">
        			<a class="page-link" href="/sign/signSuccessList?page=${idx}&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx}</a></li>			
        </c:forEach>
          <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
          <li class="page-item">
          	<a class="page-link" href="/sign/signSuccessList?page=${pageMaker.endPage +1}">
          		&raquo;
          	</a>
          </li>
          </c:if>
        </ul>
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
      
      $('#searchBtn').on("click", function(event){
    	  
    	  self.location = "signSuccessList"
    	  		+ "?page=1"
    	  		+ "&searchType="
    	  		+ $("select option:selected").val()
    	  		+ "&keyword=" + $("#keywordInput").val();
      });
    </script>

</body>

</html>












