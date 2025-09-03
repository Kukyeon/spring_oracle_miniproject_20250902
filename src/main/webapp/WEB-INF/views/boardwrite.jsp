<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시글 작성</title>
  <link rel="stylesheet" href="resources/css/board.css" />
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
</head>
<body>
  <%@ include file="header.jsp" %>

  <main class="board-container">
    <h2>게시글 작성</h2>

    <form action="boardwriteOk" method="post">
      <label for="btitle">제목</label>
      <input type="text" id="btitle" name="btitle" required />

      <label for="bcontent">내용</label>
      <textarea id="bcontent" name="bcontent" rows="10" required></textarea>

      <label for="bwriter">작성자</label>
      <input type="text" id="bwriter" name="bwriter" value="${sessionScope.sessionId}" readonly />

      <div class="btn-group">
        <button type="submit" class="btn">등록</button>
        <button type="button" class="btn" onclick="location.href='boardlist'">취소</button>
      </div>
    </form>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>
