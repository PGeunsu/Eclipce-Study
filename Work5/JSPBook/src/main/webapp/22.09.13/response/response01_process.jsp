<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
 		request.setCharacterEncoding("utf-8");
 		String userid = request.getParameter("id");
 		//입력된 아이디와 비번을 폼문으로 부터 전송받도록 request 내장객체인 getParameter()메소드를 작성한다.
 		String password = request.getParameter("passwd");
 		
 		if(userid.equals("관리자") && password.equals("1234")){
 			response.sendRedirect("response01_success.jsp");
 		}else{
 			response.sendRedirect("response01_failed.jsp");
 		}
 	 %>
 	 
</body>
</html>