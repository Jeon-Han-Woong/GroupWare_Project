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
            <h3 class="page-header"><strong><i class="icofont-chat"></i>쪽지함</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icofont-chat"></i>쪽지함</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        
        

        <div class="row">
          

          <div class="col-lg-6 col-md-6">
            
            
            <header class="panel-heading text-primary">
              <div class="row">
                <h4 class="col-lg-4 col-md-4">
                  받은 쪽지함
                </h4>
                <div class="container">
                  <button id="deltakemsgbtn" class="btn btn-danger pull-right"><i class='icofont-ui-delete'></i></button>
                </div>
              </div>
            </header>
            <section class="panel">
            <table class="table table-striped table-advance table-hover table-bordered">
              <thead>
                <tr>
                  <th class="text-center" style="width: 5%"><input type='checkbox' id='alltakechk'></th>
                  <th class="text-center" style="width: 20%">송신자</th>
                  <th class="text-center" style="width: 35%">제목</th>
                  <th class="text-center" style="width: 25%">전송 날짜</th>
                  <th class="text-center" style="width: 15%">읽음</th>
                </tr>
              </thead>
              <tbody id="takebody">
              	
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
                                          <input type="radio" name="searchTypeT" id="option1" value="n" > 이름
                                      </label>
                    <label class="btn btn-default">
                                          <input type="radio" name="searchTypeT" id="option2" value="t" > 제목
                                      </label>
                  </div>
              		
                  <div class="row">
                  	<br>
					
              			<input type="text" name="keyword" id="keywordInputT" placeholder="Search">
              			
              			<button class="btn btn-default btn-lg" id="searchBtnT"><i class="icofont-search-2"></i></button>
                  </div>
 						
              		</div>
              	</div>
              <div class="text-center">
                  <ul id="takebasic" class="pagination">
                  </ul>
                  <ul id="takesearch" class="pagination"></ul>
                </div>
          </section>
          </div>
          
          <div class="col-lg-6 col-md-6">
            <header class="panel-heading text-primary">
              <div class="row">
                <h4 class="col-lg-4 col-md-4">
                  보낸 쪽지함
                </h4>
                <div class="container">
                  <div class="btn-group pull-right">
             	     <button id="newmsgbtn" class="btn btn-primary"><i class="icofont-plus-square"></i></button>
              	   	 <button id="delsendmsgbtn" class="btn btn-danger"><i class='icofont-ui-delete'></i></button>
                  </div>
                </div>
              </div>
            </header>
            <section class="panel">
            <table class="table table-striped table-advance table-hover table-bordered">
              <thead>
                <tr>
                  <th class="text-center" style="width: 5%"><input type='checkbox' id='allsendchk'></th>
                  <th class="text-center" style="width: 20%">수신자</th>
                  <th class="text-center" style="width: 35%">제목</th>
                  <th class="text-center" style="width: 25%">전송 날짜</th>
                  <th class="text-center" style="width: 15%">읽음</th>
                </tr>
              </thead>
              <tbody id="sendbody">
              	
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
                                          <input type="radio" name="searchTypeS" id="option1" value="n" > 이름
                                      </label>
                    <label class="btn btn-default">
                                          <input type="radio" name="searchTypeS" id="option2" value="t" > 제목
                                      </label>
                  </div>
              		
                  <div class="row">
                  	<br>
					
              			<input type="text" name="keyword" id="keywordInputS" placeholder="Search">
              			
              			<button class="btn btn-default btn-lg" id="searchBtnS"><i class="icofont-search-2"></i></button>
                  </div>
 						
              		</div>
              	</div>
              <div class="text-center">
                  <ul id="sendbasic" class="pagination">
                  </ul>
                  <ul id="sendsearch" class="pagination"></ul>
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
              
              <div class="modal fade" id="sendmsgmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">쪽지 보내기</h4>
                      </div>
                      <div class="modal-body">
						<div class="container">
                      <div class="form-group ">
                        <label for="msgtitle" class="control-label col-md-2 col-lg-2">제목</label>
                        <div class="col-md-10 col-lg-10">
                          <input class="form-control" id="msgtitle" name="msgtitle" type="text" required />
                        </div>
                      
                      </div>
                      <br><br>
						<div class="form-group ">
                        <label for="finfo" class="control-label col-md-2 col-lg-2">받는 사람</label>
                        <div class="col-md-10 col-lg-10">
                        	<input class="form-control" type="text" list="list" id="takemno" name="takemno"/>
                          <datalist id = "list" >
                          </datalist>
                        </div>
						</div>
						<br><br>
                      <div class="form-group ">
                        <label for="msgcontent" class="control-label col-md-2 col-lg-2">내용</label>
                        <div class="col-md-10 col-lg-10">
                          <textarea class="form-control" id="msgcontent" name="msgcontent" required ></textarea>
                        </div>
						</div>
                      </div>
                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-primary btn-lg" id="sendmsgbtn"><i class="icofont-checked"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="detailtakemsgmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">쪽지 내용 보기</h4>
                      </div>
                      <div class="modal-body">
						<div class="container">
                      <div class="form-group ">
                        <label for="msgtitle" class="control-label col-md-2 col-lg-2">제목</label>
                        <div class="col-md-10 col-lg-10">
                          <input class="form-control" id="detailtaketitle" name="msgtitle" type="text" readonly />
                        </div>
                      </div>
                      <br><br>
						<div class="form-group ">
                        <label for="finfo" class="control-label col-md-2 col-lg-2">송신자</label>
                        <div class="col-md-10 col-lg-10">
                        	<input class="form-control" type="text" id="sendperson" name="mname" readonly/>
                        </div>
						</div>
						<br><br>
                      <div class="form-group ">
                        <label for="msgcontent" class="control-label col-md-2 col-lg-2">내용</label>
                        <div class="col-md-10 col-lg-10">
                          <textarea class="form-control" id="detailtakecontent" name="msgcontent" readonly ></textarea>
                        </div>
						</div>
						<br><br><br>
                      <div class="form-group ">
                        <label for="msgcontent" class="control-label col-md-2 col-lg-2">날짜</label>
                        <div class="col-md-10 col-lg-10">
                          <input type="date" class="form-control" id="tdetailsenddate" name="senddate" readonly >
                        </div>
						</div>
                      </div>
                      </div>
                      <div class="modal-footer">
