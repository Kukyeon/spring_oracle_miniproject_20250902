<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>게시글 상세보기</title>

  <link rel="stylesheet" href="resources/css/board.css" />
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
</head>
<body>
  <%@ include file="header.jsp" %>

  <main class="board-container">
    <h2>게시글 상세내용</h2>

    <div class="view-box">
      <h3 class="view-title">${board.btitle}</h3>

      <div class="view-meta">
        <p><strong>글쓴이:</strong> ${board.bwriter}</p> <br>
        <p><strong>작성일:</strong> ${board.bdate}</p> <br>
        <p><strong>조회수:</strong> ${board.bhit}</p>
      </div>

      <hr />

      <div class="view-content">
        ${board.bcontent}
      </div>
    </div>

    <div class="btn-group">
    <c:choose>
    <c:when test="${sessionScope.sessionId == board.bwriter}">
      <button class="btn" onclick="location.href='boardedit?bnum=${board.bnum}'">수정</button>
      <button class="btn" onclick="if(confirm('정말 삭제하시겠습니까?')) { location.href='boarddelete?bnum=${board.bnum}' }">삭제</button>
	  <button class="btn" onclick="location.href='boardlist'">목록</button>		   
   </c:when>
   <c:otherwise>
   		<button class="btn" onclick="location.href='boardlist'">목록</button>	
   </c:otherwise>
    </c:choose>  
      
    </div>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>
