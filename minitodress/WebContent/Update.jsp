<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	body, div {
		margin: 0;
		padding: 0;
	}
	
	.nav_opt {
		/* border: 1px solid red; */
		text-align: right;
	    font-size:18px;
	    background-color: 	#d3e0f7;
	    margin-bottom: 50px;
	    height: 40px;   
	}
	
	.nav_a{
		text-decoration: none;
		word-spacing: 5px;  /* 단어 사이 간격조절*/
		margin-right: 30px;
	    line-height: 40px;
	}
	
	.div_login {
		border: 1px solid black;
		width: 700px;
		height:500px;
		margin: 0 auto;
		border-collapse: collapse; 
		margin-top: 100px;
		margin-bottom: 100px;
	}
	
	.po_th  {
		border: 1px solid;
		width: 120px;
		text-align: left;
		background-color: blue;
		padding-right: 3px;
		padding-left: 10px;
		background-color: #fbfafa;
	}

	.po_td {
		border: 1px solid;
		padding-left: 7px;
		height: 50px; 
		background-color: #F8FAFF;
	}

	.input_login {
		height: 20px;
	    padding-right: 30px;
	
	}

	.div_button {
		width: 200px;
		/* border: 1px solid black; */
		margin: 0 auto;
	   	margin-top: 50px;
	}
	
	.btn {
		border: 1px solid;
		width: 80px;
		height: 30px;
		text-align: center;
		display: inline-block;
		text-decoration: none;
		border-radius: 5px;
		line-height: 30px;
		background-color: black;
		color: white;
	}
	
	.Mini_h3 {
	
		margin: auto;
		
	}
	#sample6_postcode {
		height: 20px;
		padding-right: 30px;
	
	}
	#sample6_address {
		height: 20px;
		padding-right: 30px;
	
	}
	#sample6_address2 {
		height: 20px;
		padding-right: 30px;
	
	}
</style>

</head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>

<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).on("click", "#btn_submit", function(){
		
	var form =$("#update_action");
	form.submit();
		

	});


</script>

<body>
	<div>
	<%@include file= "header.jsp" %>
	<div class="Mini_h3">
		<h3> 회원정보 수정 </h3>
	</div>
	
	
	<form action="MiniUpdate" id="update_action" method= "post">
		
		<table class="div_login">
			  <tr>
				<th class= "po_th">아이디</th>
				<td class= "po_td"><input class="input_login"  id="input_id"  name= "updateid"  type= "text"  value="${sessionScope.loginUser.shopid}"  readonly ></td>
			    
			  </tr>
		 	  
		 	  <tr>
				<th class= "po_th">비밀번호</th>
				<td class= "po_td"><input class="input_login" id="input_pw1"  name="updatepw"  type= "password" ></td>
			  </tr>
		
		 	  <tr>
				<th class= "po_th">비밀번호 확인</th>
				<td class= "po_td"><input class="input_login" id="input_pw2"  name="updatepw2"  type= "password"></td>
			  </tr>
		
		 	  <tr>
				<th class= "po_th">이름</th>
				<td class= "po_td"><input class="input_login"  id="input_name"  name="updatename"  type= "text"  value="${sessionScope.loginUser.shopname}"></td>
			  </tr>
		
			  <tr>
				<th class= "po_th">주소</th>
				<td class= "po_td"><input type="text" id="sample6_postcode" name="updatezipnum" value="${sessionScope.loginUser.shopzipnum}" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" name="updateaddres1" placeholder="주소" value="${sessionScope.loginUser.shopaddres1}" >
					<input type="text" id="sample6_address2" name="updateaddres2"  placeholder="상세주소" value="${sessionScope.loginUser.shopaddres2}" >
				</td>
			  </tr>
		
			  <tr>
				<th class= "po_th">Email</th>
				<td class= "po_td"><input class="input_login"  id="input_email" name="updateemail"  type= "text"  value=  "${sessionScope.loginUser.shopemail}"> 
			  </tr>
			  
			  <tr>
				<th class= "po_th">핸드폰번호</th>
				<td class= "po_td"><input class=input_login  id="input_phone" name= "updatephone"  type= "text" value="${sessionScope.loginUser.shopphone}"></td>
			  </tr>
		
			</table>
	
		
		
		<div class= "div_button" >
	     	<a href="#"  class="btn" id= "btn_submit">회원수정</a> 
	     	<a href="Main.jsp" class="btn" id= "btn_cancle">취소</a>
	     </div>
	</form>
	</div>  
</body>
</html>