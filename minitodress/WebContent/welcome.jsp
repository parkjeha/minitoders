<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- prefix="c" 변수를 c로 선언하겠다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv= "Refresh" content="3; url= Main.jsp"> <!-- 3초후 이동 url = 이동할 페이지명 -->
<title>회원가입을 환영합니다</title>
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	
	
	body,div {
		margin: 0px;
		padding: 0px;
	}
	
	.welcome_div {
	
	margin: 0 auto;
	}
	.welcome {
		border: 1px solid;
		width: 500px;
		height: 300px;
		margin: auto;
		text-align: center;
		line-height: 280px;
		font-family: 'Jeju Gothic', serif;
		font-size: 20px;
		margin-top: 280px; 
		border-radius: 10px;
	}

	.span_welcom {
		

	}
</style>



</head>
<body>

	<div class= "welcome_div">
	<c:forEach items="${shopname}" var="sname"> 
		<div class= "welcome">${sname} 님 회원가입을 환영합니다 <br>
			<span class= "span_welcom">3초후 메인페이지로 이동합니다</span>
		</div>
	</c:forEach>

	 </div>
</body>
</html>