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
	//사칙연산은 곱셈먼저.. +1은 맨나중에! 왼쪽에서부터 오른쪽으로 차례대로 계산
	int endRow = currentPage * pageSize;
	int count = 0;
	int number = 0;
	List usList = null;
	UserDBBean dbPro = UserDBBean.getInstance();
	count = dbPro.getUserCount(listid);
	//게시판에 있는 글 수 count
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
          <h3><%=listid%>(전체 회원 수:<%=count %>)</h3>
       </span>
       <p class="w3-left w3-padding-left-large">
       <!-- 돌아가기 만들기 -->
       <a href="<%=request.getContextPath() %>/Project/index.jsp">돌아가기</a> 
       </p>
       <%
       
       if(count==0){
          
       
       %>
       <div class="w3-center w3-container">
       		<p class="w3-pink">회원이 없습니다....</p>
       </div>
       <!-- <table class="table-bordered" width="1000">
       <tr class="w3-pink">
       <td align="center">회원이 없습니다..</td>
       
       </table> -->
       
       <% }else{ %>
       <table class="w3-table-all" width="900">
       <tr class="w3-pink w3-center">
       <td align="center" width="50">번호</td>
       <td align="center" width="100">회원 이메일</td>
       <td align="center" width="100">회원 비번</td>
       <td align="center" width="100">회원 이름</td>
       <td align="center" width="100">회원 Tel</td>
       <td align="center" width="100">회원 생일</td>
       <td align="center" width="100">가입일</td>
       <td align="center" width="100">IP</td>
       <td align="center" width="100">수정/삭제</td>
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
               		<!-- 수정 삭제 만들기  -->
  					<input type="submit" class="w3-button w3-white w3-hover-white" value="수정">
					<input type="button" class="w3-button w3-pink w3-hover-pink"
					value="삭제" onclick="document.location.href='deleteForm.jsp?num=<%=user.getNum()%>&pageNum=<%=pageNum%>'">
               		
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
			int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine; //곱셈, 나눗셈먼저.
			int endPage = startPage + bottomLine -1;
			if (endPage > pageCount) endPage = pageCount;
			if (startPage > bottomLine) { %>
			<a href="accountList.jsp?pageNum=<%= startPage - bottomLine %>">[이전]</a>
			<% } %>
			<% for (int i = startPage; i <= endPage; i++) { %>
			<a href="accountList.jsp?pageNum=<%=i%>"> <%
			if (i != currentPage) out.print("["+i+"]");
			else out.print("<font color='red'>["+i+"]</font>");%></a>
			<% }
				if(endPage < pageCount) {	%>
				<a href="accountList.jsp?pageNum=<%=startPage + bottomLine %>">[다음]</a>
				<% 
			}
		}
		
	%>
	

</div>
</body>
</html>
