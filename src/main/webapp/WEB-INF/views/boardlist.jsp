<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>게시판 목록</title>

  <!-- 게시판 전용 CSS -->
  <link rel="stylesheet" href="resources/css/board.css" />
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
</head>
<body>
  <%@ include file="header.jsp" %>

  <main class="board-container">
    <h2>게시판 목록</h2>

    <div class="board-topbar">
      <button class="btn write-btn" onclick="location.href='boardwrite'">글쓰기</button>

      <form class="search-form" action="boardsearch.do" method="post">
        <!--  <input type="text" name="keyword" placeholder="검색어 입력" />
        <button type="submit" class="btn search-btn">검색</button>-->
      </form>
    </div>

    <table class="board-table">
      <thead>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>글쓴이</th>
          <th>조회수</th>
          <th>작성일</th>
        </tr>
      </thead>
      <tbody>
        <!-- 여기에 게시글 리스트가 동적으로 출력됩니다 -->
        <c:forEach items="${boardlist}" var="blist">
        <tr>
          <td>${totalCount-(blist.rnum -1)}</td>
          <td><a href="boardview?bnum=${blist.bnum}">${blist.btitle}</a></td>
          <td>${blist.memberDto.membername}</td>
          <td>${blist.bhit}</td>
          <td>${blist.bdate}</td>
        </tr>
        </c:forEach>
        <!-- 반복 출력 -->
      </tbody>
    </table>

    <div class="pagination">
    <c:if test="${pageNum > 1}">
      <a href="boardlist?pageNum=1" class="prev">&laquo;</a>
      <a href="boardlist?pageNum=${pageNum-1}" class="prev">&lsaquo;</a>
    </c:if>
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
	      <c:choose>
	      	<c:when test="${i == pageNum}">
	      		<a href="#" class="active">${i}</a>	
	      	</c:when>
	      	<c:otherwise>
	      		<a href="boardlist?pageNum=${i}">${i}</a>
	      	</c:otherwise>
	      </c:choose>
      </c:forEach>
     <c:if test="${pageNum<totalPage}">  
      <a href="boardlist?pageNum=${pageNum+1}" class="next">&rsaquo;</a>
      <a href="boardlist?pageNum=${totalPage}" class="next">&raquo;</a>
     </c:if> 
    </div>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>
