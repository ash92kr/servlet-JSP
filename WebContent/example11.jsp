<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int total = out.getBufferSize();
		out.print("첫번째 텍스트입니다.");
		out.clearBuffer();
		out.print("출력 버퍼의 크기 : " + total);
		out.print("<br>사용되지 않은 버퍼의 크기 : " + out.getRemaining());
		out.flush();
		out.print("<br>flush 후 버퍼의 크기 : " + out.getRemaining());
	%>
	<hr>
	<h3>out.print() 메소드</h3>
	<%
		out.print(100);
		out.print(true);
		out.print(3.14);
		out.print("TEST");
		out.print('가');
		out.print(new java.io.File("\\"));
		out.print("버퍼의 크기: " + out.getRemaining());
	%>
</body>
</html>