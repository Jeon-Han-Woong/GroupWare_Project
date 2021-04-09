<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            <h3 class="page-header"><strong><i class="icofont-tasks"></i>양식 관리</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icofont-robot-face"></i><a href="/manage/">관리자 메뉴</a></li>
              <li><i class="icofont-folder-open"></i><a href="/manage/docu">문서 관리</a></li>
              <li><i class="icofont-tasks"></i>양식 관리</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            
              
              <header class="panel-heading text-primary">
                  <div class="row">
                    <h3 class="col-lg-4 col-md-4">양식 관리</h3>
                    
                    <div class="container">
                      <button id="formregbtn" class="btn btn-primary pull-right"><i class="icofont-plus-square"></i></button>
                    </div>
                  </div>
              </header>
              <section class="panel">
              <table class="table table-striped table-advance table-hover text-center">
                <thead>
                  <tr>
                    <th class="text-center" style="width: 5%">번호</th>
                    <th class="text-center" style="width: 15%">양식명</th>
                    <th class="text-center" style="width: 40%">양식설명</th>
                    <th class="text-center" style="width: 15%">등록일</th>
                    <th class="text-center" style="width: 15%">관리</th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
               <div class="container mt-3">
              	<div class="row text-center">
              	<br>
              		
                  <div class="row">
                  	<br>
					
              			<input type="text" name="keyword" id="keywordInput" placeholder="Search" >
              			
              			<button class="btn btn-default btn-lg" id="searchBtn"><i class="icofont-search-document"></i></button>
                  </div>
 						
              		</div>
              	</div>
              <div class="text-center">
                  <ul id="basic" class="pagination">
