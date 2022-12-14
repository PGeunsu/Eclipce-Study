<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
   <%
   
   //세션은 현재 접속한 한 명의 회원에게 할당 되는 고유한 id, 웹 서버는 한 명의 회원을 세션 id로서 구분할 수 있다.
   //로그인을 하면 세션이 부여되어서 로그인을 하지 않았을떄와는 다른 화면 제공
   
   //현재 세션 상태를 체크한다.
   String userID = null;
   if(session.getAttribute("userID") != null){
      userID = (String)session.getAttribute("userID");
   }
   //만약 userID라는 세션이 존재 할경우 (로그인 되있는경우 ) 사용자에게 sessionID를 부여
   //이미 로그인했으면 다시 로그인을 할 수 없게 한다.
   if(userID != null){
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('이미 로그인이 되어 있습니다')");
         script.println("location.href='main.jsp'");
         script.println("</script>");
      }
   UserDAO userDAO = new UserDAO();
   int result = userDAO.login(user.getUserID(), user.getUserPassword());
   if(result == 1){
      // 로그인에 성공하면 세션을 부여
      session.setAttribute("userID", user.getUserID());
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('로그인 성공')");
      script.println("location.href='main.jsp'");
      script.println("</script>");
   }else if(result == 0){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('비밀번호가 틀립니다')");
      script.println("history.back()");
      script.println("</script>");
   }else if(result == -1){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('존재하지 않는 아이디입니다')");
      script.println("history.back()");
      script.println("</script>");
   }else if(result == -2){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('데이터베이스 오류입니다')");
      script.println("history.back()");
      script.println("</script>");
   }
   %>
</body>
</html>