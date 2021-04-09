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
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><strong><i class="icofont-search-document"></i>부서 관리</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icofont-robot-face"></i><a href="/manage/">관리자 메뉴</a></li>
              <li><i class="icofont-users-social"></i><a href="/manage/personnel">인사 관리</a></li>
              <li><i class="icofont-search-document"></i>부서 관리</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        
        

        <div class="row">
          

          <div class="col-lg-6 col-md-6">
            
            
            <header class="panel-heading text-primary">
              <div class="row">
                <h3 class="col-lg-4 col-md-4">
                  부서 관리
                </h3>
                <div class="container">
                  <button id="deptregbtn" class="btn btn-primary pull-right"><i class="icofont-plus-square"></i></button>
                </div>
              </div>
            </header>
            <section class="panel">
            <table class="table table-striped table-advance table-hover table-bordered">
              <thead>
                <tr>
                  <th class="text-center" style="width: 15%">부서번호</th>
                  <th class="text-center" style="width: 35%">부서명</th>
                  <th class="text-center" style="width: 15%">사원 수</th>
                  <th class="text-center" style="width: 20%">관리</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach var="d" items="${dept }">              	
                <tr>
                  <td class="text-center">${d.deptno}</td>
                  <td class="text-center">${d.deptname}</td>
                  <td class="text-center">${d.countmem}</td>
                  <td class="text-center">
                    <div class="btn-group" data-dno="${d.deptno}" data-dname="${d.deptname}">
                      <button class="btn btn-success" data-dno="${d.deptno}" id="mod${d.deptno}"><i class="icofont-edit"></i></button>
                      <button class="btn btn-danger" data-dno="${d.deptno}" id="del${d.deptno}"><i class="icofont-ui-delete"></i></button>
                      <a class="btn btn-default" data-dno="${d.deptno}" id="list${d.deptno}" href="/manage/deptmanage?deptoption=${d.deptno}"><i class="icofont-ui-search"></i></a>
                    </div>
                  </td>
                </tr>
              	</c:forEach>
              </tbody>
            </table>
          </section>
          </div>

          <div class="col-lg-6 col-md-6">
            
              <header class="panel-heading text-primary">
              <h3>
                <strong>${deptname}</strong> 소속 사원
                </h3>
              </header>
              <section class="panel">
              <table class="table table-striped table-advance table-hover table-bordered">
                <thead>
                  <tr class="something">
                    <th class="text-center" style="width: 15%">사원번호</th>
                    <th class="text-center" style="width: 40%">이름</th>
                    <th class="text-center" style="width: 25%">직위</th>
                    <th class="text-center" style="width: 20%">관리</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="dm" items="${deptMem}">
                  <tr>
                    <td class="text-center">${dm.mno }</td>
                    <td class="text-center">${dm.mname }</td>
                    <td class="text-center">${dm.position }</td>
                    <td class="text-center">
                        <button id="mem${dm.mno}" data-mno="${dm.mno}" data-deptno="${dm.deptno}" class="btn btn-success"><i class="icofont-edit"></i></button>
                    </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
              <div class="text-center">
                  <ul class="pagination">
                    <c:if test="${pageMaker.prev}">
                    	<li><a href="/manage/deptmanage?page=${pageMaker.startPage - 1}&deptoption=${cri.deptoption}">«</a></li>
                    </c:if>
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
                    	<li class="<c:out value="${pageMaker.cri.page == index ? 'active' : '' }" />" >
                    		<a href="/manage/deptmanage?page=${index}&deptoption=${cri.deptoption}">${index}</a></li>
                    </c:forEach>
                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    	<li><a href="/manage/deptmanage?page=${pageMaker.endPage + 1}&deptoption=${cri.deptoption}">»</a></li>
                    </c:if>
                  </ul>
                </div>
            </section>
          </div>
        </div>

<!--         <div class="row" > -->
<!--           <div id="deptreg" class="col-lg-6 col-md-6" style="display: none;"> -->
<!--             부서 등록시 표출 -->
<!--             <h3> -->
<!--               <header class="panel-heading text-primary"> -->
<!--                 부서 등록 -->
<!--               </header></h3> -->
              
