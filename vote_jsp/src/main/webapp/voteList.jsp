<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POSCO ICT 2th BitKing</title>
<link href="style.css" rel="stylesheet" type="text/css">

<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>

</head>
<body>
	<% String memberId = request.getParameter("memberId"); %>

	<h1 align="center"> 2기 반장선거 </h1>
	<h4 align="center"> (이 결과는 실제로 반영될 것입니다.) </h4>

	<form name="votelist_form" method="post" action="vote.jsp">
		<table style="width: 100%" >
			<tr>
				<th><img src="img/김익한.png" width=100 height=100></th>
				<th><img src="img/이권철.png" width=100 height=100></th>
				<th><img src="img/이동현.png" width=100 height=100></th>
				<th><img src="img/이진선.png" width=100 height=100></th>
				<th><img src="img/최호진.png" width=100 height=100></th>
			</tr>
			<tr align="center">
				<td>김익한</td>
				<td>이권철</td>
				<td>이동현</td>
				<td>이진선</td>
				<td>최호진</td>
			</tr>
			<tr align="center">
				<input type=hidden name="memberId" value=<%=memberId %>>
				<td><input type="radio" name="name" value="김익한"></td>
				<td><input type="radio" name="name" value="이권철"></td>
				<td><input type="radio" name="name" value="이동현"></td>
				<td><input type="radio" name="name" value="이진선"></td>
				<td><input type="radio" name="name" value="최호진"></td>
			</tr>
		</table>
		<input type="submit" value="투표" />
		<input type="button" value="결과" />
	</form>

</body>
</html>