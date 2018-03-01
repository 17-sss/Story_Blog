<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String ctx = request.getContextPath(); //���ؽ�Ʈ�� ������.
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SmartEditor</title>

<!-- SmartEditor�� ����ϱ� ���ؼ� ���� js������ �߰� (��� Ȯ��) -->
<script type="text/javascript" src="<%=ctx %>/SE2/js/service/HuskyEZCreator.js" charset="EUC-KR"></script>
<!-- jQuery�� ����ϱ����� jQuery���̺귯�� �߰� -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	var oEditors = [];
	$(function() {
			nhn.husky.EZCreator.createInIFrame({
				oAppRef : oEditors,
				elPlaceHolder : "ir1", //textarea���� ������ id�� ��ġ�ؾ� �մϴ�. 

				//SmartEditor2Skin.html ������ �����ϴ� ���
				sSkinURI : "/Story_Blog/SE2/SmartEditor2Skin.html",

				htParams : {
					// ���� ��� ���� (true:���/ false:������� ����)
					bUseToolbar : true,
					// �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
					bUseVerticalResizer : true,
					// ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
					bUseModeChanger : true,
					fOnBeforeUnload : function() {
					}
				},
				
				fOnAppLoad : function() {
					//���� ����� ������ text ������ �����ͻ� �ѷ��ְ��� �Ҷ� ���
					oEditors.getById["ir1"].exec("PASTE_HTML",
							[ "���� DB�� ����� ������ �����Ϳ� ������ ����" ]);
				},
				
				fCreator : "createSEditor2"
		});

		//�����ư Ŭ���� form ����
		$("#save").click(function() {
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
			$("#frm").submit();
		});
	});
</script>

</head>
<body>
	<form id="frm" action="insert.jsp" method="post">
		<table width="100%">
			<tr>
				<td>����</td>
				<td><input type="text" id="title" name="title"
					style="width: 650px" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea rows="10" cols="30" id="ir1" name="content"
						style="width: 650px; height: 350px;"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" id="save" value="����" /> <input
					type="button" value="���" /></td>
			</tr>
		</table>
	</form>

</body>
</html>

