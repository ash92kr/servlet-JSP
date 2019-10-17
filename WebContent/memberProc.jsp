<%@ page import ="com.edu.biz.MemberService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="com.edu.beans.Member"/>
	<jsp:setProperty property="*" name="member" />
	
	<%
		MemberService service = new MemberService();
		service.memberInsert(member);
		
		RequestDispatcher rd = request.getRequestDispatcher("memberOutput.jsp");
		rd.forward(request, response);
	%>
</body>
</html>