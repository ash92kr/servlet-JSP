package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/context1")
public class ServletContextTest1Servlet extends HttpServlet{

	ServletContext sc;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		sc = config.getServletContext();
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
//		out.print("Context : " + sc);
//		out.close();
		
//		sc = req.getServletContext();
//		out.print("Context : " + sc);
//		out.close();

		sc = req.getServletContext();
		String location = sc.getInitParameter("contextConfig");
		out.print("location : " + location);
		out.close();
	}
	
}
