<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet"   href="./resources/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
   <jsp:include page="menu.jsp" />
   
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">
            상품목록
         </h1>
      </div>
   </div>
      
   <div class="container">
      <div class="row" align="center">
      <%@ include file ="dbconn.jsp" %>
         <%
         	String sql = "select * from product"; //product 조회
         	pstmt = conn.prepareStatement(sql); //slecet 문을 사용하여 얻어온 레코드 값을 테이블 형태로 저장
         	rs = pstmt.executeQuery();
         	while(rs.next()){
         %>
         
         <div class="col-md-4">
                        
            <img src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("p_fileName")%>"
            style="width:100%">
            <h3><%=rs.getString("p_name")%></h3>
            <p><%=rs.getString("p_description")%>
            <p><%=rs.getString("p_UnitPrice")%>원
            <!-- Product 의 객체 타입의 변수 product에 저장된 상품명, 상품 상세정보, 상품 가격 등을 출력-->
            <p><a href="./product.jsp?id=<%=rs.getString("p_id")%>" 
            class="btn btn-secondary" role="button"> 상세정보 &raquo;</a>
         </div>
          <%
            }
          if(rs != null){
          	rs.close();
          }
          if(pstmt != null){
            	pstmt.close();
            }
          if(conn != null){
            	conn.close();
            }

        %>
      </div>
         
         
      </div>
      <hr>  
   <jsp:include page="footer.jsp"/>
</body>
</html>




