<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<form method="post" action="loginJsp.jsp">
	<div class="login-wrapp">
		<div class="login-top">
			<a href = "#" class="logo">
			<img src="https://www.poscoict.com/images/kor5/common/h1_posco.png">
			</a>
		</div>
		<div class="login-box">
			<h1 class="login-title">LOGIN</h1>
			<ul class="login-form">
				<li>
					<strong class="login-guide">ID</strong>&ensp;&emsp;&emsp;&emsp;&emsp;
					<input type="text" name="id"/><br/>
				</li>
				<li>
					<strong class="login-guide">PASSWORD</strong>
					<input type="text" name="pwd"/><br/>
				</li>
			</ul>
			<input class="login-button" type="submit" value="로그인">
			<input class="login-button" type="button" value="뒤로가기" onclick="history.back(-1);">
		</div>
	</div>
	</form>
</body>
</html>