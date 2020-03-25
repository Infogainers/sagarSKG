package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbConnnection.MyDBConnection;

public class dao {
	static Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	public static boolean check(String username,String pwd,String role) throws Exception {
		conn=new MyDBConnection().openConnection();
		PreparedStatement ps= conn.prepareStatement("select * from Credentials where Username=? "
				+ "and Password=? and EmpId in(select EmpId from AmountEmployee where Role=?)");
		ps.setString(1, username);
		ps.setString(2, pwd);
		ps.setString(3, role);
		ResultSet rs= ps.executeQuery();
		if(rs.next()==true) {
			return true;
		}
		else{
			return false;
		}

	}
}
