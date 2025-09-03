<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원정보 수정</title>
  <link rel="stylesheet" href="resources/css/user.css" />
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
</head>
<body>
<%@ include file="header.jsp" %>

<main class="user-container">
  <h2>회원정보 수정</h2>
  <form action="userinfoOk" method="post">
    <label for="userid">아이디</label>
    <input type="text" id="memberid" name="memberid" value="${member.memberid}" readonly>

    <label for="password">새 비밀번호</label>
    <input type="password" id="memberpw" name="memberpw">

    <label for="username">이름</label>
    <input type="text" id="membername" name="membername" value="${member.membername }">

    <div class="btn-group">
      <button type="submit" class="btn">수정하기</button>
      <button type="button" class="btn" onclick="if(confirm('정말 탈퇴하시겠습니까?')) location.href='userdelete'">회원탈퇴</button>
    </div>
  </form>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>