<!--                         <button class="btn btn-primary btn-lg" id="sendmsgbtn"><i class="icofont-checked"></i></button> -->
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="detailsendmsgmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">쪽지 내용 보기</h4>
                      </div>
                      <div class="modal-body">
						<div class="container">
                      <div class="form-group ">
                        <label for="msgtitle" class="control-label col-md-2 col-lg-2">제목</label>
                        <div class="col-md-10 col-lg-10">
                          <input class="form-control" id="detailsendtitle" name="msgtitle" type="text" readonly />
                        </div>
                      </div>
                      <br><br>
						<div class="form-group ">
                        <label for="finfo" class="control-label col-md-2 col-lg-2">수신자</label>
                        <div class="col-md-10 col-lg-10">
                        	<input class="form-control" type="text" id="takeperson" name="mname" readonly/>
                        </div>
						</div>
						<br><br>
                      <div class="form-group ">
                        <label for="msgcontent" class="control-label col-md-2 col-lg-2">내용</label>
                        <div class="col-md-10 col-lg-10">
                          <textarea class="form-control" id="detailsendcontent" name="msgcontent" readonly ></textarea>
                        </div>
						</div>
						<br><br><br>
                      <div class="form-group ">
                        <label for="msgcontent" class="control-label col-md-2 col-lg-2">날짜</label>
                        <div class="col-md-10 col-lg-10">
                          <input type="date" class="form-control" id="detailsenddate" name="senddate" readonly >
                        </div>
						</div>
                      </div>
                      </div>
                      <div class="modal-footer">
