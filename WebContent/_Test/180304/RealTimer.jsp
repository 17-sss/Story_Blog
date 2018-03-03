<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title> 실시간 타이머 </title>
	
	<style type="text/css"> 
		#realTimer  {
	       padding: 2px 10px;   width: 230px;   border: 2px outset #dfeaea;   font-family: sans-serif;   font-size: 16px;
		}	 
	</style> 
	 
	<script type="text/javascript">
	
		function timer () { 
			 var date = new Date(); 	
			 var hour = date.getHours(); 	
			 var ampm = ( hour  < 12 || hour == 24 ) ? " A.M." : " P.M."; 	
			 
			 hour = hour % 12 || 12; 

			 var minute = date.getMinutes(); 
			      minute = ( minute > 9 ) ? minute : "0" + minute; 
		
			 var second = date.getSeconds(); 
			      second = ( second > 9 ) ? second : "0" + second; 
		
			 var millisec = date.getMilliseconds(); 
			      millisec = ( millisec > 99 ) ? millisec : ( millisec > 9 ) ? "0" + millisec : "00" + millisec; 
		
			 var timeString = hour + ":" + minute + ":" + second + ampm; 
			 // 또는,  var timeString = hour + ":" + minute + ":" + second + ":" + millisec + ampm; 
		
			 var year = date.getFullYear(); 
			 var month = date.getMonth() + 1; 
			 var day = date.getDate(); 
		
			 var arrayWeek = [ "Sun. " , "Mon. " , "Tue. " , "Wed. " , "Thur. " , "Fri. " , "Sat. " ]; 
			 // 또는, var arrayWeek = [ "일. " , "월. " , "화. " , "수. " , "목. " , "금. " , "토. " ]; 
		
			 var week = date.getDay(); 
			       week = arrayWeek [ week ]; 
		
			 var dateString = year + ". " + month + ". " + day + ". " + week; 
		
			 return  dateString + timeString; 
		} 
	</script>
	</head>
<body>
<p id="realTimer"></p>
	
<script type="text/javascript">
	var tag = document.getElementById( "realTimer" ); 
	tag.innerHTML = timer(); 
	setInterval ( function() { tag.innerHTML = timer(); } , 1000 ); 
</script>
</body>
</html>