<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>주문하기</title>
  <link rel="stylesheet" href="resources/css/header.css" />
  <link rel="stylesheet" href="resources/css/footer.css" />
  <link rel="stylesheet" href="resources/css/order.css" />
</head>
<body>

<%@ include file="header.jsp" %>

<main class="order-form-container">
  <h2>주문하기</h2>
  
  <form action="orderOk" method="post">
    <label for="ordername">상품 선택</label>
    <select id="ordername" name="ordername" required onchange="updatePrice()">
      <option value="">-- 상품을 선택하세요 --</option>
      <option value="TV">TV</option>
      <option value="PHONE">PHONE</option>
      <option value="PRINT">PRINT</option>
    </select>

    <label for="price">상품 금액</label>
    <input type="text" id="price" name="orderprice" readonly value="0원">

    <label for="quantity">수량</label>
    <input type="number" id="quantity" name="orderquantity" min="1" value="1" required>

    <label for="userid">주문자</label>
    <input type="text" id="userid" name="userid" value="${sessionScope.sessionId}" readonly>

    <div class="btn-group">
      <button type="submit" class="btn">주문하기</button>
      <button type="button" class="btn" onclick="location.href='main'">취소</button>
    </div>
  </form>
</main>

<%@ include file="footer.jsp" %>

<script>
  function updatePrice() {
    const prices = {
      TV: 20000,
      PHONE: 15000,
      PRINT: 10000
    };
    const select = document.getElementById('ordername');
    const priceInput = document.getElementById('price');
    const selected = select.value;

    if (selected && prices[selected]) {
    	 priceInput.value = prices[selected]; // 숫자만 넣음
    	    display.innerText = prices[selected].toLocaleString() + '원';
    	  } else {
    	    priceInput.value = 0;
    	    display.innerText = '0원';
    }
  }
  // 초기 로드 시 금액 표시
  window.onload = updatePrice;
</script>

</body>
</html>
