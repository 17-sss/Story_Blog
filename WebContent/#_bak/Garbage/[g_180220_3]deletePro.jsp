<!-- UserDBBean Delete Pro -->
<%@page import="com.db.UserDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>

<%
	String listid = request.getParameter("listid");
	if (listid==null) listid = "1";
	String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum == "") {
			pageNum = "1";
		}
%>
<%-- <%
	int num = Integer.parseInt(request.getParameter("num"));
	String pwd = request.getParameter("pwd");
	UserDBBean dbPro = UserDBBean.getInstance();
	int check = dbPro.deleteUser(num, pwd, listid);
	if (check == 1) {
	%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="Refresh" content="0; url=accountList.jsp?pageNum=<%=pageNum %>">
	<%-- <% } else { %>
	<script language="JavaScript">
		alert("비밀번호가 맞지 않습니다.");
		history.go(-1);
	</script><% } %> --%>
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>