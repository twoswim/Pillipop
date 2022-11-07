package com.kh.pillipop.common;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	// 공통부 코드를 작성
	// 1. JDBC 관련 드라이버 로드 
	// 2. connection 관리
	// 3. 객체들 close

	public static Connection getConnection() {
		Connection connection = null;
		Properties porp = new Properties();
		
		try {
			// class 실행 경로의 path를 가져오는 방법  ※ 주의 : 한글이 경로에 있으면 실행 불가.
			String path = JDBCTemplate.class.getResource("./driver.properties").getPath();
			path = path.replace("%20", " ");
			porp.load(new FileReader(path));
			
			Class.forName(porp.getProperty("db.driver"));
			String url = porp.getProperty("db.url");
			String name = porp.getProperty("db.username");
			String pw = porp.getProperty("db.password");
			
			connection = DriverManager.getConnection(url, name, pw);
			connection.setAutoCommit(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	public static void commit(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.commit();				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void rollback(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.rollback();				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement statusment) {
		try {
			if(statusment != null && !statusment.isClosed()) {
				statusment.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet resultSet) {
		try {
			if(resultSet != null && !resultSet.isClosed()) {
				resultSet.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
