<!-- �ۼ� �� ���. -->
<!-- �׽�Ʈ��. �����ͺ��̽� ���غҷ����°� �ƴ�. -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%                                                
    request.setCharacterEncoding("EUC-KR");
    
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");
    
    //�ܼ� ���
    System.out.println("����:"+subject);
    System.out.println("����:"+content);    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ��ü Ʋ div �� --> 
<div>&nbsp;

		<!-- ��� ��, ���̵� �� ���� -->
		<div style="margin-top:54px; margin-left: 10%;"><br>
			
			<!-- �� �� ���� -->
			<div style="margin-left: 13%; margin-right: 13%;">
				<!-- �ۼ� �� -->
				<div class="w3-container w3-card w3-round w3-white">
				 	<div class="w3-container w3-card w3-round w3-white" style="margin: 5%;">
						<table>	
							<tr height="30">
								<td align="center" width="125">�۳���</td>
								<td align="left" width="375" colspan="3">
									<pre><%=content%></pre>
								</td>
							</tr>
						</table>
					</div>
				</div>			
			</div>
			<!-- end. �� �� ���� -->
		</div>
		<!-- end. ��� ��, ���̵� �� ���� -->

	
</div>
<!-- end. ��ü Ʋ div �� --> 

</body>
</html>