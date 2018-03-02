package com.ms.dao;
import java.sql.*;

public class DBCon {
	private static Connection conn = null;
	public static Connection getConn(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String user="root";
			String pwd="111111";
			String url="jdbc:mysql://localhost:3306/music";
			conn=DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
