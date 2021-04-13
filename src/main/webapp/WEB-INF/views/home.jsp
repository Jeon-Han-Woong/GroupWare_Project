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
	
	<c:choose>
		<c:when test="${empty login}">
		<section id="main-content">
      <section class="wrapper">
      	
      	<div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><strong><i class="icofont-login"></i>Log In</strong></h3>
          </div>
        </div>
      
          <form class="login-form" action="/login/loginPost" method="post">
            <div class="login-wrap">
              
              <div class="input-group text-center">
                <div class="alert alert-success fade in">
                  <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                  <h4><strong>Please Login!</strong></h4>
                  당신의 사원번호와 비밀번호를 입력하여 SIGN ME의 모든 서비스를 이용하세요!
                  
                </div>
              </div>
                <div class="input-group">
	                <span class="input-group-addon"><i class="icofont-pen-alt-1"></i></span>
	                <input type="text" name="mno" class="form-control" placeholder="UserNumber" autofocus>
                </div>
              <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" name="mpwd" class="form-control" placeholder="Password">
              </div>
              <label class="checkbox">
                      <input type="checkbox" name="useCookie"> Remember ME
                      <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
                  </label>
              <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
            </div>
          </form>
  </section>
  </section>
		</c:when>
		
		<c:when test="${!empty login}">
		<section id="main-content">
      <section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><strong><i class="fa fa-home"></i>메인</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i>메인</li>
            </ol>
          </div>
        </div>

            <div class="col-sm-6">
              <section class="panel">
                <header class="panel-heading"><a href="/profile/myinfo">프로필</a></header>
              
              <table class="table table-striped table-bordered">
                <tr>
                   <td rowspan=5 width="200px" height="250px">
                  
                   <div class="uploadDiv">
                   	<input type="file" name="uploadFile" multiple>
                   </div>
                   	<div id="uploadResult">
                   		<ul>
                   		
                   		</ul>
                   	</div>
                   	<button id="uploadBtn">사진 변경</button>
<!--                    <img src="/resources/img/myprofileimg.png" width="100%" height="100%" alt="프로필"> -->
                   </td>
                   <td>사번</td>
                   <td id="mymno" data-mno="${login.mno}">${login.mno}</td>
                 </tr>
                 <tr>
                   <td>이름</td>
                   <td>${login.mname}</td>
                 </tr>
                 <tr>
                   <td>부서</td>
                   <td>${login.deptname}</td>
                 </TR>
                 <tr>
                   <td>직급</td>
                   <td>${login.position}<br>
                 </tr>
               </table>
               </section>
                          </div>
                          <div class="col-sm-6">
          <section class="panel">
            <header class="panel-heading">
              <a href="/board/noticeList"> 공지사항</a>
            </header>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="text-center">분류</th>
                  <th class="text-center">제목</th>
                  <th class="text-center">작성자</th>
                  <th class="text-center">작성일</th>
                </tr>
              </thead>
              <tbody id="noticebody">
              </tbody>
            </table>
          </section>
        </div>
        <div class="col-sm-6">
          <section class="panel">
            <header class="panel-heading">
              <a href="/mymenu/mydocu?mno=${login.mno }">미결재 문서</a>
            </header>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="text-center">분류</th>
                  <th class="text-center">제목</th>
                  <th class="text-center">작성일</th>
                  <th class="text-center">결재상태</th>
                </tr>
              </thead>
              <tbody id="boardbody">
              </tbody>
            </table>
            </section>
            </div>
				<section>
<!-- 		달력			 -->
					
					
					
				</section>
			</section>
  </section>
		</c:when> 
	</c:choose>
    

 
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
		var mno = ${login.mno};
		
		$.getJSON("/home/notice", function(data) {
			var str = "";
			$(data).each(
				function() {
					var timestamp = this.nwrite_date;
					var date = new Date(timestamp);
					var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
					
					str += "<tr><td class='text-center'>" + this.fname + "</td><td class='text-center'>"
						+ this.ntitle + "</td><td class='text-center'>" + this.mname + "</td><td class='text-center'>"
						+ formattedTime + "</tr>";
					
				});
			$("#noticebody").html(str);
		});
		
		$.getJSON("/home/nosign/" + mno, function(data) {
			var str = "";
			
			$(data).each(
				function() {
					var timestamp = this.bwrite_date;
					var date = new Date(timestamp);
					var formattedTime = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
					
					str += "<tr><td class='text-center'>" + this.fname + "</td><td class='text-center'>"
						+ this.btitle + "</td><td class='text-center'>" + formattedTime + "</td>"
						+ "<td class='text-center'>결재반려</td></tr>";
					
			});
			$("#boardbody").html(str);
		})
		
		var regex = new RegExp("(.*?)\.(jpg|jpeg|png|PNG)$");
		var maxSize = 5242880;
		
		function checkExtension(fileName, fileSize) {
			if(fileSize >= maxSize) {
				alert("파일사이즈 초과");
				return false;
			}
			if(!regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}
		
		var cloneObj = $(".uploadDiv").clone();
		
		$("#uploadBtn").on("click", function(e) {
			
			var formData = new FormData();
			
			var inputFile = $("input[name='uploadFile']");
			console.log("여기부터 업로드된 파일 체크");
			console.log(inputFile);
			console.log("여기부터 업로드된 파일 체크");
			var files = inputFile[0].files;
			
			formData.append("uploadFile", files[0]);
			
			$.ajax({
				url: '/uploadAjaxAction',
				processData: false,
				contentType: false,
				data: formData,
				type: 'POST',
				dataType: 'json',
				success: function(result) {
					console.log(result);
					
					showUploadedFile(result);
					
					$(".uploadDiv").html(cloneObj.html());
					
				}
				
			});
		});
		
		var uploadResult = $("#uploadResult ul");
		
		function showUploadedFile(uploadResultArr) {
			var str = "";
// 			str += "<li>" + uploadResultArr[0].fileName + "</li>";

			var fileCallPath = encodeURIComponent(uploadResultArr[0].uploadPath
					+ "/" + uploadResultArr[0].uuid + "_" + uploadResultArr[0].fileName);
			
			str += "<li><img src='/display?fileName=" + fileCallPath + "'></li>";
	    	uploadResult.html(str);
		};
    
	
		
		
	});
    
    </script>

</body>

</html>