<!--               <section class="panel"> -->
<!--                 <header class="panel-heading"> -->
<!--                   새로운 부서 등록 -->
<!--                 </header> -->
<!--                 <div class="panel-body"> -->
<!--                   <div class="form"> -->
<!--                   	<form method="post" action="/manage/deptreg"> -->
<!--                       <div class="form-group "> -->
<!--                         <label for="deptname" class="control-label col-lg-2">부서명 <span class="required">*</span></label> -->
<!--                         <div class="col-lg-10"> -->
<!--                           <input class="form-control" id="dname" name="deptname" type="text" required /> -->
<!--                         </div> -->
<!--                       </div> -->
<!--                       <div class="form-group text-center"> -->
                        
<!--                           <button id="newdept" class="btn btn-primary" type="submit">Save</button> -->
<!--                           <button class="btn btn-default closeBtn" type="button">Cancel</button> -->
                   
<!--                       </div> -->
<!--                     </form> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </section> -->
              
              <div class="modal fade" id="deptreg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">새로운 부서 등록</h4>
                      </div>
                        <form method="post" action="/manage/deptreg">
                      <div class="modal-body">

                      <div class="form-group ">
                        <label for="deptname" class="control-label col-lg-2">부서명</label>
                        <div class="col-lg-10">
                          <input class="form-control" id="dname" name="deptname" type="text" required />
                        </div>
                      </div>
                    

                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-primary btn-lg" id="deptregbtnok" type="submit"><i class="icofont-checked"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                      </form>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="deptmodify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">부서명 변경</h4>
                      </div>
                        <form method="post" action="/manage/deptmodify">
                      <div class="modal-body">

                      <div class="form-group ">
                        <label for="deptname" class="control-label col-lg-2">부서명</label>
                        <div class="col-lg-10">
                          <input name="deptno" type="hidden" id="hidemodify">
                          <input type="hidden" name="page" value="${cri.page }">
                        	<input type="hidden" name="deptoption" value="${cri.deptoption }">
                          <input class="form-control" id="dnamemod" name="deptname" type="text" required />
                        </div>
                      </div>

                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-success btn-lg" id="deptmodbtnok" type="submit"><i class="icofont-save"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                      </form>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="deptremove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">부서 삭제</h4>
                      </div>
                        <form method="post" action="/manage/deptremove">
                      <div class="modal-body">

                      
                        <h2 class="text-center text-danger"><strong>부서를 삭제하시겠습니까?</strong></h2> <br>
                        <h3 class="text-center">부서에 속한 모든 사원들이 미배정 상태가 됩니다.</h3>
                          <input name="deptno" type="hidden" id="hideremove">
                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-danger btn-lg" id="deptdelbtnok" type="submit"><i class="icofont-eraser"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                      </form>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="deptmembermodify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">사원 부서 변경</h4>
                      </div>
                        <form method="post" action="/manage/deptmembermodify">
                      <div class="modal-body">

                      <div class="form-group ">
                        <label for="deptname" class="control-label col-lg-2">부서 선택</label>
                        <div class="col-lg-10">
                        	<input type="hidden" id="hidemno" name="mno">
                        	<input type="hidden" name="page" value="${cri.page }">
                        	<input type="hidden" name="deptoption" value="${cri.deptoption }">
	                        <select class="form-control" id="modifydeptno" name="deptno">
	                          <c:forEach var="d" items="${dept}">
	                          	<option value="${d.deptno}">${d.deptname}</option>
	                          </c:forEach>
	                        </select>
                      	</div>
                        </div>

                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-success btn-lg" type="submit"><i class="icofont-checked"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                      </form>
                    </div>
                  </div>
                </div>
              
<!--               <div id="deptregModal"> -->
<!--               	<div> -->
<!--               		<div> -->
              		
<!--               			<div> -->
<!--               				<h4>부서 등록</h4> -->
<!--               			</div> -->
              			
<!--               			<div> -->
<!--               				<form method="post" action="/manage/deptreg"> -->
<!--               					<div>부서명</div> -->
<!-- 		                          <input class="form-control" id="deptname" name="deptnamename" type="text" required /> -->
<!-- 		                      <div class="form-group text-center"> -->
<!-- 		                </div> -->
                        
<!--                           <button id="newdept" class="btn btn-primary" type="button">Save</button> -->
<!--                           <button class="btn btn-default">Cancel</button> -->
<!--                    			 </form> -->
                   
<!--                       </div> -->
<!--               			</div> -->
<!--               		</div> -->
<!--               	</div> -->
<!--               </div> -->
<!--           </div> -->

<!--         </div> -->
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
<!--     <script src="/resources/js/jquery.slimscroll.min.js"></script> -->
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
	   
// 	    $("#deptregbtn").on("click", function() {
			
