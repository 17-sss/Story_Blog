<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script type="text/javascript">
	        // �α׾ƿ� ��� JSP�� �̵�
	        function logoutPro(){
	            location.href="LogoutPro.jsp";
	       	 }
	 </script>
</head>
<body>
	<b><font size="5" color="skyblue">����ȭ���Դϴ�.</font></b><br><br>
    <%
        if(session.getAttribute("sessionID") == null) // �α����� �ȵǾ��� ��
        { 
            // �α��� ȭ������ �̵�
            response.sendRedirect("LoginForm.jsp");
        }
        else // �α��� ���� ���
        {
    %>
    <h2>
        <font color="red"><%=session.getAttribute("sessionID") %></font>
       	�� �α��εǾ����ϴ�.
    </h2>
    <br><br>
    <input type="button" value="�α׾ƿ�" onclick="logoutPro()" />
    
    <%} %>    
</body>
</html>