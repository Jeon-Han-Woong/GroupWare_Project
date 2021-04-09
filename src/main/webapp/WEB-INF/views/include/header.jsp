<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="/" class="logo">SIGN <span class="lite">ME</span></a>
      <!--logo end-->

      <div class="top-nav notification-row">
<!--         notificatoin dropdown start -->
        <ul class="nav pull-right top-menu">

<!--           task notificatoin start -->
<!--           <li id="task_notificatoin_bar" class="dropdown"> -->
<!--             <a data-toggle="dropdown" class="dropdown-toggle" href="#"> -->
<!--                             <i class="icon-task-l"></i> -->
<!--                             <span class="badge bg-important"></span> -->
<!--                         </a> -->
<!--             <ul class="dropdown-menu extended tasks-bar"> -->
<!--               <div class="notify-arrow notify-arrow-blue"></div> -->
<!--               <li> -->
<!--                 <p class="blue">You have 6 pending letter</p> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                   <div class="task-info"> -->
<!--                     <div class="desc">Design PSD </div> -->
<!--                     <div class="percent">90%</div> -->
<!--                   </div> -->
<!--                   <div class="progress progress-striped"> -->
<!--                     <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%"> -->
<!--                       <span class="sr-only">90% Complete (success)</span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                   <div class="task-info"> -->
<!--                     <div class="desc"> -->
<!--                       Project 1 -->
<!--                     </div> -->
<!--                     <div class="percent">30%</div> -->
<!--                   </div> -->
<!--                   <div class="progress progress-striped"> -->
<!--                     <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%"> -->
<!--                       <span class="sr-only">30% Complete (warning)</span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                   <div class="task-info"> -->
<!--                     <div class="desc">Digital Marketing</div> -->
<!--                     <div class="percent">80%</div> -->
<!--                   </div> -->
<!--                   <div class="progress progress-striped"> -->
<!--                     <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"> -->
<!--                       <span class="sr-only">80% Complete</span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                   <div class="task-info"> -->
<!--                     <div class="desc">Logo Designing</div> -->
<!--                     <div class="percent">78%</div> -->
<!--                   </div> -->
<!--                   <div class="progress progress-striped"> -->
<!--                     <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%"> -->
<!--                       <span class="sr-only">78% Complete (danger)</span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                   <div class="task-info"> -->
<!--                     <div class="desc">Mobile App</div> -->
<!--                     <div class="percent">50%</div> -->
<!--                   </div> -->
<!--                   <div class="progress progress-striped active"> -->
<!--                     <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%"> -->
<!--                       <span class="sr-only">50% Complete</span> -->
<!--                     </div> -->
<!--                   </div> -->

