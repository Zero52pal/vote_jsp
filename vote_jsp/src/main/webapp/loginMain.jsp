<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body{
background-image:url(https://www.poscoict.com/images/main/main_visual2.jpg);
}
.vote-wrapp{
	background-color: #fdeafd;
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
	color: #c92bcc;
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
<%String memberId=(String)session.getAttribute("memberId");
session = request.getSession();
%>
<div align="center">

<ul>
	<br/><br/>
	<h1 class="vote-title">안녕하세요 <%= session.getAttribute("memberId")%> 님</h1>
	
	<button class="vote-button" type="button" onclick="location.href='voteResult.jsp' ">투표율</button>
	<button class="vote-button" type="button" onclick="location.href='voteList.jsp?memberId=<%=memberId %>'">투표하기</button>
	<button class="vote-button" type="button" onclick="location.href='logout.jsp' ">로그아웃</button>
</ul>
</div>

</body>
</html>