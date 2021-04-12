<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<head>
<style type="text/css"> .no-drag {-ms-user-select: none; -moz-user-select: -moz-none; -webkit-user-select: none; -khtml-user-select: none; user-select:none;} </style>
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
            <h3 class="page-header"><strong><i class="icofont-file-alt"></i>게시글 관리</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icofont-robot-face"></i><a href="/manage/">관리자 메뉴</a></li>
              <li><i class="icofont-folder-open"></i><a href="/manage/docu">문서 관리</a></li>
              <li><i class="icofont-file-alt"></i>게시글 관리</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        
        
        <div class="row">
          <div class="col-lg-12">
            
              
              <header class="panel-heading text-primary">
                <div class="row">
                  <h3 class="col-lg-2 col-md-2 col-sm-2">게시글 관리</h3>
                  
                  <div class="container">
                      <button class="btn btn-danger pull-right" id="boarddelbtn" type="button"><i class="icofont-ui-delete"></i></button>
                  </div>
                </div>
              </header>
              <section class="panel">
              <table style="text-align: text-center;" class="table table-striped table-advance table-hover text-center">
                <thead>
                  <tr>
                    <th class="text-center"><input type="checkbox" id="allboardchk"></th>
                    <th class="text-center" style="width: 10%">문서번호</th>
                    <th class="text-center" style="width: 13%">분류</th>
                    <th class="text-center" style="width: 27%">제목</th>
                    <th class="text-center" style="width: 10%">작성자</th>
                    <th class="text-center" style="width: 15%">작성일</th>
                    <th class="text-center" style="width: 10%">결재자</th>
                    <th class="text-center" style="width: 15%">결재일</th>
<!--                     <th class="text-center" style="width: 10%">관리</th> -->
                  </tr>
                </thead>
                <tbody id="boardbody">
                  
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
                                          <input type="radio" name="searchTypeB" id="option1" value="f" > 분류
                                      </label>
                    <label class="btn btn-default">
                                          <input type="radio" name="searchTypeB" id="option2" value="t" > 제목
                                      </label>
                    <label class="btn btn-default">
                                          <input type="radio" name="searchTypeB" id="option3" value="n" > 작성자
                                      </label>
                  </div>
              		
                  <div class="row">
                  	<br>
					
              			<input type="text" name="keyword" id="keywordInputB" placeholder="Search">
              			
              			<button class="btn btn-default btn-lg" id="BsearchBtn"><i class="icofont-search-document"></i></button>
                  </div>
 						
              		</div>
              	</div>
              <div class="text-center">
                  <ul id="boardbasic" class="pagination">
                  </ul>
                  <ul id="boardsearch" class="pagination"></ul>
                </div>
            </section>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            
              
              <header class="panel-heading text-primary">
                <div class="row">
                  <h3 class="col-lg-2 col-md-2 col-sm-2">공지사항 관리</h3>
                  
                  <div class="container">
                      <button class="btn btn-danger pull-right" type="button" id="noticedelbtn"><i class="icofont-ui-delete"></i></button>
                  </div>
                </div>
              </header>
              <section class="panel">
              <table style="text-align: text-center;" class="table table-striped table-advance table-hover text-center">
                <thead>
                  <tr>
                    <th class="text-center"><input type="checkbox" id="allnoticechk"></th>
                    <th class="text-center" style="width: 15%">문서번호</th>
                    <th class="text-center" style="width: 15%">분류</th>
                    <th class="text-center" style="width: 30%">제목</th>
                    <th class="text-center" style="width: 15%">작성자</th>
                    <th class="text-center" style="width: 20%">작성일</th>
