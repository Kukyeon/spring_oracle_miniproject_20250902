<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>게시글 수정</title>

  <link rel="stylesheet" href="resources/css/board.css" />
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
</head>
<body>
  <%@ include file="header.jsp" %>

  <main class="board-container">
    <h2>게시글 수정</h2>

    <form action="boardeditprocess" method="post">
      <input type="hidden" name="bnum" value="${board.bnum}" />

      <label for="btitle">제목</label>
      <input type="text" id="btitle" name="btitle" value="${board.btitle}" required />

      <label for="bcontent">내용</label>
      <textarea id="bcontent" name="bcontent" rows="10" required>${board.bcontent}</textarea>

      <div class="btn-group">
        <button type="submit" class="btn">수정 완료</button>
        <button type="button" class="btn" onclick="location.href='boardview?bnum=${board.bnum}'">취소</button>
      </div>
    </form>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>
