<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <link rel="stylesheet" href="resources/css/user.css" />
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
</head>
<body>
<%@ include file="header.jsp" %>

<main class="user-container">
  <h2>회원가입</h2>
  <form action="joinOk" method="post">
    <label for="userid">아이디</label>
    <input type="text" id="memberid" name="memberid" required>

    <label for="password">비밀번호</label>
    <input type="password" id="memberpw" name="memberpw" required>

    <label for="username">이름</label>
    <input type="text" id="membername" name="membername" required>


    <div class="btn-group">
      <button type="submit" class="btn">가입하기</button>
      <button type="button" class="btn" onclick="location.href='login'">취소</button>
    </div>
  </form>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>
