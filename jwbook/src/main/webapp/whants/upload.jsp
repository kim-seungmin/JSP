<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/whants?action=addContents"
					enctype="multipart/form-data">
					<label class="form-label">����</label>
					<input type="text" name="title" class="form-control">
					<label class="form-label">�̹���</label>
					<input type="file" name="file" class="form-control">
					<label class="form-label">�� ����</label>
					<textarea rows="5" cols="50" name="content" class="form-control"></textarea>
					<button type="submit" class="btn btn-success mt-3">����</button>
	</form>
</body>
</html>