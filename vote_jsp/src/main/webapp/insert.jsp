<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<h2 id="title">ȸ������</h2>
<hr size = "3px" color="black">
<style type="text/css">
	#title{
		color: black;
		font-weight : lighter;
		text-align: center;
	}
	
	#insert-window {
		background-color: #C7EBA7;
		margin: 40px 40px 40px;
		border-radius: 20px;
		padding: 20px 40px 40px;
		box-shadow: 0px 3px 20px rgb(0, 0, 0, 2);
	
	
		display: flex;
		justify-content: center;
		align-items: center;
	}
	

	
	
	
</style>

</head>

<body>


<div id = "insert-window">
<form method="post" action="insertJsp.jsp">
		
			<br>
			<br>
			<label for="name">�̸�</label>&nbsp&nbsp&nbsp&nbsp&nbsp
			<input type="text" name="name"/><br/><br>
			<label for="id">���̵�</label>&nbsp&nbsp&nbsp&nbsp&nbsp
			<input type="text" name="id"/><br/><br>
			<label for="password">��й�ȣ</label>&nbsp&nbsp
			<input type="text" name="pwd"/><br/><br>

		
		<!-- <a href="submit" class="button">&nbsp&nbsp&nbsp&nbsp����</a>
		<a href="reset" class="button">&nbsp&nbsp&nbsp&nbsp���</a> -->
		<input id="insert-button" type="submit" value="����">
		<input id="insert-button" type="reset" value="���"/>
	

</form>
</div>

</body>

</html>