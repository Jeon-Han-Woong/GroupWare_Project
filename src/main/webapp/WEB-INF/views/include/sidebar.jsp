<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icofont-ui-user"></i>
                          <span>내 정보</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="/profile/myinfo">내 정보</a></li>
              <li><a class="" href="/mymenu/mydocu?mno=${login.mno}">내 문서 열람</a></li>
              <li><a class="" href="/profile/messagebox">쪽지함</a></li>
            </ul>
          </li>
          <c:if test="${login.position == '부장' || login.position == '차장' || login.position == '과장'}">
           <li>
            <a class="" href="/sign/notSignList">
                        <i class="icofont-livejournal"></i>
                          <span>문서 결재</span>
                      </a>
          </li>
          </c:if>
           <c:if test="${login.position == '사원' || login.position == '대리' || login.position == '인턴'}">
           <li>
            <a class="" href="/sign/documentWrite">
                        <i class="icofont-letter"></i>
                          <span>문서 작성</span>
                      </a>
          </li>
          </c:if>
          <c:if test="${login.position == '부장' || login.position == '차장' || login.position == '과장'}">
          <li class="sub-menu">
            <a href="javascript:;" class="">
                        <i class="icofont-letter"></i>
                          <span>문서 작성</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="/board/noticeWrite">공지사항</a></li>
              <li><a class="" href="/sign/documentWrite">문서</a></li>
            </ul>
            
          </li>
          </c:if>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                        <i class="icofont-page"></i>
                          <span>게시판</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="/board/noticeList">공지사항</a></li>
              <li><a class="" href="/sign/signSuccessList">문서 열람</a></li>
            </ul>
          </li>
          <c:if test="${login.manager}">
          <li class="sub-menu">
            <a href="javascript:;" class="">
                        <i class="icofont-robot-face"></i>
                          <span>관리자 메뉴</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="/manage/personnel">인사 관리</a></li>
              <li><a class="" href="/manage/docu">문서 관리</a></li>
            </ul>
          </li>
          </c:if>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->