<!--                         <button class="btn btn-primary btn-lg" id="sendmsgbtn"><i class="icofont-checked"></i></button> -->
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="deltakemsgmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">받은 쪽지 삭제</h4>
                      </div>
                      <div class="modal-body">

                      
                        <h2 class="text-center text-danger"><strong>받은 쪽지를 삭제하시겠습니까?</strong></h2> <br>
                        <h3 class="text-center">삭제된 쪽지는 다시 볼 수 없습니다.</h3>
                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-danger btn-lg" id="deltakemsg" type="submit"><i class="icofont-eraser"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="modal fade" id="delsendmsgmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">보낸 쪽지 삭제</h4>
                      </div>
                      <div class="modal-body">

                      
                        <h2 class="text-center text-danger"><strong>보낸 쪽지를 삭제하시겠습니까?</strong></h2> <br>
                        <h3 class="text-center">삭제된 쪽지는 다시 볼 수 없습니다.</h3>
                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-danger btn-lg" id="delsendmsg" type="submit"><i class="icofont-eraser"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
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
    	function notReadMsg(){					
	        $.getJSON("/message/alert/" + mno, function(data) {
       			if (data === 0) {
       				$("#news").html("새로운 소식이 없습니다.")
       				$("#notChkMsg").html("");
       				$("#newsDetail").html("쪽지함으로 이동")
       			} else {
       				$("#news").html("새로운 소식이 있습니다.")
	       			$("#notChkMsg").html(data);
       				$("#newsDetail").html("읽지 않은" + data + "개의 쪽지가 있습니다.");
       			}
       			
       		});
		}
    	
    	var temppage1 = "";
    	var tempsearchType1 = "";
    	var tempkeyword1 = "";
    	var temppage2 = "";
    	var tempsearchType2 = "";
    	var tempkeyword2 = "";
	   	
    	var mno = ${login.mno};
    	
    	function getTakeList(page){
    	    $.getJSON("/message/take/" + mno + "/" + page, function(data) {
    		    var str = "";
    		    
    		    temppage1 = page;
    	    	$(data.list).each(
    	    		function() {
    	    			var timestamp = this.senddate;
    	    			var date = new Date(timestamp);
    	    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
    	    			var readchk = "";
    	    			
    	    			if(this.readchk == 0) {
    	    				readchk = "안읽음";	
    	    			} else if (this.readchk > 0) {
    	    				readchk = "읽음";
    	    			}
    	    			
    	    			
    	    			str += "<tr data-msgno='" + this.msgno + "' class='text-center mytakemsgno'>"
        				+ "<td><input type='checkbox' name='takechkbox' value='" + this.msgno + "'></td>"
        				+ "<td>" + this.mname + "</td><td><div data-msgno='" + this.msgno + "'>" + this.msgtitle + "</div></td><td>" + formattedTime + "</td><td>" + readchk + "</td>"
        				+ "</tr>";
    	    		});
    	    	$("#takebody").html(str);
    	    	printPagingTake(data.pageMaker);
    	    });
    	} // getFormList
    	getTakeList(1);

    	function printPagingTake(pageMaker) {
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
    		
    		$('#takebasic').html(str);
    	}

    	$("#takebasic").on("click", "li a", function(e) {
    		e.preventDefault();
    		
    		formPage = $(this).attr("href");
    		
    		getTakeList(formPage);
    	});

    	function getTakeListSearch(page, searchType, keyword){
    	    $.getJSON("/message/take/" + mno + "/" + page + "/" + searchType + "/" + keyword, function(data) {
    		    var str = "";
    		    temppage1 = data.pageMaker.cri.page;
    		    console.log(data.pageMaker);
    		    console.log(data.list);
    		    tempsearchType1 = searchType;
    		    tempkeyword1 = keyword;
    	    	$(data.list).each(
    	    		function() {
    	    			var timestamp = this.senddate;
    	    			var date = new Date(timestamp);
    	    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
    	    			var readchk = "";
    	    			
    	    			if(this.readchk == 0) {
    	    				readchk = "안읽음";	
    	    			} else if (this.readchk > 0) {
    	    				readchk = "읽음";
    	    			}
    	    			
    	    			
    	    			str += "<tr data-msgno='" + this.msgno + "' class='text-center mytakemsgno'>"
        				+ "<td><input type='checkbox' name='takechkbox' value='" + this.msgno + "'></td>"
        				+ "<td>" + this.mname + "</td><td><div data-msgno='" + this.msgno + "'>" + this.msgtitle + "</div></td><td>" + formattedTime + "</td><td>" + readchk + "</td>"
        				+ "</tr>";
    	    		});
    	    	$("#takebody").html(str);
    	    	printPagingTakeSearch(data.pageMaker, searchType, keyword);
    	    });
    	} // getFormList

    	function printPagingTakeSearch(pageMaker, searchType, keyword) {
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
    		
    		$('#takesearch').html(str);
    	}
    	
    	$("#takesearch").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			var keyword = $("#keywordInputT").val();
			getTakeListSearch(formPage, searchType ,keyword);
		});
    	$("#searchBtnT").on("click", function() {
    		keyword = $("#keywordInputT").val();
			searchType = $('input[name="searchTypeT"]:checked').val();
    		console.log(searchType);
    		console.log(keyword);
			
		    
			 if(keyword == "" || searchType == "undefined") {
			    getTakeList(1);
				$("#takesearch").html("");
			 } else {
				console.log("====================");
				getTakeListSearch(1, searchType, keyword);
				console.log("====================");
				
				$("#takebasic").html("");
			 } 
    		
    	})
    	
    	function getSendList(page){
    	    $.getJSON("/message/send/" + mno + "/" + page, function(data) {
    		    var str = "";
    		    
    		    temppage2 = page;
    	    	$(data.list).each(
    	    		function() {
    	    			var timestamp = this.senddate;
    	    			var date = new Date(timestamp);
    	    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
    	    			var readchk = "";
    	    			
    	    			if(this.readchk == 0) {
    	    				readchk = "안읽음";	
    	    			} else if (this.readchk > 0) {
    	    				readchk = "읽음";
    	    			}
    	    			
    	    			
    	    			str += "<tr data-msgno='" + this.msgno + "' class='text-center mysendmsgno'>"
    					+ "<td><input type='checkbox' name='sendchkbox' value='" + this.msgno + "'></td>"
    					+ "<td>" + this.mname + "</td><td><div data-msgno='" + this.msgno + "'>" + this.msgtitle + "</div></td><td>" + formattedTime + "</td><td>" + readchk + "</td>"
    					+ "</tr>";
    	    		});
    	    	$("#sendbody").html(str);
    	    	printPagingSend(data.pageMaker);
    	    });
    	} // getFormList
    	getSendList(1);

    	function printPagingSend(pageMaker) {
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
    		
    		$('#sendbasic').html(str);
    	}

    	$("#sendbasic").on("click", "li a", function(e) {
    		e.preventDefault();
    		
    		formPage = $(this).attr("href");
    		
    		getSendList(formPage);
    	});

    	function getSendListSearch(page, searchType, keyword){
    	    $.getJSON("/message/send/" + mno + "/" + page + "/" + searchType + "/" + keyword, function(data) {
    		    var str = "";
    		    temppage2 = data.pageMaker.cri.page;
    		    console.log(data.pageMaker);
    		    console.log(data.list);
    		    tempsearchType2 = searchType;
    		    tempkeyword2 = keyword;
    	    	$(data.list).each(
    	    		function() {
    	    			var timestamp = this.senddate;
    	    			var date = new Date(timestamp);
    	    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
    	    			var readchk = "";
    	    			
    	    			if(this.readchk == 0) {
    	    				readchk = "안읽음";	
    	    			} else if (this.readchk > 0) {
    	    				readchk = "읽음";
    	    			}
    	    			
    	    			
    	    			str += "<tr data-msgno='" + this.msgno + "' class='text-center mysendmsgno'>"
    					+ "<td><input type='checkbox' name='sendchkbox' value='" + this.msgno + "'></td>"
    					+ "<td>" + this.mname + "</td><td><div data-msgno='" + this.msgno + "'>" + this.msgtitle + "</div></td><td>" + formattedTime + "</td><td>" + readchk + "</td>"
    					+ "</tr>";
    	    		});
    	    	$("#sendbody").html(str);
    	    	printPagingSendSearch(data.pageMaker, searchType, keyword);
    	    });
    	} // getFormList

    	function printPagingSendSearch(pageMaker, searchType, keyword) {
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
    		
    		$('#sendsearch').html(str);
    	}
    	
    	$("#sendsearch").on("click", "li a", function(e) {
			e.preventDefault();
			
			formPage = $(this).attr("href");
			var keyword = $("#keywordInputS").val();
			var searchType = $('input[name="searchTypeS"]:checked').val();
			getSendListSearch(formPage, searchType ,keyword);
		});
    	$("#searchBtnS").on("click", function() {
    		var keyword = $("#keywordInputS").val();
			var searchType = $('input[name="searchTypeS"]:checked').val();
    		console.log(searchType);
    		console.log(keyword);
			
		    
			 if(keyword == "" || searchType == "undefined") {
			    getSendList(1);
				$("#sendsearch").html("");
			 } else {
				console.log("====================");
				getSendListSearch(1, searchType, keyword);
				console.log("====================");
				
				$("#sendbasic").html("");
			 } 
    		
    	})
    	
    	
