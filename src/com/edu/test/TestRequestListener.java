package com.edu.test;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class TestRequestListener implements ServletRequestListener{

	public TestRequestListener() {
		System.out.println("TestRequestListener 객체 생성");
	}
	
	@Override
	public void requestInitialized(ServletRequestEvent arg0) {
		System.out.println("HttpServletRequest 객체 초기화");
	}

	@Override
	public void requestDestroyed(ServletRequestEvent arg0) {
		System.out.println("HttpServletRequest 객체 해제");
	}	
}
