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
            <h3 class="page-header"><Strong><i class="icofont-livejournal"></i>문서 결재</Strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">메인</a></li>
              <li><i class="icofont-livejournal"></i>문서 결재</li>
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
                    <h3 class="col-lg-4 col-md-4">결재 대기 문서</h3>
                    
                    
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
                
                
                

                </tbody>
              </table>

                  <div class="container mt-3">
              	<div class="row text-center">
              	<br>
              		<div class="btn-group" data-toggle="buttons">
<%-- 					<label class="btn btn-default <c:out value="${cri.searchType eq 'n' ? 'active' : '' }"/>"> --%>
<!--                                           <input type="radio" name="searchType" id="option1" value="n"  -->
<%--                                           <c:out value="${cri.searchType eq 'n' ? 'checked' : '' }"/>> 선택 --%>
<!--                                       </label> -->
                    <label class="btn btn-default">
                                          <input type="radio" name="searchType" id="option1" value="d" >부서명
                                      </label>
                    <label class="btn btn-default">
                                          <input type="radio" name="searchType" id="option2" value="t" >제목
                                      </label>
                    <label class="btn btn-default">
                                          <input type="radio" name="searchType" id="option2" value="n" >작성자
                                      </label>
                  </div>
              		
                  <div class="row">
                  	<br>
					
              			<input type="text" name="keyword" id="keywordInput" placeholder="Search">
              			
              			<button class="btn btn-default btn-lg" id="searchBtn"><i class="icofont-search-2"></i></button>
                  </div>
 						
              		</div>
              	</div>
              <div class="text-center">
                  <ul id="basic" class="pagination">
                  </ul>
                  <ul id="search" class="pagination"></ul>
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
      
//       var mno = ${login.mno};
      
//       $('#searchBtn').on("click", function(event){
    	  
//     	  self.location = "myWaitingList"
//     	  		+ "?mno="+ mno +"&page=1"
//     	  		+ "&searchType="
//     	  		+ $('input[name="searchType"]:checked').val()
//     	  		+ "&keyword=" + $("#keywordInput").val();
//       });
    </script>
    
    <script type="text/javascript">
    $(document).ready(function() {
		function getWaitList(page) {
			
			$.getJSON("/rsign/wait/" + page, function(data) {
				
				var str = "";
				
				$(data.list).each(function() {
					var timestamp1 = this.bwrite_date;
	    			var date1 = new Date(timestamp1);
	    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
					
	    			var formattedTime2 = "";
	    			
	    			if (this.bsign_date != null) {
		    			var timestamp2 = this.bsign_date;
		    			var date2 = new Date(timestamp2);
		    			formattedTime2 = date2.getFullYear() + "-" + ("0" + (date2.getMonth() + 1)).slice(-2) + "-" + ("0" + date2.getDate()).slice(-2);
	    				
	    			}
	    			
	    			if (this.signstate == 0) {
	    				this.signstate = "미결재";
	    			} else if (this.signstate == 1){
	    				this.signstate = "결재보류"
	    			} 
	    			
	    			if (this.bsigner == null) {
	    				this.bsigner = "";
	    			}
	    			
	    			str += "<tr class='text-center'><td>" + this.bno + "</td><td>"
	    				+ this.deptname + "</td><td><a href='/sign/reportRead?bno=" + this.bno + "'>"
	    				+ this.btitle + "</td><td>" + this.mname + "</td><td>" + formattedTime1 + "</td><td>"
	    				+ this.bsigner + "</td><td>" + formattedTime2 + "</td><td>" + this.signstate + "</td></tr>";
				});
				
				$("tbody").html(str);
				printPaging(data.pageMaker);
			});
		}
		getWaitList(1);
		
		function printPaging(pageMaker) {
			var str = "";
			
			if(pageMaker.prev) {
				str += "<li><a class='page-link' href='" + (pageMaker.startPage - 1) + "'> << </a></li>";
			}
			
			for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
				var active = pageMaker.cri.page == i ? 'active' : '';
				str += "<li class='" + active + "'><a href='" + i +"'>" + i + "</a></li>";
			}
			if(pageMaker.next) {
				str += "<li><a href='" + (pageMaker.endPage + 1) + "'> >> </a></li>";
			}
			$("#basic").html(str);
		}
		
		$("#basic").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			
			getWaitList(formPage);
		});
		
		function getWaitListSearch(page, searchType, keyword) {
			
			$.getJSON("/rsign/wait/" + page + "/" + searchType + "/" + keyword, function(data) {
				
				var str = "";
				temppage = data.pageMaker.cri.page;
				tempsearchType = searchType;
				tempkeyword = keyword;
				
				$(data.list).each(function() {
					var timestamp1 = this.bwrite_date;
	    			var date1 = new Date(timestamp1);
	    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
					
	    			var formattedTime2 = "";
	    			
	    			if (this.bsign_date != null) {
		    			var timestamp2 = this.bsign_date;
		    			var date2 = new Date(timestamp2);
		    			formattedTime2 = date2.getFullYear() + "-" + ("0" + (date2.getMonth() + 1)).slice(-2) + "-" + ("0" + date2.getDate()).slice(-2);
	    				
	    			}
	    			
	    			console.log(this.bsigner);
	    			if (this.signstate == 0) {
	    				this.signstate = "미결재";
	    			} else if (this.signstate == 1){
	    				this.signstate = "결재보류"
	    			}
	    			
	    			if (this.bsigner == null) {
	    				this.bsigner = "";
	    			}
	    			
	    			str += "<tr class='text-center'><td>" + this.bno + "</td><td>"
	    				+ this.deptname + "</td><td><a href='/sign/reportRead?bno=" + this.bno + "'>"
	    				+ this.btitle + "</td><td>" + this.mname + "</td><td>" + formattedTime1 + "</td><td>"
	    				+ this.bsigner + "</td><td>" + formattedTime2 + "</td><td>" + this.signstate + "</td></tr>";
				});
				
				$("tbody").html(str);
				printPagingSearch(data.pageMaker, searchType, keyword);
			});
		}
		
		function printPagingSearch(pageMaker, searchType, keyword) {
			var str = "";
			
			if(pageMaker.prev) {
				str += "<li><a class='page-link' href='" + (pageMaker.startPage - 1) + "'> << </a></li>";
			}
			
			for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
				var active = pageMaker.cri.page == i ? 'active' : '';
				str += "<li class='" + active + "'><a href='" + i +"'>" + i + "</a></li>";
			}
			if(pageMaker.next) {
				str += "<li><a href='" + (pageMaker.endPage + 1) + "'> >> </a></li>";
			}
			$("#search").html(str);
		}
		
		$("#search").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			keyword = $("#keywordInput").val();
			searchType = $("input[name='searchType']:checked").val();
			getWaitListSearch(formPage, searchType, keyword);
		});
		
		$("#searchBtn").on("click", function() {
			var keyword = $("#keywordInput").val();
			var searchType = $("input[name='searchType']:checked").val();
			
			 if(keyword == "" || searchType == "undefined") {
				 	getWaitList(1);
					$("#search").html("");
				 } else {
					console.log("====================");
					getWaitListSearch(1, searchType, keyword);
					console.log("====================");
					
					$("#basic").html("");
				 } 
		});
	});
    </script>

</body>

</html>