//     	function getTakeList(){
//     		$.getJSON("/message/take/" + mno, function(data) {
    			
//     			var str = "";
    			
//     			$(data).each(function(){
//     				var timestamp = this.senddate;
// 	    			var date = new Date(timestamp);
// 	    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
// 	    			var readchk = "";
	    			
// 	    			if(this.readchk == 0) {
// 	    				readchk = "안읽음";	
// 	    			} else if (this.readchk > 0) {
// 	    				readchk = "읽음";
// 	    			}
	    			
	    			
// 	    			str += "<tr data-msgno='" + this.msgno + "' class='text-center mytakemsgno'>"
//     				+ "<td><input type='checkbox' name='takechkbox' value='" + this.msgno + "'></td>"
//     				+ "<td>" + this.mname + "</td><td><div data-msgno='" + this.msgno + "'>" + this.msgtitle + "</div></td><td>" + formattedTime + "</td><td>" + readchk + "</td>"
//     				+ "</tr>";
//     			})
//     			$("#takebody").html(str);
//     		})
//     	} // 받은 쪽지 리스트를 구하는 함수
//     	getTakeList();


    	
//     	function getSendList(){
//     		$.getJSON("/message/send/" + mno, function(data) {
    			
//     			var str = "";
    			
//     			$(data).each(function(){
//     				var timestamp = this.senddate;
// 	    			var date = new Date(timestamp);
// 	    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
// 	    			var readchk = "";
	    			
