package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/netinfo")
public class NetInfoServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html;charset=EUC-KR");
		PrintWriter out = res.getWriter();
		out.print("<html>");
		out.print("<head><title>Request 정보출력 Servlet</title></head>");
		out.print("<body>");
		out.print("<h3>네트워크 관련 요청 정보</h3>");
		out.print("Request Scheme : " + req.getScheme() + "<br/>");
		out.print("Server name : " + req.getServerName() + "<br/>");
		out.print("Server Address : " + req.getLocalAddr() + "<br/>");
		out.print("Server Port : " + req.getServerPort() + "<br/>");
		out.print("Client Address : " + req.getRemoteHost() + "<br/>");
		out.print("Client Port : " + req.getRemotePort() + "<br/>");
		out.print("</body></html>");
		out.close();
	}

}
