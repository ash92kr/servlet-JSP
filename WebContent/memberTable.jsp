<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
	Statement stmt = con.createStatement();
	String sql = "CREATE TABLE member2(id VARCHAR2(10) PRIMARY KEY, passwd VARCHAR2(10), name VARCHAR2(10), mail VARCHAR2(20))";
	stmt.executeUpdate(sql);
	out.print("member2 테이블이 생성되었습니다.");
	stmt.close();
	con.close();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>