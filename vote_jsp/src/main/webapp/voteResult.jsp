<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote Result</title>
</head>
<style>
        .ratio{padding-top:20px}
        .ratio li{float:center;position:relative;width:100px;height:300px;margin-right:10px;list-style:none}
        .ratio div{position:absolute;left:0;bottom:0;width:100%;background:#D9AAF0 repeat;}
        .ratio em{position:absolute;top:-30px;width:100%;font-size:20px;font-weight:bold;text-align:center}
    </style>

<body>
	<form method=post action="testPage.jsp">
		<table width="80%" border="1" align="center" cellpadding="10"
			cellspacing="1">
			<tr>
				<td colspan="5"><h1 align="center">투표 결과</h1></td>
			</tr>
			
			<tr>
				<td>
					<ul class="ratio">
						<li>
							<div style="height: 30%">
								<em>100%</em>
							</div></li>
					</ul>
				</td>
				<td>
					<ul class="ratio">
						<li>
							<div style="height: 30%">
								<em>30%</em>
							</div></li>
					</ul>
				</td>
				<td>
					<ul class="ratio">
						<li>
							<div style="height: 30%">
								<em>30%</em>
							</div></li>
					</ul>
				</td>
				<td>
					<ul class="ratio">
						<li>
							<div style="height: 30%">
								<em>30%</em>
							</div></li>
					</ul>
				</td>
				<td>
					<ul class="ratio">
						<li>
							<div style="height: 30%">
								<em>30%</em>
							</div></li>
					</ul>
				</td>
				

			</tr>
			
			<tr class="ratio">
				<td>김익한</td>
				<td>이권철</td>
				<td>이동현</td>
				<td>이진선</td>
				<td>최호진</td>
				
			</tr>
		</table>
	</form>

</body>
</html>