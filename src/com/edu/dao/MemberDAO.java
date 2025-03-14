package com.edu.dao;

import java.sql.*;

import com.edu.beans.Member;

public class MemberDAO {

	public Connection getConnection() {

		Connection con = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
		} catch (Exception e){
			e.printStackTrace();
		}
		return con;
	}
	
	public void insertMember(Member member) {
		
		try {
			Connection con = this.getConnection();
			PreparedStatement pstmt = con.prepareStatement("INSERT INTO member2 VALUES(?, ?, ?, ?)");
			
			pstmt.setString(1,  member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getMail());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
