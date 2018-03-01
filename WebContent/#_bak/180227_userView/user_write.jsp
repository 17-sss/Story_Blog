<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String ctx = request.getContextPath(); //콘텍스트명 얻어오기.
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
<!-- 전체 틀 div ★ --> 
<div>&nbsp;
	<!-- form -->
	<form id="frm" action="insert.jsp" method="post">
		<!-- 상단 바, 사이드 바 간격 -->
		<div style="margin-top:54px; margin-left: 10%;"><br>
			
			<!-- 양 옆 간격 -->
			<div style="margin-left: 13%; margin-right: 13%;">
				<!-- 작성 폼 -->
				<div class="w3-container w3-card w3-round w3-white">
				 	
					<div class="w3-container w3-card w3-round w3-white" style="margin: 5%;">
						
						<!-- 제목 -->
						<div class="w3-row w3-section">
							<div class="w3-rest w3-input w3-border">
			 					제목: 
								&nbsp;<input class="w3-border" name="subject" type="text" size="120">
							</div>
						</div>
						
				
						
						<!-- 내용 (SE2) -->
						<div style="color: gray;">&nbsp;내용
							<div class="w3-center">
								<textarea id="ir1" class="w3-input w3-border" rows="10" cols="30"
									style="width: 1050px; height: 350px;" name="content">
								</textarea>
							</div>
						</div>
						
						<!-- 전송 -->
						<div class="w3-center" style="margin: 1%;">	
							<input class="w3-button w3-blue" type="button" id="save" value="저장" />
							<input class="w3-button w3-yellow" type="button" value="취소" />
						</div>
						
					</div>
				</div>
				<!-- end. 작성폼 -->
			</div>
			<!-- end. 양 옆 간격 -->
		</div>
		<!-- end. 상단 바, 사이드 바 간격 -->
	</form>
	<!-- end. form -->
	
</div>
<!-- end. 전체 틀 div ★ --> 
</body>
</html>

