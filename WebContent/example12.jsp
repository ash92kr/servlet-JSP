<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버명 : <%= application.getServerInfo() %><br>
	서블릿 버전 : <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %><br>
	<h3>/edu 리스트</h3>
	<%
		java.util.Set<String> list = application.getResourcePaths("/");
		if(list != null) {
			Object[] obj = list.toArray();
			for(int i = 0; i < obj.length; i++) {
				out.print(obj[i] + "<br>");
			}
		}
	%>
</body>
</html>