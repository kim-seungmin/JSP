<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// ��ü ��Ű �����ϱ�
	Cookie[] cookies = request.getCookies() ;
	
	if(cookies != null){
		for(int i=0; i < cookies.length; i++){
			
			// ��Ű�� ��ȿ�ð��� 0���� �����Ͽ� �����Ų��
			cookies[i].setMaxAge(0) ;
			
			// ���� ����� �߰��Ѵ�
			response.addCookie(cookies[i]) ;
		}
	}	
	
	// Ư�� ��Ű�� �����ϱ�
	Cookie kc = new Cookie("memberNo", null) ;
	kc.setMaxAge(0) ;
	response.addCookie(kc) ;
	%>
	<script type="javascript">
		history.back()
	</script>
</body>
</html>