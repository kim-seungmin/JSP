<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="javascript">
	fuction makeCookie(){
		location.href="makeCookie.jsp"
	}
	
	fuction delCookie(){
		location.href="deleteCookie.jsp"
	}	
	
	fuction chekCookie(){
		location.href="checkCooke.jsp"
	}	
</script>
</head>
<body>
<FORM>
	<input type='BUTTON' value='��Ű����' onclick='makeCookie()'>
	<input type='BUTTON' value='��Ű����' onclick='delCookie()'>
	<input type='BUTTON' value='��ŰȮ��' onclick='chekCookie()'>
</FORM>
</body>
</html>