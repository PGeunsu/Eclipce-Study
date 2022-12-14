<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "java.io.PrintWriter" %>
 <%@ page import = "bbs.BbsDAO" %>
 <%@ page import = "bbs.Bbs" %>
 <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<style>
a, a:hover{
	color:#000000;
	text-decoration : none;
}
</style>
</head>
<body>
<% 
   //메인페이지로 이동했을 때 세션에 값이 담겨져있는 지 체크
 String userID = null;
   if(session.getAttribute("userID") != null){
      userID = (String)session.getAttribute("userID");
   }
   int pageNumber = 1; //기본적으로 1페이지 할당
   
  //만약 파리미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면 'Int' 타입으로 캐스팅해주고 그 값을 'pageNumeber' 변수에 저장
  if(request.getParameter("pageNumber") != null){
	  pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
  }
   
%>
  
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" 
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-ecpanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp"> JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
			//로그인 하지 않았을 때 보여지는 화면
			if(userID == null){
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="ture" aria-ecpanded="false">접속하기 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			
			<% //로그인 되어 있는 상태에서 보여주는 화면
			}else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="ture" aria-ecpanded="false">접속하기 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
			}
			%>
		</div>
	</nav>
	<!--게시판 메인 페이지 영역 시작 -->
	<div class="container">
		<div class="row">
			<table class="table table-striped" style = "text-align:center; border:1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color:#eeeeee; text-align:center">번호</th>
						<th style="background-color:#eeeeee; text-align:center">제목</th>
						<th style="background-color:#eeeeee; text-align:center">작성자</th>
						<th style="background-color:#eeeeee; text-align:center">작성일</th>	
			
					</tr>
				</thead>
				<tbody>
				<%
					BbsDAO bbsDAO = new BbsDAO(); //인스턴스 생성
					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
					for(int i = 0; i<list.size(); i++){
						
				%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><a href ="view.jsp?bbsID=<%=list.get(i).getBbsID()%>">
						<%=list.get(i).getBbsTitle()%></a></td>
						<td><%=list.get(i).getUserID()%></td>
						<td><%=list.get(i).getBbsDate().substring(0,11)%></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
				<!-- 페이징 처리 영역 -->
			     <%
	            if(pageNumber != 1){
	         %>
	         <a href="bbs.jsp?pageNumber=<%=pageNumber - 1 %>"
	          class="btn btn-success btn-arraw-left">이전</a>
	         <%}
	            if(bbsDAO.nextPage(pageNumber + 1)) {
	         %>
	         <a href="bbs.jsp?pageNumber=<%=pageNumber + 1 %>"
	          class="btn btn-success btn-arraw-left">다음</a>
	         <%
	            }
	         
	         %>
			<!-- 글쓰기 버튼 생성 -->
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>	
		
	</div>


<script src="http://code.jquery.com/jquery-3.6.0.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>