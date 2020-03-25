package dbConnnection;
import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
public class MyDBConnection {
	Connection con=null;
	public Connection openConnection()  throws Exception
	{
		
	Context ctx = new InitialContext();
	DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
	con = ds.getConnection();
	System.out.println(" ->. con " + con);
	return con;
	}

}
