<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="loginJsp.jsp">

	<fieldset id="regbox">

		<legend>로그인</legend>
	
		<label for="id">아이디</label>

		<input type="text" name="id"/><br/>

		<label for="pwd">비밀번호</label>

		<input type="password" name="pwd"/><br/>
		
		<input type="submit" value="로그인">

		<input type="reset" value="취소"/>
		
	</fieldset>
	
</form>
</body>
</html>