﻿<%@ page contentType="text/html; charset=utf-8" %>
	<%@ page import="java.util.ArrayList" %>
		<!-- java-util.ArrayList 패키지 사용을 위해 page 디렉티브 태그의 import 속성을 작성 -->
		<%@ page import="dto.Product" %>
			<!-- 생성된 상품 클래스 dto.Product 패키지를 사용하기위해 page 디렉티브 태그의 import 속성을 작성-->
			<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" /> --%>
			<!-- 자바빈즈로 생성한 ProducRepsitory 클래스를 사용하도록 useBean 액션 태그를 작성 -->
			<%@ page import="dao.ProductRepository" %>
				<%@ page errorPage="exceptionNoProductId.jsp" %>
					<html>

					<head>
						<link rel="stylesheet" href="resources/css/bootstrap.min.css">
						<title>상품 상제 정보</title>
						<script type="text/javascript">
							function addToCart() {
								if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
									document.addForm.submit();
								} else {
									document.addForm.reset();
								}
							}
						</script>
					</head>

					<body>
						<jsp:include page="menu.jsp" />

						<div class="jumbotron">
							<div class="container">
								<h1 class="display-3">상품 정보</h1>
							</div>
						</div>
						<% String id=request.getParameter("id"); //상품 목록페이지로부터 전달되는 상품 아이디를 전송 받로고 request 내장 개체의 getParmeter() 메소드 작성 
							ProductRepository dao=ProductRepository.getInstance(); 
							Product product=dao.getProductById(id); //ProductRepository 클래스의 객체 변수 instance를 호출하는 getInstance()
							//메소드를 작성하고 이를 통해 getProductById(id) 메소드를 호출하여 반환 결과 값을 Product객체 타입의 변수 product에 저장 
							%>
							<div class="container">
								<div class="row">
									<div class="col-md-5">
										<img src="${pageContext.request.contextPath}/resources/images/<%=product.getFilename() %>"
											style="width:100%">
									</div>
									<div class="col-md-6">
										<h3>
											<%=product.getPname() %>
										</h3>
										<p>
											<%=product.getDescription() %>
										</p>
										<p><b>상품 코드 : </b><span class="badge badge-danger">
												<%=product.getProductId() %>
											</span></p>
										<p><b>제조사 : </b>
											<%=product.getManufacturer() %>
										</p>
										<p><b>분류 : </b>
											<%=product.getCategory() %>
										</p>
										<p><b>재고 수 : </b>
											<%=product.getUnitsInStock() %>
										</p>
										<h4>
											<%=product.getUnitPrice() %>원
										</h4>
										<p>
										<form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>"
											method="post">
											<p><a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
												<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
												<a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
											</p>
										</form>
									</div>
								</div>
								<!-- 33-40 Product객체 타입의 변수 Product에 저장된 상품명. 상품상세정보, 상품코드, 제조사, 분류, 재고 수, 상품가격등을 출력하도록 표현문 태그에 작성-->
							</div>
							<hr>
							<%@ include file="footer.jsp" %>
					</body>

					</html>