// 			$("#deptreg").css("display", "block");
			
// 		});
	    
// 		$(".closeBtn").on("click", function(){
// 			$("#deptreg").css("display", "none");
// 		})
	    
// 	    $("#newdept").on("click", function() {
// 			var deptname = $("#dname").val();
			
// 			$.ajax({
// 				type : 'post',
// 				url : '/'
				
// 			})
// 		})
		
// 		$('input:radio[name=deptoption]').on("click", function(event) {
			
// 			var deptno = $('input:radio[name=deptoption]').val();
			
// 			console.log(deptno);
			
// 			self.location = "deptmanage"
// 							+ "?page=1"
// 							+ "&deptoption="
// 							+ $('input:radio[name=deptoption]').val();
// 		})
		
		$("#deptregbtn").on("click", function() {
			$("body").attr("class", "modal-open");
		    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
		    $("#deptreg").attr("class", "modal fade show");
		    $("#deptreg").attr("aria-modal", "true");
		    $("#deptreg").attr("aria-hidden", "false");
		    $('#deptreg').modal({backdrop: 'static'});
		    $("#deptreg").modal("show");
		});
		
		$(".closebtn").on("click", function() {
			$("body").attr("class", "");
			$("#backdrop").remove();
		    $("#deptreg").attr("class", "modal fade");
		    $("#deptreg").attr("aria-modal", "false");
		    $("#deptreg").attr("aria-hidden", "true");
		    $("#deptreg").modal("hide");
		    $("#deptmodify").attr("class", "modal fade");
		    $("#deptmodify").attr("aria-modal", "false");
		    $("#deptmodify").attr("aria-hidden", "true");
		    $("#deptmodify").modal("hide");
		    $("#deptremove").attr("class", "modal fade");
		    $("#deptremove").attr("aria-modal", "false");
		    $("#deptremove").attr("aria-hidden", "true");
		    $("#deptremove").modal("hide");
		    $("#deptmembermodify").attr("class", "modal fade");
		    $("#deptmembermodify").attr("aria-modal", "false");
		    $("#deptmembermodify").attr("aria-hidden", "true");
		    $("#deptmembermodify").modal("hide");
		});
		
		
		
		$("td").on("click", "div button", function() {
			
			var a = $(this).data("dno");
			
			var info = $(this).parent();
			
			var dno = info.attr("data-dno");
			
			var deptname = info.attr("data-dname");
			
			console.log(deptname);
			
			if($(this).attr("id") == "mod" + a) {
				
				$("body").attr("class", "modal-open");
			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
			    $("#dnamemod").val(deptname);
			    $("#hidemodify").val(a);
			    $("#deptmodify").attr("class", "modal fade show");
			    $("#deptmodify").attr("aria-modal", "true");
			    $("#deptmodify").attr("aria-hidden", "false");
			    $('#deptmodify').modal({backdrop: 'static'});
			    $("#deptmodify").modal("show");
			} else if ($(this).attr("id") == "del" + a) {
				$("body").attr("class", "modal-open");
			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
			    $("#hideremove").val(a);
			    $("#deptremove").attr("class", "modal fade show");
			    $("#deptremove").attr("aria-modal", "true");
			    $("#deptremove").attr("aria-hidden", "false");
			    $('#deptremove').modal({backdrop: 'static'});
			    $("#deptremove").modal("show");
			}
			
		})
		
		$("tr").on("click", "td button", function() {
			
			var mno = $(this).data("mno");
			var deptno = $(this).data("deptno");
			
			if ($(this).attr("id") == "mem" + mno){
				$("body").attr("class", "modal-open");
			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
				$("#hidemno").val(mno);
				$('#modifydeptno').val(deptno).prop("selected", true);
				$("#deptmembermodify").attr("class", "modal fade show");
			    $("#deptmembermodify").attr("aria-modal", "true");
			    $("#deptmembermodify").attr("aria-hidden", "false");
			    $('#deptmembermodify').modal({backdrop: 'static'});
			    $("#deptmembermodify").modal("show");
			}
			
		})
	    	
		$("#deptregbtnok").on("click", function() {
			alert("새로운 부서가 등록되었습니다.")
		});
		
		$("#deptmodbtnok").on("click", function() {
			alert("부서명이 수정 되었습니다.")
		});
		
		$("#deptdelbtnok").on("click", function() {
			alert("부서가 삭제되었습니다.")
		});
	    
	    
	});
    

    </script>
</body>

</html>