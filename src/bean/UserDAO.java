package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

	
	Connection con;
	PreparedStatement ps;
	public UserDAO() throws SQLException, ClassNotFoundException {
		String path = "jdbc:oracle:thin:@localhost:1521:XE";
		String username = "hr";
		String password = "hr";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(path,username,password);
		System.out.println("Connection Establish ----->> "+con);

}
	public void insert(User u) throws SQLException {
		ps = con.prepareStatement("insert into quizuser values(?,?,?,?)");
		ps.setString(1, u.getUsername());
		ps.setString(2, u.getPassword());
		ps.setLong(3, u.getAge());
		ps.setString(4, u.getTopic());
		ps.executeUpdate();
	}
	public ResultSet getAllQues(String arg2) throws Exception
	{   		
		ps = con.prepareStatement("select * from quiz ");
		ResultSet rs = ps.executeQuery();
    	 return rs;
	}
	public boolean ValidateUser(User u) throws Exception
	{
		boolean isValid = false;
		ps = con.prepareStatement("select * from quizuser where username=  ? and password = ?");
		ps.setString(1, u.getUsername());
		ps.setString(2, u.getPassword());
		
		ResultSet rs = ps.executeQuery();
		int i=0;
		while(rs.next()) {
			i++;
		}

		if(i>0)isValid = true;
		
		
		return isValid;
	}
}
