<%@page import="com.db.UserDataBean"%>
<%@page import="java.util.List"%>
<%@page import="com.db.UserDBBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<% String listid = request.getParameter("listid");
	if (listid==null) listid = "1"; %>
<%
	int pageSize= 10;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null || pageNum =="") {
		pageNum = "1";
	}
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;  
	//��Ģ������ ��������.. +1�� �ǳ��߿�! ���ʿ������� ���������� ���ʴ�� ���
	int endRow = currentPage * pageSize;
	int count = 0;
	int number = 0;
	List usList = null;
	UserDBBean dbPro = UserDBBean.getInstance();
	count = dbPro.getUserCount(listid);
	//�Խ��ǿ� �ִ� �� �� count
	if (count > 0) {
		usList = dbPro.getUsers(startRow, endRow, listid); 
	}
	number = count - (currentPage - 1) * pageSize;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<title>Story Blog - Userlist</title>
</head>
<body>
 <p class="w3-left" style="padding-left:30px;">
    </p>
    
    <div class="w3-container">
       <span class="w3-center w3-small">
          <h3><%=listid%>(��ü ȸ�� ��:<%=count %>)</h3>
       </span>
       <p class="w3-left w3-padding-left-large">
       <!-- ���ư��� ����� -->
       <a href="<%=request.getContextPath() %>/Project/index.jsp">���ư���</a> 
       </p>
       <%
       
       if(count==0){
          
       
       %>
       <div class="w3-center w3-container">
       		<p class="w3-pink">ȸ���� �����ϴ�....</p>
       </div>
       <!-- <table class="table-bordered" width="1000">
       <tr class="w3-pink">
       <td align="center">ȸ���� �����ϴ�..</td>
       
       </table> -->
       
       <% }else{ %>
       <table class="w3-table-all" width="900">
       <tr class="w3-pink w3-center">
       <td align="center" width="50">��ȣ</td>
       <td align="center" width="100">ȸ�� �̸���</td>
       <td align="center" width="100">ȸ�� ���</td>
       <td align="center" width="100">ȸ�� �̸�</td>
       <td align="center" width="100">ȸ�� Tel</td>
       <td align="center" width="100">ȸ�� ����</td>
       <td align="center" width="100">������</td>
       <td align="center" width="100">IP</td>
       <td align="center" width="100">����/����</td>
       </tr>
 
       
       <% for (int i=0;i<usList.size();i++){
          UserDataBean user=(UserDataBean) usList.get(i);%>
          <tr height="30">
          <td align="center" width="50"><%=number-- %></td>
        	    <td align="center" width="100"><%=user.getEmail() %></td>
        	    <td align="center" width="100"><%=user.getPwd() %></td>
          		<td align="center" width="100"><%=user.getName() %></td>
             	<td align="center" width="100"><%=user.getTel() %></td>
             	<td align="center" width="100"><%=user.getBirth() %></td>
                <td align="center" width="100"><%=sdf.format(user.getCdate()) %></td>
                <td align="center" width="100"><%=user.getIp() %></td>
               	<td align="center" width="100">
               		<!-- ���� ���� �����  -->
  					<input type="submit" class="w3-button w3-white w3-hover-white" value="����">
					<input type="button" class="w3-button w3-pink w3-hover-pink"
					value="����" onclick="document.location.href='deleteForm.jsp?num=<%=user.getNum()%>&pageNum=<%=pageNum%>'">
               		
               	</td>
                
 
          </tr>
          <%} %>
       
       
       </table>
       <%} %>
       
       
    </div>
    
<div class = "w3-center">
	<% int bottomLine = 3; 
		if(count > 0) {
			int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine; //����, ����������.
			int endPage = startPage + bottomLine -1;
			if (endPage > pageCount) endPage = pageCount;
			if (startPage > bottomLine) { %>
			<a href="accountList.jsp?pageNum=<%= startPage - bottomLine %>">[����]</a>
			<% } %>
			<% for (int i = startPage; i <= endPage; i++) { %>
			<a href="accountList.jsp?pageNum=<%=i%>"> <%
			if (i != currentPage) out.print("["+i+"]");
			else out.print("<font color='red'>["+i+"]</font>");%></a>
			<% }
				if(endPage < pageCount) {	%>
				<a href="accountList.jsp?pageNum=<%=startPage + bottomLine %>">[����]</a>
				<% 
			}
		}
		
	%>
	

</div>
</body>
</html>
