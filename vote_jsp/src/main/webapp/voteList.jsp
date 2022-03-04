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
<title>POSCO ICT 당신의 선택은?</title>
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

	<h1 align="center"> 희망 근무지역 투표 </h1>

	<form name="votelist_form" method="post" action="vote.jsp">
		<table style="width: 100%" >
			<tr>
				<th><img src="https://www.poscoict.com/images/support/img_loc_go.png" width=100 height=100></th>
				<th><img src="https://www.poscoict.com/images/support/img_loc_ho.png" width=100 height=100></th>
				<th><img src="https://www.poscoict.com/images/support/img_loc_po.png" width=100 height=100></th>
				<th><img src="https://www.poscoict.com/images/support/img_loc_vi.png" width=100 height=100></th>
			</tr>
			<tr align="center">
				<td>광양</td>
				<td>포항</td>
				<td>판교</td>
				<td>베트남</td>
			</tr>
			<tr align="center">
				<input type=hidden name="memberId" value=<%=memberId %>>
				<td><input type="radio" name="name" value="광양"></td>
				<td><input type="radio" name="name" value="포항"></td>
				<td><input type="radio" name="name" value="판교"></td>
				<td><input type="radio" name="name" value="베트남"></td>
			</tr>
		</table>
		<input type="submit" value="투표" />
		<input type="button" value="결과" />
	</form>

</body>
</html>