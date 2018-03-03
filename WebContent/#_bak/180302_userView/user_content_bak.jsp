<!-- 작성 글 뷰어. -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%                                                
    request.setCharacterEncoding("EUC-KR");
    
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");
    
    //콘솔 출력
    System.out.println("제목:"+subject);
    System.out.println("내용:"+content);    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 전체 틀 div ★ --> 
<div>&nbsp;
	<!-- form -->
	
	<form id="frm" action="user_content.jsp" method="post">
		<!-- 상단 바, 사이드 바 간격 -->
		<div style="margin-top:54px; margin-left: 10%;"><br>
			
			<!-- 양 옆 간격 -->
			<div style="margin-left: 13%; margin-right: 13%;">
				<!-- 작성 폼 -->
				<div class="w3-container w3-card w3-round w3-white">
				 	
					<div class="w3-container w3-card w3-round w3-white" style="margin: 5%;">
					
						<!-- 묶음 -->
						<div class="w3-border w3-margin">
							
							<!-- 일기장 분류 (select) -->
							<div class="w3-row w3-section w3-text-pink">
								<div class="w3-content">
				 					일기장 선택
									&nbsp;<input class="w3-input" name="diaryid" type="text">
								</div>
							</div>
	
							<!-- 제목 -->
							<div class="w3-row w3-section w3-text-pink">
								<div class="w3-content">
				 					제목 
									&nbsp;<input class="w3-input" name="subject" type="text" size="60" value="<%=subject %>">
								</div>
							</div>
							
							<!-- 날짜   -->
							<div class="w3-row w3-section w3-text-pink">
								<div class="w3-content">
				 					날짜
									&nbsp;<input class="w3-input" name="t_date" type="date">
								</div>
							</div>
							
							<!-- 내용 가져오기 -->
							<tr height="30">
								<td align="center" width="125">글내용</td>
								<td align="left" width="375" colspan="3">
								<pre><%=content %></pre></td>
							</tr>
							<%-- <div class="w3-row w3-section">
								<div class="w3-content">&nbsp;내용
									<div class="w3-input w3-border">
										<pre><%=content %></pre>
									</div>
								</div>
							</div> --%>
							
						</div>
						<!--end. 묶음 -->
						
						
						<!-- 전송 -->
						<div class="w3-center" style="margin: 1%;">	
							<input class="w3-button w3-blue" type="button" id="save" value="저장" />
							<input class="w3-button w3-yellow" type="button" value="취소" onClick = "history.back();"/>
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