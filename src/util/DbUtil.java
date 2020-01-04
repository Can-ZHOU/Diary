package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil {
	
	private String dbUrl="jdbc:mysql://localhost:3307/db_diary";
	private String dbUserName="root";
	private String dbPassword="zc_123456";
	private String jdbcName="com.mysql.jdbc.Driver";
	
	public Connection getCon() throws Exception{
		// Reflect
		Class.forName(jdbcName);
		Connection con = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);	
		return con;
	}
	
	public void closeCon(Connection con) throws Exception{
		if(con!=null) {
			con.close();
		}
	}
	
	// Test
	public static void main(String[] args) {
		DbUtil dbUtil = new DbUtil();
		try {
			dbUtil.getCon();
			System.out.println("Database connected successfully");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Database connected unsuccessfully");
		}
	}
}
