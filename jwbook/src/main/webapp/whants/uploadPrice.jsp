<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>업로드</title>
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

	// 쿠키값 가져오기
	Cookie[] cookies = request.getCookies() ;
	int isAdmin = 0;
	if(cookies != null){
		
		for(int i=0; i < cookies.length; i++){
			Cookie c = cookies[i] ;
			
			// 저장된 쿠키 이름을 가져온다
			String cName = c.getName();
			
			// 쿠키값을 가져온다
			String cValue = c.getValue() ;
			
			if(cName.equalsIgnoreCase("admin")){
				if(cValue.equals("1")){				//1 일반 2 관리자
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
	
	
		<form method="post" action="./uploadPriceAction.jsp">
			<label class="form-label">컨텐츠ID</label>
			<input type="text" name="ID" class="form-control">
			<label class="form-label">플랫폼</label>
			<input type="text" name="platform" class="form-control">
			<label class="form-label">가격</label>
			<input type="text" name="price" class="form-control">
			
			<button type="submit" class="btn btn-success mt-3">저장</button>
		</form>
</body>
</html>