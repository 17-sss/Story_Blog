<%@page import="com.db.UserDBBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	//삭제할 아이디
	Connection con = null;
	PreparedStatement pstmt = null;
	String name = request.getParameter("name");
	int n=0;
	try{
		con = UserDBBean.getConnection();
		String sql="delete from userlist where name=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		n = pstmt.executeUpdate();
	}catch(SQLException se){
		System.out.println(se.getMessage());
	}finally{
		if(pstmt!=null) pstmt.close();
		if(con!=null) con.close();
	}
	response.sendRedirect("accountList.jsp");

%>

</body>

</html>