// 	    			if(this.readchk == 0) {
// 	    				readchk = "안읽음";	
// 	    			} else if (this.readchk > 0) {
// 	    				readchk = "읽음";
// 	    			}
// 	    			console.log(this.readchk);
	    			
	    			
// 	    			str += "<tr data-msgno='" + this.msgno + "' class='text-center mysendmsgno'>"
//     				+ "<td><input type='checkbox' name='sendchkbox' value='" + this.msgno + "'></td>"
//     				+ "<td>" + this.mname + "</td><td><div data-msgno='" + this.msgno + "'>" + this.msgtitle + "</div></td><td>" + formattedTime + "</td><td>" + readchk + "</td>"
//     				+ "</tr>";
//     			})
//     			$("#sendbody").html(str);
//     		})
//     	} // 보낸 쪽지 리스트를 구하는 함수
//     	getSendList();
    	
    	function takeMno(){
    		
    	    $.getJSON("/message/takemno/" + mno, function(data) {
				var str = "";
				$(data).each(function() {
					str += "<option value='" + this.mno + "'>" + this.mname + "</option>";
				});
				
				$("datalist").html(str);
			});
    	} // 쪽지를 보낼때 사람의 명단을 뽑는 함수
    	
    	$("#newmsgbtn").on("click", function() {
  			takeMno();
    	    $("body").attr("class", "modal-open");
		    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
		    $("#sendmsgmodal").attr("class", "modal fade show");
		    $("#sendmsgmodal").attr("aria-modal", "true");
		    $("#sendmsgmodal").attr("aria-hidden", "false");
		    $('#sendmsgmodal').modal({backdrop: 'static'});
		    $("#sendmsgmodal").modal("show");
		}); // 쪽지 보내기 모달창 여는 버튼
    	
    	$("#sendmsgbtn").on("click", function() {
			var msgtitle = $("#msgtitle").val();
			var msgcontent = $("#msgcontent").val();
			var takemno = $("#takemno").val();
			$.ajax({
				type : 'post',
				url : '/message/sendmsg',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					sendmno : mno,
					takemno : takemno,
					msgtitle : msgtitle,
					msgcontent : msgcontent,
				}),
				success : function(result) {
					if(result == 'SUCCESS'){
						alert("쪽지를 전송하였습니다.");
						$("#msgtitle").val("");
						$("#msgcontent").val("");
						$("#takemno").val("");
						$("body").attr("class", "");
						$("#backdrop").remove();
					    $("#sendmsgmodal").attr("class", "modal fade");
					    $("#sendmsgmodal").attr("aria-modal", "false");
					    $("#sendmsgmodal").attr("aria-hidden", "true");
					    $("#sendmsgmodal").modal("hide");
					    getSendList(temppage1);
					}
				}
			});
		}); // 쪽지 보내기 ajax
		
		$("#alltakechk").on("click", function(){
			if (this.checked) {
				$("input[name='takechkbox']").attr("checked",true);
			} else {
				$("input[name='takechkbox']").attr("checked",false);
			}
		})
		
		$("#allsendchk").on("click", function(){
			if (this.checked) {
				$("input[name='sendchkbox']").attr("checked",true);
			} else {
				$("input[name='sendchkbox']").attr("checked",false);
			}
		})
		
    	$("#delsendmsgbtn").on("click", function() {
    		$("body").attr("class", "modal-open");
		    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
		    $("#delsendmsgmodal").attr("class", "modal fade show");
		    $("#delsendmsgmodal").attr("aria-modal", "true");
		    $("#delsendmsgmodal").attr("aria-hidden", "false");
		    $('#delsendmsgmodal').modal({backdrop: 'static'});
		    $("#delsendmsgmodal").modal("show");
		}); // 보낸 쪽지 삭제 모달창
		
		$("#delsendmsg").on("click", function() {
			
			var sendmsglist = [];
			$("input[name='sendchkbox']:checked").each(function(){
				var temp = $(this).val();
				sendmsglist.push(temp);
			}); // 체크된 목록을 배열로 가져오기
			
			console.log(sendmsglist);
			
			if (sendmsglist.length == 0) {
				alert("삭제할 쪽지를 선택해주세요.");
				$("body").attr("class", "");
				$("#backdrop").remove();
			    $("#delsendmsgmodal").attr("class", "modal fade");
			    $("#delsendmsgmodal").attr("aria-modal", "false");
			    $("#delsendmsgmodal").attr("aria-hidden", "true");
			    $("#delsendmsgmodal").modal("hide");
			} // 삭제할 쪽지가 없으면 알림창 띄우고 모달창 닫기
			
			$.each(sendmsglist, function(index, value) {
				$.ajax({
					type : 'put',
					url : '/message/remove/send/' + value,
					header : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "PUT"
					},
					contentType : "application/json",
					data : JSON.stringify({
						msgno : value
					}),
					dataType : 'text',
					success : function(result) {
						if(result == 'SUCCESS' && value === sendmsglist[sendmsglist.length-1])
						alert("받은 쪽지가 삭제 되었습니다.");
						notReadMsg();
						$("body").attr("class", "");
						$("#backdrop").remove();
					    $("#delsendmsgmodal").attr("class", "modal fade");
					    $("#delsendmsgmodal").attr("aria-modal", "false");
					    $("#delsendmsgmodal").attr("aria-hidden", "true");
					    $("#delsendmsgmodal").modal("hide");
					    if (temppage2 == "" || tempsearchType2 == "" || tempkeyword2 == ""){
							getSendList(temppage2)
							$("#sendsearch").html("");
						} else {
							getSendListSearch(temppage2, tempsearchType2, tempkeyword2);
							$("#sendbasic").html("");
						}
					}
				});
			});
			notReadMsg();
			
		});
		
