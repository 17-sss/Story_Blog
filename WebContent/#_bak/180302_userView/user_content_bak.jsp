<!-- �ۼ� �� ���. -->
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
	<!-- form -->
	
	<form id="frm" action="user_content.jsp" method="post">
		<!-- ��� ��, ���̵� �� ���� -->
		<div style="margin-top:54px; margin-left: 10%;"><br>
			
			<!-- �� �� ���� -->
			<div style="margin-left: 13%; margin-right: 13%;">
				<!-- �ۼ� �� -->
				<div class="w3-container w3-card w3-round w3-white">
				 	
					<div class="w3-container w3-card w3-round w3-white" style="margin: 5%;">
					
						<!-- ���� -->
						<div class="w3-border w3-margin">
							
							<!-- �ϱ��� �з� (select) -->
							<div class="w3-row w3-section w3-text-pink">
								<div class="w3-content">
				 					�ϱ��� ����
									&nbsp;<input class="w3-input" name="diaryid" type="text">
								</div>
							</div>
	
							<!-- ���� -->
							<div class="w3-row w3-section w3-text-pink">
								<div class="w3-content">
				 					���� 
									&nbsp;<input class="w3-input" name="subject" type="text" size="60" value="<%=subject %>">
								</div>
							</div>
							
							<!-- ��¥   -->
							<div class="w3-row w3-section w3-text-pink">
								<div class="w3-content">
				 					��¥
									&nbsp;<input class="w3-input" name="t_date" type="date">
								</div>
							</div>
							
							<!-- ���� �������� -->
							<tr height="30">
								<td align="center" width="125">�۳���</td>
								<td align="left" width="375" colspan="3">
								<pre><%=content %></pre></td>
							</tr>
							<%-- <div class="w3-row w3-section">
								<div class="w3-content">&nbsp;����
									<div class="w3-input w3-border">
										<pre><%=content %></pre>
									</div>
								</div>
							</div> --%>
							
						</div>
						<!--end. ���� -->
						
						
						<!-- ���� -->
						<div class="w3-center" style="margin: 1%;">	
							<input class="w3-button w3-blue" type="button" id="save" value="����" />
							<input class="w3-button w3-yellow" type="button" value="���" onClick = "history.back();"/>
						</div>
						
					</div>
				</div>
				<!-- end. �ۼ��� -->
			</div>
			<!-- end. �� �� ���� -->
		</div>
		<!-- end. ��� ��, ���̵� �� ���� -->
	</form>
	<!-- end. form -->
	
</div>
<!-- end. ��ü Ʋ div �� --> 

</body>
</html>