package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;

@WebServlet("/context3")
public class ServletContextTest3Servlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws HTTPException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		ServletContext sc = this.getServletContext();
		
		ShareObject obj1 = new ShareObject();
		obj1.setCount(100);
		obj1.setStr("객체 공유 테스트 - 1");
		sc.setAttribute("data1", obj1);
		
		ShareObject obj2 = new ShareObject();
		obj2.setCount(200);
		obj2.setStr("객체 공유 테스트 - 1");
		sc.setAttribute("data2", obj2);
		
		out.print("ServletContext 객체에 데이터 등록을 하였습니다!");
		
		out.close();
	}
	
}