<%--                     <c:if test="${pageMaker.prev}"> --%>
<%--                     	<li><a href="/manage/formmanage?page=${pageMaker.startPage - 1}&keyword=${cri.keyword}">«</a></li> --%>
<%--                     </c:if> --%>
<%--                     <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index"> --%>
<%--                     	<li class="<c:out value="${pageMaker.cri.page == index ? 'active' : '' }" />" > --%>
<%--                     		<a href="/manage/formmanage?page=${index}&keyword=${cri.keyword}">${index}</a></li> --%>
<%--                     </c:forEach> --%>
<%--                     <c:if test="${pageMaker.next && pageMaker.endPage > 0}"> --%>
<%--                     	<li><a href="/manage/formmanage?page=${pageMaker.endPage + 1}&keyword=${cri.keyword}">»</a></li> --%>
<%--                     </c:if> --%>
                  </ul>
                  <ul id="search" class="pagination"></ul>
                </div>
              </section>
		          </div>
		        </div>
			    </section>
            </section>
        
        
        
        <div class="modal fade" id="formreg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">새로운 양식 등록</h4>
                      </div>
                      <div class="modal-body">
						<div class="container">
                      <div class="form-group ">
                        <label for="fname" class="control-label col-md-2 col-lg-2">양식명</label>
                        <div class="col-md-10 col-lg-10">
                          <input class="form-control" id="fnamereg" name="fname" type="text" required />
                        </div>
                      
                      </div>
                      <br><br>
                      <div class="form-group ">
                        <label for="finfo" class="control-label col-md-2 col-lg-2">양식설명</label>
                        <div class="col-md-10 col-lg-10">
                          <input class="form-control" id="finforeg" name="finfo" type="text" required />
                        </div>
						</div>
                      </div>
                    

                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-primary btn-lg" id="newformreg"><i class="icofont-checked"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="formmod" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">양식 수정하기</h4>
                      </div>
                      <div class="modal-body">
						<div class="container">
						<input type="hidden" id="fnomod" name="fno">
                      <div class="form-group ">
                        <label for="fname" class="control-label col-md-2 col-lg-2">양식명</label>
                        <div class="col-md-10 col-lg-10">
                          <input class="form-control" id="fnamemod" name="fname" type="text" required />
                        </div>
                      
                      </div>
                      <br><br>
                      <div class="form-group ">
                        <label for="finfo" class="control-label col-md-2 col-lg-2">양식설명</label>
                        <div class="col-md-10 col-lg-10">
                          <input class="form-control" id="finfomod" name="finfo" type="text" required />
                        </div>
						</div>
                      </div>
                    

                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-success btn-lg" id="modformbtn"><i class="icofont-save"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="formdel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">양식 삭제하기</h4>
                      </div>
                      <div class="modal-body">
						<input type="hidden" id="fnodel" name="fno">
						<h2 class="text-center text-danger"><strong>양식을 삭제하시겠습니까?</strong></h2> <br>
                      <div class="modal-footer">
                        <button class="btn btn-danger btn-lg" id="delformbtn"><i class="icofont-eraser"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
               </div>
        <!-- page end-->
      

 
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
    	var temppage = "";
    	var tempkeyword = "";
    	function getFormList(page){
		    $.getJSON("/form/all/" + page, function(data) {
			    var str = "";
			    
		    	$(data.list).each(
		    		function() {
// 		    			console.log(this);
		    			var timestamp = this.regdate;
		    			var date = new Date(timestamp);
		    			
		    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
		    			
		    			str += "<tr data-fno='" + this.fno + "' class='text-center myfno' data-fname='" + this.fname + "' data-finfo='" + this.finfo + "' data-page='" + page + "'>"
		    				+ "<td>" + this.fno + "</td><td class='myfname'>" + this.fname + "</td><td>" + this.finfo
		    				+ "</td><td>" + formattedTime + "</td><td>"
		    				+ "<div class='btn-group'><button class='btn btn-success' id='formmodbtn'><i class='icofont-edit'></i></button>"
		    				+ "<button class='btn btn-danger' id='formdelbtn'><i class='icofont-ui-delete'></i></a></div></tr>";
		    		});
		    	$("tbody").html(str);
		    	
		    	printPaging(data.pageMaker);
		    });
		} // getFormList
		getFormList(1);
		
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
			
			$('#basic').html(str);
		}
		
		$("#basic").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			
			getFormList(formPage);
		});
		
		function getFormListSearch(page, keyword){
		    $.getJSON("/form/all/" + page + "/" + keyword, function(data) {
			    var str = "";
			    var search = "";
			    var keyword = $("#keywordInput").val();
			    console.log(data);
			    console.log(data.list);
			    console.log(data.pageMaker);
			    
			    
		    	$(data.list).each(
		    		function() {
// 		    			console.log(this);
		    			var timestamp = this.regdate;
		    			var date = new Date(timestamp);
// 		    			console.log(this.parent.pageMaker.cri.page);
		    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
		    			
		    			str += "<tr data-fno='" + this.fno + "' class='text-center myfno' data-fname='" + this.fname + "' data-finfo='" + this.finfo + "' data-page='" + page + "' data-keyword='" + keyword + "'>"
		    				+ "<td>" + this.fno + "</td><td class='myfname'>" + this.fname + "</td><td>" + this.finfo
		    				+ "</td><td>" + formattedTime + "</td><td>"
		    				+ "<div class='btn-group'><button class='btn btn-success' data-page='" + page + "' data-keyword='" + keyword + "' id='formmodbtn'><i class='icofont-edit'></i></button>"
		    				+ "<button class='btn btn-danger' id='formdelbtn'><i class='icofont-ui-delete'></i></a></div></tr>";
		    		});
		    	$("tbody").html(str);
		    	
		    	printPagingSearch(data.pageMaker, search);
		    });
		    
		} // getFormList
		
		function printPagingSearch(pageMaker, search) {
			var str = "";
			
			
			if(pageMaker.prev) {
				str += "<li><a class='page-link' href='" + (pageMaker.startPage - 1) + "'>«</a></li>";
			}
			
			for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
				var active = pageMaker.cri.page == i ? 'active' : '';
				str += "<li class='" + active + "'><a href='" + i + "'>" + i + "</a></li>";
			}
			if(pageMaker.next) {
				str += "<li><a href='" + (pageMaker.endPage + 1) + "'>»</a></li>";
			}
			
			$('#search').html(str);
		}
			
		$("#search").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			var keyword = $("#keywordInput").val();
			getFormListSearch(formPage, keyword);
		});
		
		$("#searchBtn").on("click", function() {
			var keyword = $("#keywordInput").val();
			
			getFormListSearch(1, keyword);
			$("#basic").html("");
		});
		
// 		$('#searchBtn').on("click", function(event) {
// 			var keyword = $("#keywordInput").val();
// 			if (keyword === null) {
// 				keyword = "";
// 			} 
// 			self.location = "formmanage"
// 							+ "?page=1"
// 							+ "&keyword=" + keyword;

