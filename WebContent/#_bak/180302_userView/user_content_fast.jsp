<!-- 작성 글 뷰어. -->
<!-- 테스트용. 데이터베이스 통해불러오는게 아님. -->
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

		<!-- 상단 바, 사이드 바 간격 -->
		<div style="margin-top:54px; margin-left: 10%;"><br>
			
			<!-- 양 옆 간격 -->
			<div style="margin-left: 13%; margin-right: 13%;">
				<!-- 작성 폼 -->
				<div class="w3-container w3-card w3-round w3-white">
				 	<div class="w3-container w3-card w3-round w3-white" style="margin: 5%;">
						<table>	
							<tr height="30">
								<td align="center" width="125">글내용</td>
								<td align="left" width="375" colspan="3">
									<pre><%=content%></pre>
								</td>
							</tr>
						</table>
					</div>
				</div>			
			</div>
			<!-- end. 양 옆 간격 -->
		</div>
		<!-- end. 상단 바, 사이드 바 간격 -->

	
</div>
<!-- end. 전체 틀 div ★ --> 

</body>
</html>