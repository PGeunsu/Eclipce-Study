<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function CheckForm(){ //자바에서 value 값 호출방법(document.?.value)
		alert("아이디 : " + document.loginForm.id.value + "\n" +
			"비밀번호 " + document.loginForm.passwd.value);
	}
</script>
</head>
<body>
	<form name ="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p><input type="submit" value="전송" onclick="CheckForm()"></p>
	</form>
</body>
</html>