// 		$("#delsendmsg").on("click", function(e) {
			
// 			var sendmsglist = [];
// 			$("input[name='sendchkbox']:checked").each(function(){
// 				var temp = $(this).val();
// 				sendmsglist.push(temp);
// 			}); // 체크된 목록을 배열로 가져오기
// 			console.log(sendmsglist);
			
// 			if (sendmsglist.length == 0) {
// 				alert("삭제할 쪽지를 선택해주세요.");
// 				$("body").attr("class", "");
// 				$("#backdrop").remove();
// 			    $("#delsendmsgmodal").attr("class", "modal fade");
// 			    $("#delsendmsgmodal").attr("aria-modal", "false");
// 			    $("#delsendmsgmodal").attr("aria-hidden", "true");
// 			    $("#delsendmsgmodal").modal("hide");
// 			} // 삭제할 쪽지가 없으면 알림창 띄우고 모달창 닫기
			
						
// 			$.each(sendmsglist, function(index, value) {
// 				$.ajax({
// 					type : 'put',
// 					url : '/message/remove/send/' + value,
// 					header : {
// 						"Content-Type" : "application/json",
// 						"X-HTTP-Method-Override" : "PUT"
// 					},
// 					contentType : "application/json",
// 					data : JSON.stringify({
// 						msgno : value
// 					}),
// 					dataType : 'text',
// 					success : function(result) {
// 						if(result == 'SUCCESS' && value === sendmsglist[sendmsglist.length-1])
// 						alert("보낸 쪽지가 삭제 되었습니다.");
// 						$("body").attr("class", "");
// 						$("#backdrop").remove();
// 					    $("#delsendmsgmodal").attr("class", "modal fade");
// 					    $("#delsendmsgmodal").attr("aria-modal", "false");
// 					    $("#delsendmsgmodal").attr("aria-hidden", "true");
// 					    $("#delsendmsgmodal").modal("hide");
// 					    getSendList(1);
// 					}
// 				});
// 			});
			