<!--                 </a> -->
<!--               </li> -->
<!--               <li class="external"> -->
<!--                 <a href="#">See All Tasks</a> -->
<!--               </li> -->
<!--             </ul> -->
<!--           </li> -->
<!--           task notificatoin end -->
<!--           inbox notificatoin start -->
<!--           <li id="mail_notificatoin_bar" class="dropdown"> -->
<!--             <a data-toggle="dropdown" class="dropdown-toggle" href="#"> -->
<!--                             <i class="icon-envelope-l"></i> -->
<!--                             <span class="badge bg-important"></span> -->
<!--                         </a> -->
<!--             <ul class="dropdown-menu extended inbox"> -->
<!--               <div class="notify-arrow notify-arrow-blue"></div> -->
<!--               <li> -->
<!--                 <p class="blue">You have 5 new messages</p> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                                     <span class="photo"><img alt="avatar" src="/resources/img/avatar-mini.jpg"></span> -->
<!--                                     <span class="subject"> -->
<!--                                     <span class="from">Greg  Martin</span> -->
<!--                                     <span class="time">1 min</span> -->
<!--                                     </span> -->
<!--                                     <span class="message"> -->
<!--                                         I really like this admin panel. -->
<!--                                     </span> -->
<!--                                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                                     <span class="photo"><img alt="avatar" src="/resources/img/avatar-mini2.jpg"></span> -->
<!--                                     <span class="subject"> -->
<!--                                     <span class="from">Bob   Mckenzie</span> -->
<!--                                     <span class="time">5 mins</span> -->
<!--                                     </span> -->
<!--                                     <span class="message"> -->
<!--                                      Hi, What is next project plan? -->
<!--                                     </span> -->
<!--                                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                                     <span class="photo"><img alt="avatar" src="/resources/img/avatar-mini3.jpg"></span> -->
<!--                                     <span class="subject"> -->
<!--                                     <span class="from">Phillip   Park</span> -->
<!--                                     <span class="time">2 hrs</span> -->
<!--                                     </span> -->
<!--                                     <span class="message"> -->
<!--                                         I am like to buy this Admin Template. -->
<!--                                     </span> -->
<!--                                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#"> -->
<!--                                     <span class="photo"><img alt="avatar" src="/resources/img/avatar-mini4.jpg"></span> -->
<!--                                     <span class="subject"> -->
<!--                                     <span class="from">Ray   Munoz</span> -->
<!--                                     <span class="time">1 day</span> -->
<!--                                     </span> -->
<!--                                     <span class="message"> -->
<!--                                         Icon fonts are great. -->
<!--                                     </span> -->
<!--                                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="#">See all messages</a> -->
<!--               </li> -->
<!--             </ul> -->
<!--           </li> -->
          <!-- inbox notificatoin end -->
          <!-- alert notification start-->
          <c:if test="${!empty login}">
          <c:if test="${login.position == '과장' || login.position == '부장' || login.position == '차장' }">
          <li id="alert_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icofont-livejournal"></i>
                            <span class="badge bg-important" id="notSignBoard"></span>
                        </a>
            <ul class="dropdown-menu extended notification">
              <li>
                <p class="blue" id="newssign"></p>
              </li>
              <li>
              <h3>
                <a href="/sign/signStateList" id="newsBoard">
              
                                </a>
              </h3>
              </li>
            </ul>
          </li>
          </c:if>
          
          <li id="alert_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icofont-ui-messaging"></i>
                            <span class="badge bg-important" id="notChkMsg"></span>
                        </a>
            <ul class="dropdown-menu extended notification">
              <li>
                <p class="blue" id="news"></p>
              </li>
              <li>
              <h3>
                <a href="/profile/messagebox" id="newsDetail">
              
                                </a>
              </h3>
              </li>
            </ul>
          </li>
          </c:if>
          <!-- alert notification end-->
          <!-- user login dropdown start-->
          <li class="dropdown">
          	<c:choose>
          		<c:when test="${empty login}">
          			<a href="/login/loginmenu">
          				<span class="profile-ava">
          					<img alt="" src="/resources/img/notlogin.png">
          				</span>
          				<span class="username">&nbsp;Please Login</span>
          			</a>
          		</c:when>
          		<c:when test="${!empty login}">
          			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src=
                                <c:choose>
                                		<c:when test='${login.gender == 1}'>"/resources/img/male.png"</c:when>
                                		<c:when test='${login.gender == 2}'>"/resources/img/female.PNG"</c:when>
                                </c:choose>>
                            </span>
                            <span class="username">
								&nbsp;${login.mname}님 환영합니다.
                            </span>
                            <b class="caret"></b>
                     </a>
          		</c:when>
          	</c:choose>
          
            
            <ul class="dropdown-menu extended logout">
              <li class="eborder-top">
                <a href="/profile/myinfo"><i class="icon_profile"></i> My Profile</a>
              </li>
              <li>
                <a href="/sign/signSuccessList"><i class="icofont-document-folder"></i> My Document</a>
              </li>
              <li>
                <a href="/profile/messagebox"><i class="icofont-ui-messaging"></i>Message Box</a>
              </li>
              <li>
                <a href="/login/logout"><i class="icofont-logout"></i> Log Out</a>
              </li>
            </ul>
          </li>
        </ul>
          <!-- user login dropdown end -->
        <!-- notificatoin dropdown end-->
        
        <script type="text/javascript">
        $(document).ready(function() {
        var mno = ${login.mno};
	        function notReadMsg(){					
		        $.getJSON("/message/alert/" + mno, function(data) {
	       			if (data === 0) {
	       				$("#news").html("새로운 쪽지가 없습니다.")
	       				$("#notChkMsg").html("");
	       				$("#newsDetail").html("쪽지함으로 이동")
	       			} else {
	       				$("#news").html("새로운 쪽지가 있습니다.")
		       			$("#notChkMsg").html(data);
	       				$("#newsDetail").html("읽지 않은" + data + "개의 쪽지가 있습니다.");
	       			}
	       			
	       		})
			}
			notReadMsg();
			
			function notSignBoard(){					
		        $.getJSON("/message/sign/" + mno, function(data) {
	       			if (data === 0) {
	       				$("#newssign").html("결재가 필요한 문서가 없습니다.")
	       				$("#notSignBoard").html("");
	       				$("#newsBoard").html("문서 결재로 이동")
	       			} else {
	       				$("#newssign").html("결재가 필요한 문서가 있습니다.")
		       			$("#notSignBoard").html(data);
	       				$("#newsBoard").html("결재가 필요한 " + data + "개의 문서가 있습니다.");
	       			}
	       			
	       		})
			}
			notSignBoard();
			
		});
		
        </script>
        
      </div>
    </header>
    <!--header end-->