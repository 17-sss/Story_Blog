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


<!-- Body - ����: ���, ����� ���� -->
<body class="bgimg w3-mobile">

<!-- ALL ��ܹ� -->
<div class="w3-bar" style="position: fixed;">
<!-- ��ܹ� -->
	<div class="w3-bar w3-black">
		<a href="http://kiss7.tistory.com/295" class="w3-bar-item w3-button w3-pink w3-hover-pink w3-right">Search</a>
	</div>
<!-- end. ��ܹ� -->

<!-- Ÿ�Ӷ��ι� -->
	<div class="w3-bar w3-white">
		<a href="#" class="w3-bar-item w3-button" style="width: 10%">&nbsp;</a>
		<div>
			<a href="<%=request.getContextPath() %>/view/user_timeline.jsp" class="w3-bar-item w3-button w3-pink w3-border-right" style="width: 15%; margin-left: 15%;">Timeline</a>
			<a href="<%=request.getContextPath() %>/view/user_gallery.jsp" class="w3-bar-item w3-button w3-pink w3-border-right" style="width: 15%;">Gallery</a>
			<a href="<%=request.getContextPath() %>/view/user_map.jsp" class="w3-bar-item w3-button w3-pink w3-border-right" style="width: 15%;">Map</a>
			<a href="<%=request.getContextPath() %>/view/user_calender.jsp" class="w3-bar-item w3-button w3-pink w3-border-right" style="width: 15%; margin-right: 15%;">Calendar</a>
		</div>
	</div>
<!-- end. Ÿ�Ӷ��ι� -->
</div>
<!-- end. ALL ��ܹ� -->

<!-- ���̵�� -->
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
<!-- end. ���̵�� -->

<!-- Ÿ�Ӷ��� -->
	<div class="w3-col m7 w3-row" style="margin-left: 26%; margin-top: 5%;">
	<!-- �ϱ� 6 -->
	<div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018�� 02�� 07�� PM 11:55</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>�ʹ� ������. ���õ� �����ߴ�</p>
    </div>
    <!-- end. �ϱ� 6 -->
    
    <!-- �ϱ� 5 -->
    <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018�� 02�� 07�� PM 11:55</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>�ʹ� ������. ���õ� �����ߴ�</p>
    </div>
    <!-- end. �ϱ� 5 -->
	
	<!-- �ϱ� 4 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018�� 02�� 07�� PM 11:55</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>�ʹ� ������. ���õ� �����ߴ�</p>
       	<!-- ���� �Ⱥ��� (Ÿ�Ӷ��� ������) -->
       <!-- 	<div class="w3-row-padding" style="margin:0 -16px">
            <div class="w3-half">
              <img src="#" style="width:100%" alt="cat1" class="w3-margin-bottom">��
            </div>
            <div class="w3-half">
              <img src="#" style="width:100%" alt="cat2" class="w3-margin-bottom">
          </div>
        </div> -->
        
        <!-- end. ���� �Ⱥ��� -->	
       
       </div>
       <!-- end. �ϱ� 4  -->	
	
	
		
	  <!-- �ϱ� 3  -->
	  <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018�� 02�� 06�� PM 10:30</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>�ų���. ���� ��������.</p>
       </div>
       <!-- end. �ϱ� 3  -->
       
       <!-- �ϱ� 2 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018�� 02�� 05�� PM 11:00</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>����</p>
       </div>
       <!-- end. �ϱ� 2  -->
       
        <!-- �ϱ� 1 -->
       <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/Kirby_1.png" alt="kirby1" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">2018�� 02�� 04�� PM 11:25</span>
        <h4>Kirby</h4><br>
        <hr class="w3-clear">
        <p>�����ߴ�.</p>
       </div>
		
	</div>

<!-- end. Ÿ�Ӷ��� -->
</body>
<!-- end. Body - ����: ���, ����� ���� -->

</html>