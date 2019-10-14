<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예외상황 처리</title>
</head>
<body>
	<h4>다음과 같은 에러가 발생하였습니다.</h4>
	에러타입 :
	<%=exception.getClass().getName() %>
	<br> 에러메시지 :
	<%=exception.getMessage() %>
	
</body>
</html>