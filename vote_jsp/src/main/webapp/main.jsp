<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.vote-wrapp{
	background-color: #fdeafd;
	vertical-align: middle;
	width: 600px;
	margin: 50px; auto;
	border-bottom: 1px solid #fdeafd;
	box-shadow: 0px 11px 31px rgb(0,0,0,0.2);
	
}

.vote-top{
	background-color: #e32fe5;
	padding: 60px 0 120px;
	text-align: center;
}
.vote-title{
	font-size: 30px;
	colot: #c92bcc;
	text-align: center;
	font-weight: 400;
}
.vote-form{
	margin-top: 30px;
}

.vote-box{
	background-color: #fdeafd;
	margin:-40px 40px 40px;
	border-radius: 20px;
	padding: 20px 40px 40px;
	box-shadow: 0px 3px 20px rgb(0,0,0,0.2);
}
.vote-button{
	background-color: #e32fe5;
	width: 200px;
	display: block;
	margin-left:10px; 
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
	<div align="center">
	<div class="vote-wrapp">
		<div class="vote-top">
			<a href = "#" class="logo">
			<img src="https://www.poscoict.com/images/kor5/common/h1_posco.png">
			</a>
		</div>
		<div class="vote-box">
			<h1 class="vote-title">MAIN</h1>
				<button class="vote-button"onclick="location.href='login.jsp'">로그인</button>
				<button class="vote-button"onclick="location.href='insert.jsp'">회원가입</button>
		</div>
	</div>
	</div>
</body>
</html>