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
		String id = request.getParameter("id");
		String pwd= request.getParameter("pwd");
		String name= request.getParameter("name");
		ResultSet rs = null;

		int n=0;
		PreparedStatement pstmt = null;
		Connection conn = null;
		try{
			String jdbcUrl = "jdbc:mysql://18.205.188.103:3306/test?&useSSL=false";
		    String dbId = "lion";
		    String dbPass = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
			String sql = "select * from user";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				if(id.equals(rs.getString("id"))) {
					if(pwd.equals(rs.getString("password"))){
						n=1;
						break;
					}
				}
			}

		}catch(ClassNotFoundException ce){
			System.out.println(ce.getMessage());
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}finally{
			try{
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(SQLException se){
				System.out.println(se.getMessage());
			}
		}
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();

		if(n>0){
			session = request.getSession();
			session.setAttribute("memberId", id);
			System.out.println(id);
			response.sendRedirect("loginMain.jsp");	
		}else{
			out.println("<a href='javascript:history.go(-1)'>이전페이지로 가기</a>");
		}
%>
</body>
</html>