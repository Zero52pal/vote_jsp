<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%    
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter pw = response.getWriter();

      // 1. �Ķ���ͷ� ���۵� ���� ������.
      request.setCharacterEncoding("UTF-8");
      String name = request.getParameter("name");
      String id = request.getParameter("id");
      String pwd= request.getParameter("pwd");
   
		System.out.println(id);
      int n=0;
      PreparedStatement pstmt2 = null;
      PreparedStatement pstmt = null;
      Connection conn = null;
      ResultSet rs = null;

      try{
         // 2. ���۵� ���� db�� ����.
		 String jdbcUrl = "jdbc:mysql://18.205.188.103:3306/test?&useSSL=false";
	     String dbId = "lion";
	     String dbPass = "1234";
		
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
         
         
         
         String checksql = "select * from user where id=?";
         pstmt2 = conn.prepareStatement(checksql);
         pstmt2.setString(1, id);
         rs = pstmt2.executeQuery();
         while(rs.next()) {
            if(rs.getString(1).equals(id) == true) {
               pw.println("<html>");
               pw.println("<head></head>");
               pw.println("<body>");
               pw.println("���̵��ߺ� ���� ���Կ� �����߽��ϴ�.<br/>");
               pw.println("<a href='javascript:history.go(-1)'>������������ ����</a>");
               pw.println("</body>");
               pw.println("</html>");
               pstmt2.close();
               rs.close();
               return;
            }
            pstmt2.close();
            rs.close();
         }
         
         String sql = "insert into user values( ?,?,?,false, now() )";
            
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, id);
         pstmt.setString(2, pwd);
         pstmt.setString(3, name);

         //sql���� �����ϱ�
         n=pstmt.executeUpdate();


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

      // 3. �����(Ŭ���̾�Ʈ)�� ����� �����ϱ�.
      pw.println("<html>");
      pw.println("<head></head>");
      pw.println("<body>");

      if(n>0){
         pw.println( id + "��! ���������� ���ԵǾ����ϴ�.<br/>");
         pw.println("<a href='index.jsp'>���������� �̵�</a>");

      }else{
         pw.println("������ ���� ���Կ� �����߽��ϴ�.<br/>");
         pw.println("<a href='javascript:history.go(-1)'>������������ ����</a>");
      }   
      pw.println("</body>");
      pw.println("</html>");

%>
</body>
</html>