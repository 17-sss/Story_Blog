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
			//���̵� �ߺ� üũ ���� ����(0:�ߺ�üũX 1:�ߺ�üũO)
			var count = 0;
			
			$('#confirmId').click(function() {
				var uid = $('#id').val();
				if(uid == ''){
					alert('���̵� �Է��ϼ���!');
					$('#id').focus();
					return;
				}
				
				//�������α׷� �����ؼ� ���̵� �ߺ�üũ�ϱ�
				$.getJSON('confirmId.jsp',{id:uid},function(data){
					if(data.result == 'success'){
						if(data.id == 'idDuplicated') {	//id�ߺ�
							count = 0;
							$('#id_signed').html('�̹� ��ϵ� ���̵�').css('color','red');
							$('#id').val('').focus();
						}else {	//id ���ߺ�
							//�ߺ�Ȯ�� �۾��� �����ϸ� count�� 1�� ����
							count = 1;
							$('#id_signed').html('��� ������ ���̵�').css('color','black');
						}
					}else {
						alert('�����߻�!');
					}
				});
			});
			
			//input�±׿� key�̺�Ʈ ����
			$('#insert_form #id').keyup(function(){
				count = 0;
				$('#id_signed').html('');
			});
			
			$('#insert_form').submit(function(){
				if(count == 0){
					alert('���̵� �ߺ�üũ �ʼ�');
					if($('#id').val() == '') {
						$('#id').focus();
					}else {
						$('#confirmId').focus();
					}
					return false;
				}else {
					alert('����');
				}
			});
		});
	</script>
</head>
<body>
	<form id="insert_form" method="post">
		<fieldset>
			<legend>������ �߰�</legend>
			<ul>
				<li>
					<label for="id">���̵�</label>
					<input type="text" name="id" id="id">
					<input type="button" id="confirmId" value="���̵� �ߺ� üũ">
					<span id="id_signed"></span>
				</li>
				<li>
					<input type="submit" value="����">
				</li>
			</ul>
		</fieldset>
	</form>
</body>
</html>