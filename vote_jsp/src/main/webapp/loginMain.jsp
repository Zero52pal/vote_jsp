<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%String memberId=(String)session.getAttribute("memberId"); %>
<ul>
	
	<li><a href="voteResult.jsp">투표율</a></li>
	<li><a href="voteList.jsp?memberId=<%=memberId %>">투표하기</a></li>   
	
	
</ul>
	<% session = request.getSession();
	out.print("안녕하세요 " + session.getAttribute("memberId") + "님"+ "<br>");
	
	%>
	<a href="logout.jsp">로그아웃</a>
<%-- 
	<%
	//FortuneServlet에서 "fortuneToday"라는 키값으로 담은 String type 얻어내기
	
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");

	
	%>

<p>안녕하세요:<strong><%=id%></strong></p>
--%>

</body>
</html>