// 		})
		
		$("#newformreg").on("click", function() {
			var fname = $("#fnamereg").val();
			var finfo = $("#finforeg").val();
			
			$.ajax({
				type : 'post',
				url : '/form',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					fname : fname,
					finfo : finfo
				}),
				success : function(result) {
					if(result == 'SUCCESS'){
						alert("새로운 양식이 등록 되었습니다.");
						$("#fnamereg").val("");
						$("#finforeg").val("");
						$("body").attr("class", "");
						$("#backdrop").remove();
					    $("#formreg").attr("class", "modal fade");
					    $("#formreg").attr("aria-modal", "false");
					    $("#formreg").attr("aria-hidden", "true");
					    $("#formreg").modal("hide");
					    getFormList(1);
					}
				}
			});
		});// Register Form
		
		$("tbody").on("click", ".myfno td button", function(){
			var a = $(this).parent().parent();
			var btnmode = $(this).attr("id");
			
			var fno = a.parent().data("fno");
			var fname = a.parent().data("fname");
			var finfo = a.parent().data("finfo");
			temppage = a.parent().data("page");
			tempkeyword = a.parent().data("keyword");
			
			if (btnmode === "formmodbtn"){
				console.log(temppage);
				console.log(tempkeyword);
				$("#fnomod").val(fno);
				$("#fnamemod").val(fname);
				$("#finfomod").val(finfo);
				
				$("body").attr("class", "modal-open");
			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
			    $("#formmod").attr("class", "modal fade show");
			    $("#formmod").attr("aria-modal", "true");
			    $("#formmod").attr("aria-hidden", "false");
			    $('#formmod').modal({backdrop: 'static'});
			    $("#formmod").modal("show");
			} else if (btnmode === "formdelbtn"){
				$("#fnodel").val(fno);
				
				$("body").attr("class", "modal-open");
			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
			    $("#formdel").attr("class", "modal fade show");
			    $("#formdel").attr("aria-modal", "true");
			    $("#formdel").attr("aria-hidden", "false");
			    $('#formdel').modal({backdrop: 'static'});
			    $("#formdel").modal("show");
			}
			
		}); // event delegation
		
		$("#modformbtn").on("click", function(){
			var fno = $("#fnomod").val();
			var fname = $("#fnamemod").val();
			var finfo = $("#finfomod").val();
			
			$.ajax({
				type : 'patch',
				url : '/form/' + fno,
				header : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PATCH"
				},
				contentType : "application/json",
				data : JSON.stringify({
					fno : fno,
					fname : fname,
					finfo : finfo
				}),
				dataType : 'text',
				success : function(result) {
					if(result == 'SUCCESS') {
						alert("양식이 수정 되었습니다.")
						$("body").attr("class", "");
						$("#backdrop").remove();
					    $("#formmod").attr("class", "modal fade");
					    $("#formmod").attr("aria-modal", "false");
					    $("#formmod").attr("aria-hidden", "true");
					    $("#formmod").modal("hide");
					    if(tempkeyword == null) {
					    	getFormList(temppage);
					    } else {
						    getFormListSearch(temppage, tempkeyword);
					    }
					}
				}
			})
		});// Form Modify
		
		$("#delformbtn").on("click", function() {
			var fno = $("#fnodel").val();
			
			$.ajax({
				type : 'patch',
				url : '/form/state/' + fno,
				header : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PATCH"
				},
				contentType : "application/json",
				data : JSON.stringify({
					fno : fno
				}),
				dataType : 'text',
				success : function(result) {
					if(result == 'SUCCESS') {
						alert("양식이 삭제 되었습니다.");
						$("body").attr("class", "");
						$("#backdrop").remove();
					    $("#formdel").attr("class", "modal fade");
					    $("#formdel").attr("aria-modal", "false");
					    $("#formdel").attr("aria-hidden", "true");
					    $("#formdel").modal("hide");
					    if(tempkeyword == null) {
					    	getFormList(temppage);
					    } else {
						    getFormListSearch(temppage, tempkeyword);
					    }
					}
				}
			})
		});
		
		$("#formregbtn").on("click", function() {
			$("body").attr("class", "modal-open");
		    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
		    $("#formreg").attr("class", "modal fade show");
		    $("#formreg").attr("aria-modal", "true");
		    $("#formreg").attr("aria-hidden", "false");
		    $('#formreg').modal({backdrop: 'static'});
		    $("#formreg").modal("show");
		}); // Form Register modal open funtion
		
		$(".closebtn").on("click", function() {
			$("body").attr("class", "");
			$("#backdrop").remove();
		    $("#formreg").attr("class", "modal fade");
		    $("#formreg").attr("aria-modal", "false");
		    $("#formreg").attr("aria-hidden", "true");
		    $("#formreg").modal("hide");
		    $("#formmod").attr("class", "modal fade");
		    $("#formmod").attr("aria-modal", "false");
		    $("#formmod").attr("aria-hidden", "true");
		    $("#formmod").modal("hide");
		    $("#formdel").attr("class", "modal fade");
		    $("#formdel").attr("aria-modal", "false");
		    $("#formdel").attr("aria-hidden", "true");
		    $("#formdel").modal("hide");
		}); // All modal close function
		
	});
    </script>

</body>

</html>
