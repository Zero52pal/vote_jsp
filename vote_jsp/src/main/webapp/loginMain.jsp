<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<ul>

	<li><a href="loginMain.jsp">��ǥ��</a></li>
	<li><a href="loginMain.jsp">��ǥ�ϱ�</a></li>
	
</ul>
	<% session = request.getSession();
	out.print("�ȳ��ϼ��� " + session.getAttribute("memberId") + "��"+ "<br>"); %>
	<a href="logout.jsp">�α׾ƿ�</a>
<%-- 
	<%
	//FortuneServlet���� "fortuneToday"��� Ű������ ���� String type ����
	
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");

	
	%>

<p>�ȳ��ϼ���:<strong><%=id%></strong></p>
--%>

</body>
</html>