// 		}); // 보낸 쪽지 삭제 ajax
    	
    	$("#deltakemsgbtn").on("click", function() {
    		$("body").attr("class", "modal-open");
		    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
		    $("#deltakemsgmodal").attr("class", "modal fade show");
		    $("#deltakemsgmodal").attr("aria-modal", "true");
		    $("#deltakemsgmodal").attr("aria-hidden", "false");
		    $('#deltakemsgmodal').modal({backdrop: 'static'});
		    $("#deltakemsgmodal").modal("show");
		}) // 보낸 쪽지 삭제 모달창
		
		$("#deltakemsg").on("click", function() {
			
			var takemsglist = [];
			$("input[name='takechkbox']:checked").each(function(){
				var temp = $(this).val();
				takemsglist.push(temp);
			}); // 체크된 목록을 배열로 가져오기
			
			console.log(takemsglist);
			
			if (takemsglist.length == 0) {
				alert("삭제할 쪽지를 선택해주세요.");
				$("body").attr("class", "");
				$("#backdrop").remove();
			    $("#deltakemsgmodal").attr("class", "modal fade");
			    $("#deltakemsgmodal").attr("aria-modal", "false");
			    $("#deltakemsgmodal").attr("aria-hidden", "true");
			    $("#deltakemsgmodal").modal("hide");
			} // 삭제할 쪽지가 없으면 알림창 띄우고 모달창 닫기
			
			$.each(takemsglist, function(index, value) {
				$.ajax({
					type : 'put',
					url : '/message/remove/take/' + value,
					header : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "PUT"
					},
					contentType : "application/json",
					data : JSON.stringify({
						msgno : value
					}),
					dataType : 'text',
					success : function(result) {
						if(result == 'SUCCESS' && value === takemsglist[takemsglist.length-1])
						alert("받은 쪽지가 삭제 되었습니다.");
						$("body").attr("class", "");
						$("#backdrop").remove();
					    $("#deltakemsgmodal").attr("class", "modal fade");
					    $("#deltakemsgmodal").attr("aria-modal", "false");
					    $("#deltakemsgmodal").attr("aria-hidden", "true");
					    $("#deltakemsgmodal").modal("hide");
					    if (temppage1 == "" || tempsearchType1 == "" || tempkeyword1 == ""){
							getTakeList(temppage1);
							$("#takesearch").html("");
						} else {
							getTakeListSearch(temppage1, tempsearchType1, tempkeyword1);
							$("#takebasic").html("");
						}
					    notReadMsg();
					}
				});
			});
			
		}); // 보낸 쪽지 삭제 ajax
    	
		$(".closebtn").on("click", function() {
			$("body").attr("class", "");
			$("#backdrop").remove();
		    $("#sendmsgmodal").attr("class", "modal fade");
		    $("#sendmsgmodal").attr("aria-modal", "false");
		    $("#sendmsgmodal").attr("aria-hidden", "true");
		    $("#sendmsgmodal").modal("hide");
		    $("#delsendmsgmodal").attr("class", "modal fade");
		    $("#delsendmsgmodal").attr("aria-modal", "false");
		    $("#delsendmsgmodal").attr("aria-hidden", "true");
		    $("#delsendmsgmodal").modal("hide");
		    $("#deltakemsgmodal").attr("class", "modal fade");
		    $("#deltakemsgmodal").attr("aria-modal", "false");
		    $("#deltakemsgmodal").attr("aria-hidden", "true");
		    $("#deltakemsgmodal").modal("hide");
		    $("#detailsendmsgmodal").attr("class", "modal fade");
		    $("#detailsendmsgmodal").attr("aria-modal", "false");
		    $("#detailsendmsgmodal").attr("aria-hidden", "true");
		    $("#detailsendmsgmodal").modal("hide");
		    $("#detailtakemsgmodal").attr("class", "modal fade");
		    $("#detailtakemsgmodal").attr("aria-modal", "false");
		    $("#detailtakemsgmodal").attr("aria-hidden", "true");
		    $("#detailtakemsgmodal").modal("hide");
		    notReadMsg();
		    
		}); // 모든 모달창 닫기 버튼의 기능을 수행하는 함수
		
		$("#sendbody").on("click", ".mysendmsgno td div", function() {
			$("body").attr("class", "modal-open");
		    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
		    $("#detailsendmsgmodal").attr("class", "modal fade show");
		    $("#detailsendmsgmodal").attr("aria-modal", "true");
		    $("#detailsendmsgmodal").attr("aria-hidden", "false");
		    $('#detailsendmsgmodal').modal({backdrop: 'static'});
		    $("#detailsendmsgmodal").modal("show");
			
			var msgno = $(this).data("msgno");
			
			$.getJSON("/message/detail/send/" + msgno, function(data) {
				var timestamp = data.senddate;
    			var date = new Date(timestamp);
    			
    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
				
				$("#detailsendtitle").val(data.msgtitle);
				$("#takeperson").val(data.mname);
				$("#detailsendcontent").val(data.msgcontent);
				$("#detailsenddate").val(formattedTime);
				
				if (temppage2 == "" || tempsearchType2 == "" || tempkeyword2 == ""){
					getSendList(temppage2)
				} else {
					getSendListSearch(temppage2, tempsearchType2, tempkeyword2);
				}
			})
		})
		
		$("#takebody").on("click", ".mytakemsgno td div", function() {
			$("body").attr("class", "modal-open");
		    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
		    $("#detailtakemsgmodal").attr("class", "modal fade show");
		    $("#detailtakemsgmodal").attr("aria-modal", "true");
		    $("#detailtakemsgmodal").attr("aria-hidden", "false");
		    $('#detailtakemsgmodal').modal({backdrop: 'static'});
		    $("#detailtakemsgmodal").modal("show");
			
			var msgno = $(this).data("msgno");
			
			$.getJSON("/message/detail/take/" + msgno, function(data) {
				var timestamp = data.senddate;
    			var date = new Date(timestamp);
    			
    			var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
				
				$("#detailtaketitle").val(data.msgtitle);
				$("#sendperson").val(data.mname);
				$("#detailtakecontent").val(data.msgcontent);
				$("#tdetailsenddate").val(formattedTime);
				
				if (temppage1 == "" || tempsearchType1 == "" || tempkeyword1 == ""){
					getTakeList(temppage1)
				} else {
					getTakeListSearch(temppage1, tempsearchType1, tempkeyword1);
				}
			})
			
			
		})
			
