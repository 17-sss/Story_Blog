<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String ctx = request.getContextPath(); //���ؽ�Ʈ�� ������.
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SmartEditor</title>
<style type="text/css">
	.w3-input {
		padding: 8px;
		display: block;
		border: none;
		border-bottom: 1px solid #ccc;
		width: 98%;
	}
</style>

</head>
<body>
<!-- ��ü Ʋ div �� --> 
<div>&nbsp;
	<!-- form -->
	<form id="frm" action="insert.jsp" method="post">
		<!-- ��� ��, ���̵� �� ���� -->
		<div style="margin-top:54px; margin-left: 10%;"><br>
			
			<!-- �� �� ���� -->
			<div style="margin-left: 13%; margin-right: 13%;">
				<!-- �ۼ� �� -->
				<div class="w3-container w3-card w3-round w3-white">
				 	
					<div class="w3-container w3-card w3-round w3-white" style="margin: 5%;">
						
						<!-- ���� -->
						<div class="w3-row w3-section">
							<div class="w3-rest w3-input w3-border">
			 					����: 
								&nbsp;<input class="w3-border" name="subject" type="text" size="120">
							</div>
						</div>
						
				
						
						<!-- ���� (SE2) -->
						<div style="color: gray;">&nbsp;����
							<div class="w3-center">
								<textarea id="ir1" class="w3-input w3-border" rows="10" cols="30"
									style="width: 1050px; height: 350px;" name="content">
								</textarea>
							</div>
						</div>
						
						<!-- ���� -->
						<div class="w3-center" style="margin: 1%;">	
							<input class="w3-button w3-blue" type="button" id="save" value="����" />
							<input class="w3-button w3-yellow" type="button" value="���" />
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

