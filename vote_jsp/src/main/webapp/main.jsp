<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.login-wrapp{
	background-color: #fdeafd;
	width: 600px;
	margin: 50px; auto;
	border-bottom: 1px solid #fdeafd;
	box-shadow: 0px 11px 31px rgb(0,0,0,0.2);
}

.login-top{
	background-color: #e32fe5;
	padding: 60px 0 120px;
	text-align: center;
}
.login-title{
	font-size: 30px;
	colot: #c92bcc;
	text-align: center;
	font-weight: 400;
}
.login-form{
	margin-top: 30px;
}

.login-box{
	background-color: #fdeafd;
	margin:-40px 40px 40px;
	border-radius: 20px;
	padding: 20px 40px 40px;
	box-shadow: 0px 3px 20px rgb(0,0,0,0.2);
}
.login-button{
	background-color: #e32fe5;
	width: 200px;
	display: block;
	margin-left:120px; 
	margin-top:30px;
	height: 70px;
	line-height: 70px;
	border-radius: 80px;
	color: #fdeafd;
	font-size: 16px;
	font-weight: 700;
}
</style>
</head>
<body>
		
	<div class="login-wrapp">
		<div class="login-top">
			<a href = "#" class="logo">
			<img src="https://www.poscoict.com/images/kor5/common/h1_posco.png">
			</a>
		</div>
		<div class="login-box">
			<h1 class="login-title">MAIN</h1>
				<a class="login-button" href="login.jsp">&emsp;&emsp;&emsp;&emsp;로그인</a>
				<a class="login-button" href="insert.jsp">&emsp;&emsp;&emsp;&emsp;회원가입</a>
		</div>
	</div>
</body>
</html>