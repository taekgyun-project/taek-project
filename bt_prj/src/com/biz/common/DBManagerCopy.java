//package com.biz.common;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//public class DBManagerCopy {
//	
//	public Connection dbConn() {
//		Connection conn = null;
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//		try {
//			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kosmo", "0000");
//			if(conn !=null)
//				System.out.println("conn success");
//			else
//				//오타, ojdbc6.jar , 네트워크 회선/권한문제
//				System.out.println("conn faild");
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return conn;
//	}
////	public void add(int num) {
////		if(num >10)
////			System.out.println("ok");
////	}
//	
//	public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection conn) {
//		try {
//			if(rs !=null) rs.close();
//			if(pstmt !=null) pstmt.close();
//			if(conn !=null) conn.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		//System.out.println("닫았다");
//	}
//	public void dbClose(PreparedStatement pstmt, Connection conn) {
//		try {			
//			if(pstmt !=null) pstmt.close();
//			if(conn !=null) conn.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		//System.out.println("닫았다");
//	}
//	
//	public void dbClose(Connection conn) {
//		try {
//			if(conn !=null) conn.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		//System.out.println("닫았다");
//	}
//	
//	
//	
//	
//	
//			
//}
