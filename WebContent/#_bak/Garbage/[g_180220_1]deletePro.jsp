<!-- Story_Blog Delete Pro -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.db.UserDBBean"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<%
	String listid = request.getParameter("listid");
	if (listid==null) listid = "1";
	String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum == "") {
			pageNum = "1";
		}
%>
<%
	String email = request.getParameter("email");
	UserDBBean dbPro = UserDBBean.getInstance();
	/* dbPro.deleteUser(email, listid); */
	
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="Refresh" content="0; url=accountList.jsp?pageNum=<%=pageNum %>">

<title>Insert title here</title>
</head>
<body>
<% response.sendRedirect("accountList.jsp"); %>
	
	

</body>
</html>