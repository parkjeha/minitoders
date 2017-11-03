<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function closeOk(){
	opener.document.frm_join.upw.focus();
	opener.document.frm_join.upw.value= "0";
	self.close();
}

function closeNg(){
	opener.document.frm_join.upw.select();
	opener.document.frm_join.upw.value= "1";
	self.close();
	
}

</script>



</head>
<body>
<%String id = request.getParameter("ckid"); %>
<%= id  %>
	<c:choose>
		<c:when test= "${idCount == '0' }">
		사용가능한 id 입니다.
		<button onclick="closeOk()">확인</button>
		
	
	</c:choose>
</body>
</html>