// 		$("#takebody").on("click", ".mytakemsgno td div", function() {
			
// 			var mno = $(this).data("mno");
// 			var deptno = $(this).data("deptno");
			
// 			if ($(this).attr("id") == "mem" + mno){
// 				$("body").attr("class", "modal-open");
// 			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
// 				$("#hidemno").val(mno);
// 				$('#modifydeptno').val(deptno).prop("selected", true);
// 				$("#deptmembermodify").attr("class", "modal fade show");
// 			    $("#deptmembermodify").attr("aria-modal", "true");
// 			    $("#deptmembermodify").attr("aria-hidden", "false");
// 			    $('#deptmembermodify').modal({backdrop: 'static'});
// 			    $("#deptmembermodify").modal("show");
// 			}
			
// 		})
// 			if ($(this).attr("id") == "mem" + mno){
// 				$("body").attr("class", "modal-open");
// 			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
// 				$("#hidemno").val(mno);
// 				$('#modifydeptno').val(deptno).prop("selected", true);
// 				$("#deptmembermodify").attr("class", "modal fade show");
// 			    $("#deptmembermodify").attr("aria-modal", "true");
// 			    $("#deptmembermodify").attr("aria-hidden", "false");
// 			    $('#deptmembermodify').modal({backdrop: 'static'});
// 			    $("#deptmembermodify").modal("show");
// 			}
			
    	
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
	
	
		
		
// 		$("td").on("click", "div button", function() {
			
// 			var a = $(this).data("dno");
			
// 			var info = $(this).parent();
			
// 			var dno = info.attr("data-dno");
			
// 			var deptname = info.attr("data-dname");
			
			
// 			if($(this).attr("id") == "mod" + a) {
				
// 				$("body").attr("class", "modal-open");
// 			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
// 			    $("#dnamemod").val(deptname);
// 			    $("#hidemodify").val(a);
// 			    $("#deptmodify").attr("class", "modal fade show");
// 			    $("#deptmodify").attr("aria-modal", "true");
// 			    $("#deptmodify").attr("aria-hidden", "false");
// 			    $('#deptmodify').modal({backdrop: 'static'});
// 			    $("#deptmodify").modal("show");
// 			} else if ($(this).attr("id") == "del" + a) {
// 				$("body").attr("class", "modal-open");
// 			    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
// 			    $("#hideremove").val(a);
// 			    $("#deptremove").attr("class", "modal fade show");
// 			    $("#deptremove").attr("aria-modal", "true");
// 			    $("#deptremove").attr("aria-hidden", "false");
// 			    $('#deptremove').modal({backdrop: 'static'});
// 			    $("#deptremove").modal("show");
// 			}
			
// 		})
		
	    	
// 		$("#deptregbtnok").on("click", function() {
// 			alert("새로운 부서가 등록되었습니다.")
// 		});
		
// 		$("#deptmodbtnok").on("click", function() {
// 			alert("부서명이 수정 되었습니다.")
// 		});
		
// 		$("#deptdelbtnok").on("click", function() {
// 			alert("부서가 삭제 되었습니다.")
// 		});
	    
	    
	});
    

    </script>
</body>

</html>