 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>cookie check</h1>
	<%

	// ��Ű�� ��������
	Cookie[] cookies = request.getCookies() ;
	if(cookies != null){
		
		for(int i=0; i < cookies.length; i++){
			Cookie c = cookies[i] ;
			
			// ����� ��Ű �̸��� �����´�
			String cName = c.getName();
			
			// ��Ű���� �����´�
			String cValue = c.getValue() ;
			
			System.out.println(c.getName()+": "+c.getValue());
			if(cName.equalsIgnoreCase("memberNo")){
				%><jsp:forward page="yesCookie.jsp"/><%
			}
		}
		%><jsp:forward page="noCookie.jsp"/><%
	}else{
		%><jsp:forward page="noCookie.jsp"/><%
	}
	%>
</body>
</html>