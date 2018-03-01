<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<title>Story Blog - MAIN</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<!-- <link rel="stylesheet" href="../w3.css"> -->

	<style>
	/*=================== 메인화면 ===================*/
		body,h1 {font-family: "consolas", sans-serif}
		body, html {height: 100%}
		.bgimg {
		    background-image: url("img/back1.jpg");
		    min-height: 100%;
		    background-position: center;
		    background-size:cover;
		}
		#nounder{
			text-decoration: none;
		}
	</style>
	
	 <script type="text/javascript">
    
        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.email.value)
            {
                alert("아이디를 입력하세요");    
                inputForm.email.focus();
                return false;
            }
            if(!inputForm.pwd.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.pwd.focus();
                return false;
            }
        }
    
        // 회원가입 버튼 클릭시 회원가입 화면으로 이동
        function goaccountForm() {
            location.href="accountForm.jsp";
        }    
    </script>
<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
	<div class="w3-right">
		<a href="<%=request.getContextPath() %>/Project/accountList.jsp">admin..</a>
	</div>
	<form name="loginInfo" method="post" action="LoginPro.jsp" onsubmit="return checkValue()">
	  <div class="w3-display-middle">
	  
	    <h1 class="w3-jumbo w3-animate-top"><a href="index.jsp" id="nounder">Story Blog</a></h1>
	    <hr class="w3-border-gray" style="margin:auto; width:40%">
	    <p class="w3-large w3-center">You <%= "&" %> I</p>
	        <br>
	     
	    	<div class="w3-center">
		    	<input class="w3-input" name="email" type="email" placeholder="Email"><br>
		    	<input class="w3-input" name="pwd" type="password" placeholder="Password">
	    	</div>
	   
	     	<br>
	    	<div class="w3-center">
	    	 <input class="w3-button w3-pink" type="submit" value="Login"/>
		    </div>
	    <p class="w3-center w3-small"><a href="<%=request.getContextPath() %>/Project/accountForm.jsp">Sign Up</a></p>
	    
	  </div>
	 </form>
	  
	  <div class="w3-center">
	  <% 
            // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
            // LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
            String msg=request.getParameter("msg");
            
            if(msg!=null && msg.equals("0")) 
            {
                out.println("<script>alert('비밀번호를 확인해 주세요.');</script>");
            }
            else if(msg!=null && msg.equals("-1"))
            {    
            	out.println("<script>alert('이메일을 확인해 주세요.');</script>");
            }
        %> 
        </div>
</div>

</body>

</html>