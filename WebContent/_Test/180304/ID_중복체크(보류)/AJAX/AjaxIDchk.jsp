<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<style type="text/css">
		ul{
			padding:0;
			margin:0;
			list-style:none;
		}
		ul li{
			padding:0;
			margin:0 0 10px 0;
		}
		label {
			width:100px;
			float:left;
		}
	</style>
	<script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//아이디 중복 체크 실행 여부(0:중복체크X 1:중복체크O)
			var count = 0;
			
			$('#confirmId').click(function() {
				var uid = $('#id').val();
				if(uid == ''){
					alert('아이디를 입력하세요!');
					$('#id').focus();
					return;
				}
				
				//서버프로그램 연동해서 아이디 중복체크하기
				$.getJSON('confirmId.jsp',{id:uid},function(data){
					if(data.result == 'success'){
						if(data.id == 'idDuplicated') {	//id중복
							count = 0;
							$('#id_signed').html('이미 등록된 아이디').css('color','red');
							$('#id').val('').focus();
						}else {	//id 미중복
							//중복확인 작업을 수행하면 count를 1로 변경
							count = 1;
							$('#id_signed').html('사용 가능한 아이디').css('color','black');
						}
					}else {
						alert('오류발생!');
					}
				});
			});
			
			//input태그에 key이벤트 연결
			$('#insert_form #id').keyup(function(){
				count = 0;
				$('#id_signed').html('');
			});
			
			$('#insert_form').submit(function(){
				if(count == 0){
					alert('아이디 중복체크 필수');
					if($('#id').val() == '') {
						$('#id').focus();
					}else {
						$('#confirmId').focus();
					}
					return false;
				}else {
					alert('전송');
				}
			});
		});
	</script>
</head>
<body>
	<form id="insert_form" method="post">
		<fieldset>
			<legend>데이터 추가</legend>
			<ul>
				<li>
					<label for="id">아이디</label>
					<input type="text" name="id" id="id">
					<input type="button" id="confirmId" value="아이디 중복 체크">
					<span id="id_signed"></span>
				</li>
				<li>
					<input type="submit" value="전송">
				</li>
			</ul>
		</fieldset>
	</form>
</body>
</html>