﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<!-- java-util.ArrayList 패키지 사용을 위해 page 디렉티브 태그의 import 속성을 작성 -->
<%@ page import="dto.Book"%>
<!-- 생성된 상품 클래스 dto.Product 패키지를 사용하기위해 page 디렉티브 태그의 import 속성을 작성-->
<jsp:useBean id="productDAO" class="dao.BookRepository" scope="session"/>
<!-- 자바빈즈로 생성한 ProducRepsitory 클래스를 사용하도록 useBean 액션 태그를 작성 -->
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				상품 목록
			</h1>
		</div>
	</div>
	<%
		ArrayList<Book> listOfBook = productDAO.getAllProducts();
	%>	
	<div class="container">
		<div class="row">
			<%
				for(int i = 0; i < listOfBook.size(); i++){
					Book Bookproduct = listOfBook.get(i);
						
				
			%>
			<div>
				<div class="col-md-12" >
					<p><h5><b>[<%=Bookproduct.getCategory()%>]<%=Bookproduct.getName()%></b></h5></p>
					<p style="padding-top:20px"><%=Bookproduct.getDescription().substring(0, 100)%>...</p>
					<p><%=Bookproduct.getAuthor()%> | <%=Bookproduct.getPublisher()%> | <%=Bookproduct.getUnitPrice()%>원</p>
				</div>
					<hr>
				<%
					}
				%>
			</div>
			
			
		</div>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>