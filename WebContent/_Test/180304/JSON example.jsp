<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script language="javascript"> 

var object1 = { "language" : "Java", "author" : "herbert schildt" }; 
document.write("<h1>JSON with JavaScript example</h1>"); document.write("<br>");
	document.write("<h3>Language = " + object1.language + "</h3>");
	document.write("<h3>Author = " + object1.author + "</h3>");
	var object2 = {
		"language" : "C++",
		"author" : "E-Balagurusamy"
	};
	document.write("<br>");
	document.write("<h3>Language = " + object2.language + "</h3>");
	document.write("<h3>Author = " + object2.author + "</h3>");
	document.write("<hr />");
	document.write(object2.language + " programming language can be studied "
			+ "from book written by " + object2.author);
	document.write("<hr />");
</script>
</head>
<body>
<!-- http://dpug.tistory.com/67#.WprLY-jFJPZ -->
</body>
</html>