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

	<h1 align="center"> 2기 반장선거 </h1>
	<h4 align="center"> (이 결과는 실제로 반영될 것입니다.) </h4>
	<table style="width: 100%" >
		<tr>
			<th><img src="김익한.png" width=100 height=100></th>
			<th><img src="이권철.png" width=100 height=100></th>
			<th><img src="이동현.png" width=100 height=100></th>
			<th><img src="이진선.png" width=100 height=100></th>
			<th><img src="최호진.png" width=100 height=100></th>
		</tr>
		<tr align="center">
			<td>김익한</td>
			<td>이권철</td>
			<td>이동현</td>
			<td>이진선</td>
			<td>최호진</td>
		</tr>
		<tr align="center">
			<td><input type="radio" name="name" value="김익한"></td>
			<td><input type="radio" name="name" value="이권철"></td>
			<td><input type="radio" name="name" value="이동현"></td>
			<td><input type="radio" name="name" value="이진선"></td>
			<td><input type="radio" name="name" value="최호진"></td>
		</tr>
	</table>
	<input type="submit" value="투표" />
	<input type="button" value="결과" >
	
</body>
</html>