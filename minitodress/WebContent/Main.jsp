<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- prefix="c" 변수를 c로 선언하겠다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css);
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);

 
	 body,div{
		
		margin: 0px; 
		padding: 0px;
	}
	
	
	#nav_book {
		text-align: left;
		line-height: 50px;
		
	}
	
	.nav_div{
		
		display: inline-block;
		text-align: center;	
		line-height: 50px;
		background-color:#D1B6E1;
		height: 60px; 
		width: 100%;
		padding: 0px;
	}
	
	.nav_li {
		list-style: none;
		float: left;
		margin-left: 80px;
		font-family: 'Nanum Pen Script', serif;
		font-size: 18px; 
		
	}
	
	.nav_opt {
		/* border: 1px solid red; */
		text-align: right;
		font-size: 18px;
		border-color: #d3e0f7;	
		background-color: #d3e0f7;
		margin-bottom: 20px;
		height: 60px;
		width: 100%;
	}
	
	.nav_a {
		text-decoration: none;
		word-spacing: 5px;
		margin-right: 30px;
		line-height: 50px;
		font-family: 'Nanum Pen Script', serif;
	}
	
	.main_d {
		margin-top:10px;
		text-align: center;
		font-size: 39px;
	    font-family: 'Jeju Hallasan', serif;
	    display: inline-block; 
	 	margin: auto;
	 	width: 100%
	}
	
	#rto {
		text-decoration: none;
		margin-bottom: 10px;
		}

	.he_ul {
	    list-style-type: none;
	    margin: 0;
	    padding: 0;
	    overflow: hidden;
	 	width:100%; 
	   
		}

	.dropdown, a {
	    text-align: center;
	    text-decoration: none;
		}
	
	li.dropdown {
	    display: inline-block;
		}
	
	.dropdown-content {
	    display: none;
	    position: absolute;
	    background-color: #f9f9f9;
	    min-width: 160px;
	    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	    z-index: 1;
		}
	
	.dropdown-content a {
	    color: black;
	    padding: 12px 16px;
	    text-decoration: none;
	    display: block;
	    text-align: left;
		}
	
	.dropdown-content a:hover {
		background-color: #f1f1f1;
		
		}
	
	.dropdown:hover .dropdown-content {
	    display: block;
		}
		
	.img_1, .img_2, .img_3 {
		float: left;
		margin-left: 30px;
	
		}
	.img_span {
	
		line-height: 30px;
	}
	
	.new_img_1, .new_img_2, .new_img_3 {
		float: left;
		margin-left: 30px;
	
		}
	.best_div {
		/* border: 1px solid; */
		margin-bottom: 30px;
	
	}
	
	.new_div {
	
		/* border: 1px solid; */
	}
	
	.p_best {
		/* border: 1px solid; */
		height: 380px;
	}
	
	.p_new {
		margin-top: 30px ;
		/* border: 1px solid; */
		height: 50px;	
		margin-bottom: 30px;
	
	}
	
	#best_span {
		font-size: 20px;
		display: inline-block;
		line-height: 50px;
	}
	
	#span_new {
	
		font-size: 20px;
		display: inline-block;
		line-height: 50px;
	
	}


</style>
</head>
<body>
	
	<div>
		<span id="nav_book">BOOKMARK+</span>
		 	
		<div class= "nav_opt">
	
		
		<ul class ="he_ul">
		
		<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
				<li class = "dropdown"><a href="LoginPage.jsp" class="nav_a"> 로그인</a></li>
				<li class = "dropdown"><a href="contract.jsp" class="nav_a"> 회원가입</a></li>
			</c:when>
			<c:otherwise>
				<a class="nav_a">${sessionScope.loginUser.shopid }(${sessionScope.loginUser.shopname})님 환영합니다.</a>
				<li class = "dropdown"><a href="LogoutPage" class="nav_a"> 로그아웃</a></li>
			</c:otherwise>
 	</c:choose>
			<li class = "dropdown"><a href="MiniUpdate" class="nav_a"> 마이페이지</a>
			 	<div class="dropdown-content">
				 	<a href="#">Link 1</a>
	      			<a href="#">Link 2</a>
	     			<a href="#">Link 3</a>
			 	</div>
			</li>
		</ul>
		</div>
 	</div>
		
		
		
		
	
	<div class="main_d">
		<a href="Main.jsp" id= "rto">루비</a>
	</div>
	
	<ul class = "nav_div">
		
		<li class = "nav_li"><a href = "#">신상</a></li>
		
		<li class = "nav_li"><a href = "#">베스트 100</a></li>
		
		<li class = "nav_li"><a href = "#">OUTER</a></li>
		
		<li class = "nav_li"><a href = "#">KINT</a></li>
		
		<li class = "nav_li"><a href = "#">TOP</a></li>
	
	</ul>
	<div>
		<div class = "best_div">
			<span id = "best_span">best 상품</span>
		</div>
		
		<div class="p_best">
			<div class = "img_1">
				<img src="img/b01.jpg"  width ="250"  height="250"> <br>
				<span class = "img_span">옷입니다</span><br>
				<span class = "img_span">$20,00</span>	
			</div>
			
			<div class ="img_2" >
				<img src="img/b02.jpg"  width ="250"  height="250"><br>
				<span class = "img_span">옷입니다</span><br>
				<span class = "img_span">$20,00</span>
			</div>
			
			<div class = "img_3">
				<img src="img/b03.jpg"  width ="250"  height="250" ><br>
				<span class = "img_span">옷입니다</span><br>
				<span class = "img_span">$20,00</span>			
			</div>
		</div>
		
			<div class="p_new">
					<span id = "span_new"> New 상품</span>
			</div>
	
	
	<div class="p_new2">
			<div class = "new_img_1">
				<img src="img/c01.jpg"  width ="250"  height="250"> <br>
				<span class = "img_span">옷입니다</span><br>
				<span class = "img_span">$20,00</span>	
			</div>
			
			<div class ="new_img_2" >
				<img src="img/c02.jpg"  width ="250"  height="250"><br>
				<span class = "img_span">옷입니다</span><br>
				<span class = "img_span">$20,00</span>
			</div>
			
			<div class = "new_img_3">
				<img src="img/c03.jpg"  width ="250"  height="250" ><br>
				<span class = "img_span">옷입니다</span><br>
				<span class = "img_span">$20,00</span>			
			</div>
		</div>
		
	
	</div>
</body>
</html>