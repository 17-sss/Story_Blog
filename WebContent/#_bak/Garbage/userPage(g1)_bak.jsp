<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<title>Story Blog - User</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<!-- <link rel="stylesheet" href="../w3.css"> -->

<style>
body,h1 {font-family: "consolas", sans-serif}
body, html {height: 100%}
.bgimg {
    background-image: url("img/back1.jpg");
    min-height: 100%;
    background-position: center;
    background-size: cover;
}

.w3-sidebar {
  z-index: 3;
  width: 250px;
  top: 43px;
  bottom: 0;
  height: inherit;
}
#mgbar{
	margin-top: 47px;
}
</style>
<script type="text/javascript">
	document.getElementById("myBtn").click();
</script>
<body class="bgimg">

<!-- 상단바 -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-theme w3-top w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-pink w3-large" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-small w3-bar-item w3-button w3-theme-l1">Story Blog</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-pink">About</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-pink">Values</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-pink">News</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-pink">Contact</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hide-medium w3-hover-pink">Clients</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hide-medium w3-hover-pink">Partners</a>
  </div>
</div>

<!-- 사이드바 -->
<nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-text-pink" id="mgbar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large w3-animate-left" title="Close Menu">
    <i class="fa fa-remove"></i>
  </a>
  <h4 class="w3-bar-item"><b>Menu</b></h4>
  <a class="w3-bar-item w3-button w3-hover-pink" href="#">Link</a>
  <a class="w3-bar-item w3-button w3-hover-pink" href="#">Link</a>
  <a class="w3-bar-item w3-button w3-hover-pink" href="#">Link</a>
  <a class="w3-bar-item w3-button w3-hover-pink" href="#">Link</a>
</nav>



</body>