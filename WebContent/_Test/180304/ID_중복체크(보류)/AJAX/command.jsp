<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbinfo.jspf" %>
<%
	//���۵� �����Ϳ� ���� ���ڵ� ó��
	request.setCharacterEncoding("utf-8");
	//���۵� ������ ��ȯ
	String id = request.getParameter("id");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	try{
		Class.forName(driverName);
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		
		sql = "select id from people where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){	//id ����
%>
		{
			"result":"success",
			"id":"idDuplicated"
			
		}
<%			
		}else{	//id ������
%>
		{
			"result":"success",
			"id":"idNotFound"
		}
<%			
		}
		
	}catch(Exception e) {
%>
	{	"result":"failure"	}
<%
		e.printStackTrace();
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException e){}
		if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
		if(conn!=null)try{conn.close();}catch(SQLException e){}
	}
	
%>