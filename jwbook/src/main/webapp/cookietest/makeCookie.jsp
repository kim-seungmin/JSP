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
		// ȸ����ȣ
		String memberNo = "58272836" ;

		// ȸ����ȣ�� ��Ű�� �����Ѵ�
		Cookie c = new Cookie("memberNo", memberNo) ;
	
		// ��Ű�� ������ �߰��Ѵ�
		c.setComment("ȸ����ȣ") ;
	
		// ��Ű ��ȿ�Ⱓ�� �����Ѵ�. �ʴ��� : 60*60*24= 1�� 
		c.setMaxAge(60*60*24) ;
		
		// ��������� ��Ű�� �߰��Ѵ�.
		response.addCookie(c) ;
	%>
	<script type="text/javascript">history.back();</script>
</body>
</html>