<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<style>
		body,h1 {font-family: "consolas", sans-serif}
		body, html {height: 100%}
		.bgimg {
		    background-image: url("img/back2_babypink.jpg");
		    min-height: 100%;
		    background-position: center;
		    background-size: cover;		
		}
		
		</style>
	<title>Story Blog - User</title>
</head>


<!-- Body - 전부: 배경, 모바일 대응 -->
<body class="bgimg w3-mobile">

<!-- ALL 상단바 -->
<div class="w3-bar" style="position: fixed;">
<!-- 상단바 -->
	<div class="w3-bar w3-black">
		<a href="http://kiss7.tistory.com/295" class="w3-bar-item w3-button w3-pink w3-hover-pink w3-right">Search</a>
	</div>
<!-- end. 상단바 -->

<!-- 타임라인바 -->
	<div class="w3-bar w3-white">
		<a href="#" class="w3-bar-item w3-button" style="width: 10%">&nbsp;</a>
		<div>
			<a href="<%=request.getContextPath() %>/view/user_timeline.jsp" class="w3-bar-item w3-button w3-pink w3-border-right" style="width: 15%; margin-left: 15%;">Timeline</a>
			<a href="<%=request.getContextPath() %>/view/user_gallery.jsp" class="w3-bar-item w3-button w3-pink w3-border-right" style="width: 15%;">Gallery</a>
			<a href="<%=request.getContextPath() %>/view/user_map.jsp" class="w3-bar-item w3-button w3-pink w3-border-right" style="width: 15%;">Map</a>
			<a href="<%=request.getContextPath() %>/view/user_calender.jsp" class="w3-bar-item w3-button w3-pink w3-border-right" style="width: 15%; margin-right: 15%;">Calendar</a>
		</div>
	</div>
<!-- end. 타임라인바 -->
</div>
<!-- end. ALL 상단바 -->

<!-- 사이드바 -->
	<div class="w3-sidebar w3-bar-block" style="width: 10%; position: fixed;"> 
			
			<div class="w3-container w3-center">
			
				<p class="w3-center w3-text-pink" style="font-size: 14pt;">
				<a href="<%=request.getContextPath() %>/view/user_main.jsp" style="text-decoration: none;">Story</a>
				</p>
				
			
			</div>
		
		<div class="w3-card w3-round w3-white">
        <h4 class="w3-center">My Profile</h4>
         <p class="w3-center"><img src="img/Kirby_logo.jpg" alt="kirbylogo" class="w3-circle" style="height:106px;width:106px"></p>
         <br>
      	</div>
      	
		<a href="#" class="w3-bar-item w3-button w3-hover-pink w3-border-bottom">Link 1</a>
		<a href="#" class="w3-bar-item w3-button w3-hover-pink w3-border-bottom">Link 2</a>
		<button class="w3-button w3-circle w3-pink w3-center w3-card-4" style="font-size: 15px; margin:38% 0% 0% 38%">+</button>
	</div>
<!-- end. 사이드바 -->

<!-- 캘린더 -->
	<div class="w3-col m7 w3-row" style="margin-left: 26%; margin-top: 5%;">
		<div class="w3-card w3-round w3-white">
		<p>캘린더</p>
		</div>
	</div>
<!-- end. 캘린더 -->
	


</body>
<!-- end. Body - 전부: 배경, 모바일 대응 -->

</html>