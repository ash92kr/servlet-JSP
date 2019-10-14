<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	// 1. JDBC Driver 로딩하기
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. DB 서버 접속하기
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection conn = DriverManager.getConnection(url, "hr", "hr");
	
	// 3. Statement or PreparedStatement 객체 생성하기
	Statement stmt = conn.createStatement();
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	PreparedStatement pstmt = conn.prepareStatement("INSERT INTO test VALUES(?, ?)");
	pstmt.setString(1, id);
	pstmt.setString(2, pwd);
	pstmt.executeUpdate();
	
	// 4. SQL 실행
	// stmt.executeUpdate("CREATE TABLE test(id VARCHAR2(5), pwd VARCHAR2(5))");
	/*
	stmt.executeUpdate("INSERT INTO test VALUES('aa', '11')");
	stmt.executeUpdate("INSERT INTO test VALUES('bb', '22')");
	stmt.executeUpdate("INSERT INTO test VALUES('cc', '33')");
	*/
	ResultSet rs = stmt.executeQuery("select * from test");
	
	while (rs.next()) {
		out.print("<br>" + rs.getString("id") + ":" + rs.getString(2));
	}
	
	
	// 5. 자원해제
	rs.close();
	stmt.close();
	conn.close();
%>
OK

