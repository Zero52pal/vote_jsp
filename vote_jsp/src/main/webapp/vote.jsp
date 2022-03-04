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
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
	
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		Connection con = null;
		ResultSet rs=null;
		
		
		String userId = request.getParameter("memberId");
		System.out.println(userId);
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://18.205.188.103:3306/test?&useSSL=false";
			con = DriverManager.getConnection(url, "lion", "1234");
			
			String sql1 = "select flag from user where id = ?";
			pstmt1 = con.prepareStatement(sql1);
			pstmt1.setString(1, userId);
			
			rs = pstmt1.executeQuery();
			rs.next();
			if(rs.getString("flag").equals("1")){
				out.println("<h1>중복 투표는 불가능합니다.</h1>");
				out.println("<a href='loginMain.jsp'>메인으로 가기</a>");
				return;
			}
			
			String sql2 = "update candidate set cnt=cnt+1 where name=?";


			pstmt2 = con.prepareStatement(sql2);
			
			pstmt2.setString(1, name);
			pstmt2.execute();
	        
			String sql3 = "update user set flag = 1 where id=?";

			pstmt3 = con.prepareStatement(sql3);
			
			pstmt3.setString(1, userId);
			pstmt3.execute();
			
			
			out.println("<h1>투표에 성공 하였습니다. 감사합니다</h1>");
		}catch(ClassNotFoundException ce){
			System.out.println(ce.getMessage());
			out.println("<h1>투표에 실패 하였습니다</h1>");
			out.println("<a href='loginMain.jsp'>메인으로 가기</a>");
		}catch(SQLException se){
			System.out.println(se.getMessage());
			out.println("<h1>투표에 실패 하였습니다</h1>");
			out.println("<a href='loginMain.jsp'>메인으로 가기</a>");
		}
		finally{

			try{
				if(rs!=null) rs.close();
				if(pstmt1!=null) pstmt1.close();
				if(pstmt2!=null) pstmt2.close();
				if(pstmt3!=null) pstmt3.close();
				if(con!=null) con.close();
			}catch(SQLException se){
				System.out.println(se.getMessage());
			}
		}
	%>
</body>
</html>