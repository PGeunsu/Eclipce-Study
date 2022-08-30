<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<% 
 String userID = null;
   if(session.getAttribute("userID") != null){
      userID = (String)session.getAttribute("userID");
   }
   //메인페이지로 이동했을 때 세션에 값이 담겨져있는 지 체크
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
					<tr>
						<!-- 테스트 코드 -->
						<td>1</td>
						<td>안녕하세요</td>
						<td>홍길동</td>
						<td>2020-07-13</td>
						<th>
					</tr>
				</tbody>
			</table>
			<!-- 글쓰기 버튼 생성 -->
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>	
		
	</div>


<script src="http://code.jquery.com/jquery-3.6.0.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>