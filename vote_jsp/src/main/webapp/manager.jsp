<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-image:url(https://www.poscoict.com/images/main/main_visual5.jpg);
}
.vote-button{
	background-color: #fdeafd;
	width: 200px;
	display: block;
	margin-left:10px; 
	margin-top:30px;
	height: 70px;
	line-height: 70px;
	border-radius: 80px;
	color: #e32fe5;
	font-size: 16px;
	font-weight: 700;
}
</style>
</head>
<body>
<div align="center">
	<button class="vote-button" type="button" onclick="location.href='voteStart.jsp' ">투표시작</button>
	<button class="vote-button" type="button" onclick="location.href='voteStop.jsp' ">투표마감</button>
	<button class="vote-button" type="button" onclick="location.href='voteResult.jsp' ">투표결과보기</button>
	<button class="vote-button" type="button" onclick="location.href='logout.jsp' ">로그아웃</button>
</div>
</body>
</html>