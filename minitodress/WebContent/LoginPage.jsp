<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css);


	body,div {
		margin: 0px;
		pading: 0px;

	}
	
	h3 {
		margin-bottom: 60px;
		font-size: 30px;
		text-align: center;
		margin-right: 100px;
	
	}
	.login_div {
		/* border: 1px solid; */
		width: 300px;
		height: 450px; 
	    margin: 0 auto;
      	padding-top: 10px;
	    padding-left: 110px; 
	    padding-bottom: 100px; 
	    background-color:#99ccff;
  		border-radius: 10px;
	}

	.nav_opt {
		/* border: 1px solid red; */
		text-align: right;
	    font-size:18px;
	    background-color: #d3e0f7;
	    margin-bottom: 90px;
	    height: 40px;   
	}
    
    .nav_a{
		text-decoration: none;
		word-spacing: 5px;  /* 단어 사이 간격조절*/
		margin-right: 30px;
	    line-height: 40px;
	    font-family: 'Nanum Pen Script', serif;
	
	}
    
    input {
    	padding-right: 50px;
    	height: 30px;
        margin-bottom: 50px;
    }
	
	.but{
		margin-top: 48px;
		margin-bottom: 10px;
		border: 1px solid;
	    display: inline-block;
		width: 200px;
		height: 30px;
		line-height: 33px;
		text-align: center;
		background-color: #d8e9ef;
		border-radius: 3px;
		text-decoration: none;
	  	font-family: 'Nanum Pen Script', serif;
	    font-size: 39px; 
	}
	.find_idpw {
		
		text-decoration: none;
		display: inline-block;
	
	}
	
	.find_pp {
		display: inline-block;
		text-decoration: none;
		margin-top: 30px; 
	}
</style>
<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).on("click", ".but", function(){
		var
		form = $("#form_login"),
		id = $("#input_id"),
		pw = $("#input_pw");
		form.submit();
	});



</script>
</head>
<body>

<%@include file ="header.jsp" %>

<div>	

<form action="MiniLogin"  name = "MiniLogin" id="form_login" method= "post">
	<div class="login_div">
		<h3> 루비 쇼핑몰 </h3>
		<input type="text" placeholder="아이디" name="login_id" id="input_id"><br>
		<input type="password" placeholder="비밀번호"  name="login_pw" id= "input_pw"><br>
		 <a href="#" class="but">로그인</a>
		 <a href="contract.jsp" class="but">회원가입  </a>
      <div class="find_idpw" >
      		<a href="#"  class="find_pp">아이디 찾기</a>
            <a href="#"  class="find_pp">비밀번호 찾기</a>
      </div>
	</div>
</form>
      
    
</div>

</body>
</html>