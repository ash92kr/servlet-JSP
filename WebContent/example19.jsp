<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL</title>
</head>
<body>
	${param.id}    / ${param.pwd}  <br>
	${param["id"]} / ${param["pwd"]}
</body>
</html>