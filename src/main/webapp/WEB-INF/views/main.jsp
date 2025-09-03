<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>ModernSite - 메인</title>

  <!-- 메인 전용 CSS -->
  <link rel="stylesheet" href="resources/css/main.css" />
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
</head>
<body>
  <%@ include file="header.jsp" %>

  <main class="main-container">
    <h1>ㅇㅇ상품</h1>
    <p><a href="order">주문 하러 가기 </a></p>
    <!-- 필요하면 메인 전용 컨텐츠 추가 -->
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>
