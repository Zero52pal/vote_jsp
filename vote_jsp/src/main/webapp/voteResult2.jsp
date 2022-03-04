<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.Random"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote Result</title>
</head>
<style>
        .ratio{padding-top:20px  }
        .ratio li{float:center;position:relative;width:100px;height:300px;margin-right:10px;list-style:none}
        .ratio div{position:absolute;left:0;bottom:0;width:100%; repeat;}
        .ratio em{position:absolute;top:-30px;width:100%;font-size:20px;font-weight:bold;text-align:center}
    </style>
<body>
	<%
	  	Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		int sum = 0;
		Random r= new Random(); 
		String rgb;
		

		
	
	  try{
		 String jdbcUrl = "jdbc:mysql://18.205.188.103:3306:3306/test?&useSSL=false";
	     String dbId = "lion";
	     String dbPass = "1234";
		
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
		 out.println("DB에 연결되었습니다.");
		 
		 String sql = "select * from candidate";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

	  }catch(Exception e){ 
		 e.printStackTrace();
	  }
	%>
	<form method=post action="testPage.jsp">
		<table width="80%" border="1" align="center" cellpadding="10"
			cellspacing="1">
			<tr>
				<td colspan="5"><h1 align="center">투표 결과</h1></td>
			</tr>
			<tr>
			
			
			
			<td <%-- bgcolor="<%=rgb%>" --%>>
				<ul class="ratio">
						<li>
							<%
							rgb = "#"+Integer.toHexString(r.nextInt(255*255*255));
							%>
							<div style="height: 30%; background-color:<%=rgb%>" >
								<em>30</em>
							</div>
						</li>
					</ul>
				</td>
				
				
				<td>
				<ul class="ratio">
						<li>
							<%
							rgb = "#"+Integer.toHexString(r.nextInt(255*255*255));
							%>
							<div style="height: 30%; background-color:<%=rgb%>" >
								<em>30</em>
							</div>
						</li>
					</ul>
				</td>
				<td>
				<ul class="ratio">
						<li>
							<%
							rgb = "#"+Integer.toHexString(r.nextInt(255*255*255));
							%>
							<div style="height: 30%; background-color:<%=rgb%>" >
								<em>30</em>
							</div>
						</li>
					</ul>
				</td>
				<td>
				<ul class="ratio">
						<li>
							<%
							rgb = "#"+Integer.toHexString(r.nextInt(255*255*255));
							%>
							<div style="height: 30%; background-color:<%=rgb%>" >
								<em>30</em>
							</div>
						</li>
					</ul>
				</td>
				<td>
				<ul class="ratio">
						<li>
							<%
							rgb = "#"+Integer.toHexString(r.nextInt(255*255*255));
							%>
							<div style="height: 30%; background-color:<%=rgb%>" >
								<em>30</em>
							</div>
						</li>
					</ul>
				</td>
			
			
			
			
		</tr>
		
			<tr align="center" >
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