<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 1 -->
<div class="w3-border-bottom w3-margin-bottom">
	<span class="w3-small w3-text-gray">방법 1</span>
	
	<p id="usingVar"></p>
	
	<script type="text/javascript">
		var d = new Date(); 
		var localeDate  =  d.toLocaleDateString(); 
		var localeTime  =  d.toLocaleTimeString(); 
	
		document.getElementById ( 'usingVar' ).innerHTML = localeDate  +  " / "  +  localeTime;
	</script>
</div>
<!-- 2 -->
<div class="w3-border-bottom w3-margin-bottom">
	<span class="w3-small w3-text-gray">방법 2</span>
	
	<p id="basicUse"></p>
	
	<script type="text/javascript">
		document.getElementById ( "basicUse" ).innerHTML = Date(); 
	</script>
</div>
<!-- 3 -->
<div class="w3-border-bottom w3-margin-bottom">
	<span class="w3-small w3-text-gray">방법 3</span>
	
	<p id="usingFunction">2018. 3. 4. 오전 12:55:19</p>

	<script type="text/javascript">
		function locale () { 	 
			return new Date().toLocaleString(); 	 
			} 
			document.getElementById( 'usingFunction' ).innerHTML = locale (); 
			// 추가로, 실시간 타이머 표시 방법 ㅡ 1000 밀리초(=1초)에 한번씩 함수 실행하기 
			setInterval ( function() { document.getElementById("usingFunction").innerHTML = locale (); } , 1000 );
	</script>
</div>
<!-- http://tonks.tistory.com/31 참고 -->
</body>
</html>