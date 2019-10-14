<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Bean</title>
</head>
<body>
	<jsp:useBean class="com.edu.beans.HelloBean" id="hello"/>
	
	<jsp:getProperty property="name" name="hello"/><br>
	<jsp:getProperty property="number" name="hello"/><br>
	
	<!-- 
	<jsp:setProperty property="name" name="hello" value="Amy"/>
	<jsp:setProperty property="number" name="hello" value="1234"/>
	-->
	<jsp:setProperty property="*" name="hello"/>
	
	<hr>
	

	<jsp:getProperty property="name" name="hello"/><br>
	<jsp:getProperty property="number" name="hello"/><br> 

</body>
</html>