<!--                     <th class="text-center" style="width: 10%">관리</th> -->
                  </tr>
                </thead>
                <tbody id="noticebody">
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
                                          <input type="radio" name="searchTypeN" id="option1" value="f" > 분류
                                      </label>
                    <label class="btn btn-default">
                                          <input type="radio" name="searchTypeN" id="option2" value="t" > 제목
                                      </label>
                    <label class="btn btn-default">
                                          <input type="radio" name="searchTypeN" id="option3" value="n" > 작성자
                                      </label>
                  </div>
              		
                  <div class="row">
                  	<br>
					
              			<input type="text" name="keyword" id="keywordInputN" placeholder="Search">
              			
              			<button class="btn btn-default btn-lg" id="NsearchBtn"><i class="icofont-search-document"></i></button>
                  </div>
 						
              		</div>
              	</div>
              <div class="text-center">
                  <ul id="noticebasic" class="pagination">
                  </ul>
                  <ul id="noticesearch" class="pagination"></ul>
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
    	var temppage1 = "";
    	var tempsearchType1 = "";
    	var tempkeyword1 = "";
    	var temppage2 = "";
    	var tempsearchType2 = "";
    	var tempkeyword2 = "";
    	function getBoardList(page){
		    $.getJSON("/docu/board/" + page, function(data) {
			    var str = "";
			    
			    temppage1 = page;
		    	$(data.list).each(
		    		function() {
		    			var timestamp1 = this.bwrite_date;
		    			var date1 = new Date(timestamp1);
		    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
		    			
		    			var formattedTime2 = "";
		    			
		    			if (this.bsign_date != null) {
			    			var timestamp2 = this.bsign_date;
			    			var date2 = new Date(timestamp2);
			    			formattedTime2 = date2.getFullYear() + "-" + ("0" + (date2.getMonth() + 1)).slice(-2) + "-" + ("0" + date2.getDate()).slice(-2);
		    			}

		    			if (this.bsigner == null) {
		    				this.bsigner = "미결재";
		    			}
		    			
		    			str += "<tr data-bno='" + this.bno + "' class='text-center mybno' data-btitle='" + this.btitle + "' data-page='" + page + "'>"
		    				+ "<td><input type='checkbox' name='boardchkbox' value='" + this.bno + "'></td>"
		    				+ "<td>" + this.bno + "</td><td class='fname'>" + this.fname + "</td><td><a href='/sign/reportRead?bno=" + this.bno + "'>" + this.btitle + "</a></td><td>" + this.mname + "</td><td>"
		    				+ formattedTime1 + "</td><td>" + this.bsigner + "</td><td>" + formattedTime2 + "</td>"
		    				+ "</tr>";
		    		});
		    	$("#boardbody").html(str);
		    	printPagingBoard(data.pageMaker);
		    });
		} // getFormList
		getBoardList(1);
		
		function printPagingBoard(pageMaker) {
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
			
			$('#boardbasic').html(str);
		}
		
		$("#boardbasic").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			
			getBoardList(formPage);
		});
		
		function getBoardListSearch(page, searchType, keyword){
		    $.getJSON("/docu/board/" + page + "/" + searchType + "/" + keyword, function(data) {
			    var str = "";
			    temppage1 = data.pageMaker.cri.page;
			    console.log(temppage1);
			    tempsearchType1 = searchType;
			    console.log(tempsearchType1);
			    tempkeyword1 = keyword;
			    console.log(keyword);
		    	$(data.list).each(
		    		function() {
		    			var timestamp1 = this.bwrite_date;
		    			var date1 = new Date(timestamp1);
		    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
		    			
		    			var formattedTime2 = "";
		    			
		    			if (this.bsign_date != null) {
			    			var timestamp2 = this.bsign_date;
			    			var date2 = new Date(timestamp2);
			    			formattedTime2 = date2.getFullYear() + "-" + ("0" + (date2.getMonth() + 1)).slice(-2) + "-" + ("0" + date2.getDate()).slice(-2);
		    			}

		    			if (this.bsigner == null) {
		    				this.bsigner = "미결재";
		    			}
		    			
		    			str += "<tr data-bno='" + this.bno + "' class='text-center mybno' data-btitle='" + this.btitle + "' data-page='" + page + "' data-searchType='" + page + "' data-keyword='" + keyword + "'>"
		    				+ "<td><input type='checkbox' name='boardchkbox' value='" + this.bno + "'></td>"
		    				+ "<td>" + this.bno + "</td><td class='fname'>" + this.fname + "</td><td><a href='/sign/reportRead?bno=" + this.bno + "'>" + this.btitle + "</a></td><td>" + this.mname + "</td><td>"
		    				+ formattedTime1 + "</td><td>" + this.bsigner + "</td><td>" + formattedTime2 + "</td>"
		    				+ "</tr>";
		    		});
		    	$("#boardbody").html(str);
		    	printPagingBoardSearch(data.pageMaker, searchType, keyword);
		    });
		} // getFormList
		
		function printPagingBoardSearch(pageMaker, searchType, keyword) {
			var str = "";
			
			if(pageMaker.prev) {
				str += "<li><a class='page-link' href='" + (pageMaker.startPage - 1) + "'> << </a></li>";
			}
			
			for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
				var active = pageMaker.cri.page == i ? 'active' : '';
				str += "<li class='" + active + "'><a href='" + i + "'>" + i + "</a></li>";
			}
			if(pageMaker.next) {
				str += "<li><a href='" + (pageMaker.endPage + 1) + "'> >> </a></li>";
			}
			
			$('#boardsearch').html(str);
		}
		
		$("#boardsearch").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			var keyword = $("#keywordInputB").val();
			getBoardListSearch(formPage, searchType ,keyword);
		});
		
		$("#BsearchBtn").on("click", function() {
			keyword = $("#keywordInputB").val();
			searchType = $('input[name="searchTypeB"]:checked').val();
			
		    
		    if(keyword == "" || searchType == "undefined") {
		    	getBoardList(1);
				$("#boardsearch").html("");
		    } else {
			    getBoardListSearch(1, searchType, keyword);
			    $("#boardbasic").html("");
		    }
		    
		});
		
		
		function getNoticeList(page){
		    $.getJSON("/docu/notice/" + page, function(data) {
			    var str = "";
			    
			    temppage2 = page;
		    	$(data.list).each(
		    		function() {
		    			var timestamp1 = this.nwrite_date;
		    			var date1 = new Date(timestamp1);
		    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
		    			
		    			str += "<tr data-nno='" + this.nno + "' class='text-center mynno' data-ntitle='" + this.ntitle + "'>"
		    				+ "<td><input type='checkbox' name='noticechkbox' value='" + this.nno + "'></td>"
		    				+ "<td>" + this.nno + "</td><td class='fname'>" + this.fname + "</td><td><a href='/board/noticeRead?nno=" + this.nno + "'>" + this.ntitle + "</a></td><td>" + this.mname + "</td><td>"
		    				+ formattedTime1 + "</td><td>"
		    				+ "</tr>";
		    		});
		    	$("#noticebody").html(str);
		    	printPagingNotice(data.pageMaker);
		    });
		} // getFormList
		getNoticeList(1);
		
		function printPagingNotice(pageMaker) {
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
			
			$('#noticebasic').html(str);
		}
		
		$("#noticebasic").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			
			getNoticeList(formPage);
		});
		
		function getNoticeListSearch(page, searchType, keyword){
		    $.getJSON("/docu/notice/" + page + "/" + searchType + "/" + keyword, function(data) {
			    var str = "";
			    temppage2 = data.pageMaker.cri.page;
			    tempsearchType2 = searchType;
			    tempkeyword2 = keyword;
		    	$(data.list).each(
		    		function() {
		    			var timestamp1 = this.nwrite_date;
		    			var date1 = new Date(timestamp1);
		    			var formattedTime1 = date1.getFullYear() + "-" + ("0" + (date1.getMonth() + 1)).slice(-2) + "-" + ("0" + date1.getDate()).slice(-2);
		    			
		    			str += "<tr data-nno='" + this.nno + "' class='text-center mynno' data-ntitle='" + this.ntitle + "'>"
		    				+ "<td><input type='checkbox' name='noticechkbox' value='" + this.nno + "'></td>"
		    				+ "<td>" + this.nno + "</td><td class='fname'>" + this.fname + "</td><td><a href='/board/noticeRead?nno=" + this.nno + "'>" + this.ntitle + "</a></td><td>" + this.mname + "</td><td>"
		    				+ formattedTime1 + "</td><td>"
		    				+ "</tr>";
		    		});
		    	$("#noticebody").html(str);
		    	printPagingNoticeSearch(data.pageMaker, searchType, keyword);
		    });
		} // getFormList
		
		function printPagingNoticeSearch(pageMaker, searchType, keyword) {
			var str = "";
			
			if(pageMaker.prev) {
				str += "<li><a class='page-link' href='" + (pageMaker.startPage - 1) + "'> << </a></li>";
			}
			
			for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
				var active = pageMaker.cri.page == i ? 'active' : '';
				str += "<li class='" + active + "'><a href='" + i + "'>" + i + "</a></li>";
			}
			if(pageMaker.next) {
				str += "<li><a href='" + (pageMaker.endPage + 1) + "'> >> </a></li>";
			}
			
			$('#noticesearch').html(str);
		}
		
		$("#noticesearch").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			var keyword = $("#keywordInputN").val();
			getNoticeListSearch(formPage, searchType ,keyword);
		});
		
		$("#NsearchBtn").on("click", function() {
			keyword = $("#keywordInputN").val();
			searchType = $('input[name="searchTypeN"]:checked').val();
			
		    
			 if(keyword == "" || searchType == "undefined") {
			    getNoticeList(1);
				$("#noticesearch").html("");
			 } else {
				getNoticeListSearch(1, searchType, keyword);
				$("#noticebasic").html("");
			 } 
			  
			    
		});
	
		
		$("#boarddelbtn").on("click", function(e) {
			
			var result = confirm("정말 삭제하시겠습니까?");
			
			if(result) {
				var boardnum = [];
				$("input[name='boardchkbox']:checked").each(function(){
					var temp = $(this).val();
					boardnum.push(temp);
				});
				
				if (boardnum.length == 0) {
					alert("삭제할 게시물을 선택해주세요.");
				}
				
				
				
				$.each(boardnum, function(index, value) {
					$.ajax({
						type : 'delete',
						url : '/docu/boarddel/' + value,
						header : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "DELETE"
						},
						dataType : 'text',
						success : function(result) {
							console.log("result : " + result);
							if(result == 'SUCCESS' && value === boardnum[boardnum.length-1]) {
								alert("선택된 게시글이 삭제 되었습니다.")
								if (temppage1 == "" || tempsearchType1 == "" || tempkeyword1 == ""){
									getBoardList(temppage1)
								} else {
									getBoardListSearch(temppage1, tempsearchType1, tempkeyword1);
								}
							}
						}
					})
				})
			} else {
				e.preventDefault();
			}
			
			
		})
		
		$("#noticedelbtn").on("click", function(e) {
			
			var result = confirm("정말 삭제하시겠습니까?");
			
			if(result) {
				var noticenum = [];
				$("input[name='noticechkbox']:checked").each(function(){
					var temp = $(this).val();
					noticenum.push(temp);
				});
				
				if (noticenum.length == 0) {
					alert("삭제할 공지사항을 선택해주세요.");
				}
				
				$.each(noticenum, function(index, value) {
					$.ajax({
						type : 'delete',
						url : '/docu/noticedel/' + value,
						header : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "DELETE"
						},
						dataType : 'text',
						success : function(result) {
							console.log("result : " + result);
							if(result == 'SUCCESS' && value === noticenum[noticenum.length-1]) {
								alert("선택된 공지사항이 삭제 되었습니다.")
								if (temppage2 == "" || tempsearchType2 == "" || tempkeyword2 == ""){
									getNoticeList(temppage2)
								} else {
									getNoticeListSearch(temppage2, tempsearchType2, tempkeyword2);
								}
							}
						}
					})
				})
				
			} else {
				e.preventDefault();
			}
			
			
		})
		
		$("#allboardchk").on("click", function(){
			if (this.checked) {
				$("input[name='boardchkbox']").attr("checked",true);
			} else {
				$("input[name='boardchkbox']").attr("checked",false);
			}
		})
		
		$("#allnoticechk").on("click", function(){
			if (this.checked) {
				$("input[name='noticechkbox']").attr("checked",true);
			} else {
				$("input[name='noticechkbox']").attr("checked",false);
			}
		})

	});
    
    </script>
</body>

</html>
