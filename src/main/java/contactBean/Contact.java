package contactBean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import userBean.User;
import util.DBConnection;

public class Contact {

	String name;
	String email;
	String mobile;
	String subject;
	String message;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	public int addUser() throws SQLException
	{
		Connection conn =  DBConnection.dbconnect();
		String sql="insert into contact (name,email,mobile,subject,message) values(?,?,?,?,?)";
		java.sql.PreparedStatement ps1 = conn.prepareStatement(sql);
		ps1.setString(1, name);
		ps1.setString(2, email);
		ps1.setString(3, mobile);
		ps1.setString(4, subject);
		ps1.setString(5, message);
		int row = ps1.executeUpdate();
		conn.close();
		return row;
	}

	
}
