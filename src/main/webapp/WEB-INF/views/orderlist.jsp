<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>주문조회</title>
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
  <link rel="stylesheet" href="resources/css/orderlist.css" /> <%-- 주문조회 전용 CSS --%>
</head>
<body>
  <%@ include file="header.jsp" %>

  <main class="order-container">
    <h2>주문조회</h2>
    
    <table class="order-table">
      <thead>
        <tr>
          <th>주문번호</th>
          <th>상품명</th>
          <th>구매자</th>
          <th>주문일</th>
          <th>수량</th>
          <th>가격(원)</th>
          <th>삭제</th>
        </tr>
      </thead>
      <tbody>
        <c:set var="totalQty" value="0" />
        <c:set var="totalPrice" value="0" />
        
        <c:forEach var="order" items="${orderList}">
          <tr>
            <td>${order.orderid}</td>
            <td>${order.ordername}</td>
            <td>${order.membername}</td>
            <td><fmt:formatDate value="${order.orderdate}" pattern="yyyy-MM-dd" /></td>
            <td>${order.orderquantity}</td>
            <td><fmt:formatNumber value="${order.orderprice}" type="currency" currencySymbol="" groupingUsed="true" /></td>
 			 <td>
              <form action="orderDelete" method="post" onsubmit="return confirm('정말 삭제하시겠습니까?');">
                <input type="hidden" name="orderid" value="${order.orderid}" />
                <input type="submit" value="삭제" />
              </form>
            </td>         
          </tr>
          <c:set var="totalQty" value="${totalQty + order.orderquantity}" />
          <c:set var="totalPrice" value="${totalPrice + order.orderprice}" />
        </c:forEach>

        <c:if test="${empty orderList}">
          <tr>
            <td colspan="6">주문 내역이 없습니다.</td>
          </tr>
        </c:if>
      </tbody>
      <tfoot>
        <tr>
          <td colspan="4" style="text-align:right; font-weight:bold;">총 합계</td>
          <td style="font-weight:bold;">${totalQty}</td>
          <td style="font-weight:bold;"><fmt:formatNumber value="${totalPrice}" type="currency" currencySymbol="" groupingUsed="true" /></td>
        </tr>
      </tfoot>
    </table>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>
