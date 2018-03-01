<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
/*
	* 주석라인 (메모)
		+ i class
			?: <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
			?: <i class="fa fa-caret-right w3-margin-right"></i> 
		       이름옆에 아래 화살표 표시: <i class="fa fa-caret-down"></i>
*/
%>
<html>
	<title>Story Blog - User</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<!-- <link rel="stylesheet" href="../w3.css"> -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	

<style>
body,h1 {font-family: "consolas", sans-serif}
body, html {height: 100%}
.bgimg {
    background-image: url("img/back1.jpg");
    min-height: 100%;
    background-position: center;
    background-size: cover;
}
#topbar {
	margin-left: 231px;
}   

#pmidcol {
	margin-top: 245px;
}
#mySidebar {
	float: left;
}

</style>

<script type="text/javascript">
//Accordion 
function myAccFunc() {
 var x = document.getElementById("demoAcc");
 if (x.className.indexOf("w3-show") == -1) {
     x.className += " w3-show";
 } else {
     x.className = x.className.replace(" w3-show", "");
 }
}

//Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();


//Script to open and close sidebar
function w3_open() {
 document.getElementById("mySidebar").style.display = "block";
 document.getElementById("myOverlay").style.display = "block";
}

function w3_close() {
 document.getElementById("mySidebar").style.display = "none";
 document.getElementById("myOverlay").style.display = "none";
}
</script>
<body class="bgimg">
<!--상단 바 -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#storyli" class="w3-bar-item w3-button" style="margin-right: 10px">Story(li.??)</a>
      <a href="#search" class="w3-bar-item w3-button" style="margin-right: 5px">Search</a>
      <a href="#signout" class="w3-bar-item w3-button"style="margin-right: 5px">Sign Out</a>
    </div>
  </div>
<!-- 타임라인 등 표시 -->
   <div class="w3-container w3-bar w3-pink w3-padding w3-card" style="letter-spacing:4px;" id="topbar">
    <div class="w3-left w3-hide-medium">
      <a href="#storyli" class="w3-bar-item w3-button" style="margin-right: 10px">Story(li.??)</a>
      <a href="#search" class="w3-bar-item w3-button" style="margin-right: 5px">Search</a>
      <a href="#signout" class="w3-bar-item w3-button"style="margin-right: 5px">Sign Out</a>
    </div>
  </div>
</div>


<!-- 사이드 바 -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:230px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    
    <h3 class="w3-wide"><a href="<%=request.getContextPath() %>/view/userPage.jsp" class="w3-bar-item w3-button"><b>Story Blog</b></a></h3>
  </div>
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
    <a href="#" class="w3-bar-item w3-button">list-1</a>
    <a href="#" class="w3-bar-item w3-button">list-2</a>
    <a href="#" class="w3-bar-item w3-button">list-3</a>
    <a href="#" class="w3-bar-item w3-button">list-4</a>
     <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
     Test<i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="#" class="w3-bar-item w3-button w3-light-grey"><i class="fa fa-caret-right w3-margin-right"></i>test1</a>
      <a href="#" class="w3-bar-item w3-button">test2</a>
      <a href="#" class="w3-bar-item w3-button">test3</a>
      <a href="#" class="w3-bar-item w3-button">test4</a>
    </div>
    <a href="#" class="w3-bar-item w3-button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+</a>
  </div>
  <a href="#footer" class="w3-bar-item w3-button w3-padding">Contact</a> 
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding" onclick="document.getElementById('newsletter').style.display='block'">Newsletter</a> 
  <a href="#footer"  class="w3-bar-item w3-button w3-padding">Subscribe</a>
</nav>

<!-- Middle Column -->
    <div class="w3-col m7 w3-padding w3-display-middle" id=pmidcol>
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">Story Sorry</h6>
              <p contenteditable="true" class="w3-border w3-padding">Status: Feeling Blue</p>
              <button type="button" class="w3-button w3-theme"><i class="fa fa-pencil"></i>  Post</button> 
            </div>
          </div>
        </div>
      </div>
      
      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="/w3images/avatar2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">1 min</span>
        <h4>John Doe</h4><br>
        <hr class="w3-clear">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
          <div class="w3-row-padding" style="margin:0 -16px">
            <div class="w3-half">
              <img src="/w3images/lights.jpg" style="width:100%" alt="Northern Lights" class="w3-margin-bottom">
            </div>
            <div class="w3-half">
              <img src="/w3images/nature.jpg" style="width:100%" alt="Nature" class="w3-margin-bottom">
          </div>
        </div>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div>
      
      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="/w3images/avatar5.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">16 min</span>
        <h4>Jane Doe</h4><br>
        <hr class="w3-clear">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div>  

      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="/w3images/avatar6.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">32 min</span>
        <h4>Angie Jane</h4><br>
        <hr class="w3-clear">
        <p>Have you seen this?</p>
        <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div> 
      
    <!-- End Middle Column -->
    </div>



</body>
</html>
