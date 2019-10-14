<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="example3.jsp" %>
<%
	String param = request.getParameter("id");
	if (param.equals("test"))
		param = " 파라미터가 입력되었습니다. (예외 상황이 발생하지 않았습니다.)";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>
		<%=param%>
	</h4>
</body>
</html>