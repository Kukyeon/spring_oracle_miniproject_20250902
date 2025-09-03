<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header">
  <div class="header-left">
    <a href="main" class="logo">ㅇㅇ상품</a>
  </div>
  <nav class="header-nav">
    <ul>
      <li><a href="main">홈</a></li>
      <li><a href="boardlist">게시판</a></li> 
      <li><a href="location">오시는길</a></li>
      <li class="login-menu">
  		<a href="login" id="loginBtn">
    	<c:choose>
     	<c:when test="${not empty sessionScope.sessionId}">
       	 	${sessionScope.sessionId}  <!-- 로그인한 사용자 이름 -->
	    </c:when>
	      <c:otherwise> 로그인 </c:otherwise>
		</c:choose>
		</a>
     <c:if test="${not empty sessionScope.sessionId}">
    	<!-- 로그인 했을 때만 슬라이드 메뉴 출력 -->
   	 <div class="slide-menu" id="slideMenu" style="display:none;">
      <a href="userinfo">정보수정</a>
      <a href="order">주문</a>
      <a href="orderlist">주문조회</a>
      <a href="logout">로그아웃</a>
   	 </div>
  	</c:if>
      </li>
    </ul>
  </nav>
</header>

<script>
  // 로그인 버튼 클릭 시 슬라이드 메뉴 토글
  document.addEventListener('DOMContentLoaded', function() {
    const loginBtn = document.getElementById('loginBtn');
    const slideMenu = document.getElementById('slideMenu');
    if(loginBtn && slideMenu) {
      loginBtn.addEventListener('click', function(e) {
        e.preventDefault();
        slideMenu.style.display = (slideMenu.style.display === 'none') ? 'block' : 'none';
      });
    }
  });
</script>
