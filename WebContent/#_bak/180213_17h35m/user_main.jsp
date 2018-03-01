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
		/* 상단바 고정..? (떠있는 레이어) 
			#fixed_layer {
				position:fixed;
			    z-index:우선순위;
			    height:세로길이px;
			    width:가로길이%;
			    top:상하위치px;
			    left:좌우위치px;
			}
		*/
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


<!-- 전체보기 -->
<div class="w3-col m7" style="margin-left: 26%; margin-top: 1%;">
    <br><br><br><br>
    <!-- 하루 요약 / 글쓰기  -->
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">오늘 하루를 요약해보세요.</h6>
              	<input class="w3-input w3-border"  name="status" type="text" placeholder="하루의 끝">
              <br><button type="button" class="w3-button w3-theme w3-pink w3-right">글쓰기</button> 
            </div>
          </div>
        </div>
      </div>
     <!-- end. 하루 요약 / 글쓰기   -->
      
      <!-- 최신날짜가 위로 올라오게!!!! -->
      
      <!-- 일기 6 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018년 02월 07일 PM 11:55</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>너무 졸립다. 오늘도 수고했다</p>
       	<!-- 사진 추가 예시 -->
       	<div class="w3-row-padding" style="margin:0 -16px">
            <div class="w3-half">
              <img src="img/cat1.jpg" style="width:100%" alt="cat1" class="w3-margin-bottom">
            </div>
            <div class="w3-half">
              <img src="img/cat2.jpg" style="width:100%" alt="cat2" class="w3-margin-bottom">
          </div>
        </div>
        <!-- end. 사진 추가 예시 -->	
       
       </div>
       <!-- end. 일기 6  -->
       
      <!-- 일기 5 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018년 02월 07일 PM 11:55</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>너무 졸립다. 오늘도 수고했다</p>
       	<!-- 사진 추가 예시 -->
       	<div class="w3-row-padding" style="margin:0 -16px">
            <div class="w3-half">
              <img src="img/cat1.jpg" style="width:100%" alt="cat1" class="w3-margin-bottom">
            </div>
            <div class="w3-half">
              <img src="img/cat2.jpg" style="width:100%" alt="cat2" class="w3-margin-bottom">
          </div>
        </div>
        <!-- end. 사진 추가 예시 -->	
       
       </div>
       <!-- end. 일기 5  -->
       
      <!-- 일기 4 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018년 02월 07일 PM 11:55</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>너무 졸립다. 오늘도 수고했다</p>
       	<!-- 사진 추가 예시 -->
       	<div class="w3-row-padding" style="margin:0 -16px">
            <div class="w3-half">
              <img src="img/cat1.jpg" style="width:100%" alt="cat1" class="w3-margin-bottom">
            </div>
            <div class="w3-half">
              <img src="img/cat2.jpg" style="width:100%" alt="cat2" class="w3-margin-bottom">
          </div>
        </div>
        <!-- end. 사진 추가 예시 -->	
       
       </div>
       <!-- end. 일기 4  -->
       
       <!-- 일기 3 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018년 02월 06일 PM 10:30</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>신난다. 날씨 거지같다.</p>
       </div>
       <!-- end. 일기 3  -->
       
       <!-- 일기 2 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018년 02월 05일 PM 11:00</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>잘자</p>
       </div>
       <!-- end. 일기 2  -->
       
        <!-- 일기 1 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018년 02월 04일 PM 11:25</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>수고했다.</p>
       </div>
       <!-- end. 일기 1  -->
       
       
</div>
<!-- end. 전체보기 -->





</body>
<!-- end. Body - 전부: 배경, 모바일 대응 -->

</html>