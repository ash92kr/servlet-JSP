package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;

@WebServlet("/cookie3")
public class CookieTest3Servlet extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws HTTPException, IOException {
				
		int cnt = 0;
		Cookie[] list = req.getCookies();
		for (int i=0; list!=null && i < list.length; i++) {
			if (list[i].getName().equals("count")) {
				cnt = Integer.parseInt(list[i].getValue());
			}
		}
		
		cnt++;
		Cookie c = new Cookie("count", cnt+"");
		c.setMaxAge(60 * 60 * 24 * 10);
		resp.addCookie(c);
		
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.print("<h1>방문 횟수 : " + cnt);
		out.close();
	}
	
}
