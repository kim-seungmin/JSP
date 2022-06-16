<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>���ε�</title>
<link rel="stylesheet" href="./css/style.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
	<%

	// ��Ű�� ��������
	Cookie[] cookies = request.getCookies() ;
	int isAdmin = 0;
	if(cookies != null){
		
		for(int i=0; i < cookies.length; i++){
			Cookie c = cookies[i] ;
			
			// ����� ��Ű �̸��� �����´�
			String cName = c.getName();
			
			// ��Ű���� �����´�
			String cValue = c.getValue() ;
			
			if(cName.equalsIgnoreCase("admin")){
				if(cValue.equals("1")){				//1 �Ϲ� 2 ������
					%><jsp:forward page="index.jsp"/><%
				}else{
					isAdmin = 2;
				}
			}
		}
	}
	if(isAdmin != 2)
		%><jsp:forward page="index.jsp"/><%
	%>
	
	
		<form method="post" action="/jwbook/whants.nhn?action=addContents"	enctype="multipart/form-data">
			<label class="form-label">����</label>
			<input type="text" name="title" class="form-control">
			<label class="form-label">�̹���</label>
			<input type="file" name="file" class="form-control"></br>
			<label class="form-label">�� ����</label></br>
			<textarea rows="5" cols="50" name="content" class="form-control"></textarea></br>
			<label class="form-label">������</label>
			<input type="date" name="startDate" class="form-control">
			<label class="form-label">������</label>
			<input type="date" name="endDate" class="form-control">
			<label class="form-label">����</label>
			<input type="text" name="director" class="form-control">
			<label class="form-label">���</label>
			<input type="text" name="actor" class="form-control">
			
			<button type="submit" class="btn btn-success mt-3">����</button>
		</form>
</body>
</html>