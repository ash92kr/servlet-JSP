package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;

@WebServlet("/context2")
public class ServletContextTest2Servlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws HTTPException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		ServletContext sc = req.getServletContext();
		
		out.print("서블릿 버전 : " + sc.getMajorVersion() + "." + sc.getMinorVersion());
		out.print("<br>서버 정보 : " + sc.getServerInfo());
		out.print("<br>웹 어플리케이션 경로 : " + sc.getContextPath());
		out.print("<br>웹 어플리케이션 이름: " + sc.getServletContextName());
		out.print("<br>파일 실제 경로 : " + sc.getRealPath("/name.html"));
		sc.log("로그 기록!");
		
		out.close();
	}
	
}
