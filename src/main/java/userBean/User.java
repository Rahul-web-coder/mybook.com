package userBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import staffBean.Staff;
import util.DBConnection;

public class User {
	private String eid;
	private String username;
	private String contact;
	private String address;
	private String email;
	private String password;
	private int status;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public int login() throws SQLException
	{
		Connection conn = DBConnection.dbconnect();
		String sql="Select * from user where userEmail=? and userPassword=?";
		
		int result=0;
		java.sql.PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setString(1, email);
		ps.setString(2, password);
		System.out.println(email);
		System.out.println(password);
		
		ResultSet rs= ps.executeQuery();
		
		
		User s1 = new User();
		
		if(rs.next())
		{
			s1.setUsername(rs.getString("userName"));
			s1.setEmail(rs.getString("userEmail"));
			s1.setContact(rs.getString("userContact"));
			s1.setAddress(rs.getString("userAddress"));
			s1.setPassword(rs.getString("userPassword"));
			if(rs.getInt("status")==0)
			{
				result=1;
			}
			s1.setStatus(rs.getInt("status"));
		
			
		}
		else
		{
			result=2;
		}
		
		
		return result;
	}
	public int addUser() throws SQLException
	{
		Connection conn =  DBConnection.dbconnect();
		String sql="insert into user (userName,userEmail,userContact,userAddress,userPassword,status) values(?,?,?,?,?,?)";
		java.sql.PreparedStatement ps1 = conn.prepareStatement(sql);
		ps1.setString(1, username);
		ps1.setString(2, email);
		ps1.setString(3, contact);
		ps1.setString(4, address);
		ps1.setString(5, password);
		ps1.setInt(6, 0);
		int row = ps1.executeUpdate();
		conn.close();
		return row;
	}
	
	public int check_duplicate_user(String email1) throws SQLException{
		
		Connection conn = DBConnection.dbconnect();
		
		String sql ="SELECT COUNT(*) FROM user where userEmail='"+email1+"'";
		
		Statement st=conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		String Countrow = rs.getString(1);
		if(Countrow.equals("0")){
			return 0;
		}
		else {
			return 1;
		}
		
		
	}
	
	//getting email from the database for editing users data according to email & putting the fetched data from database of a particular user in edit form
	public User getDetailsByEmail() throws SQLException{
		
		//sql connection
		Connection conn = DBConnection.dbconnect();
		
		//SQL Query
		String sql = "select *from user where userEmail = ? ";
		
		//Statement (Set Data) & Execute
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, email);
		
		
		
		//t is a container its work is to get all the data from table(users) from database. it is used when select command is used
		ResultSet rs = ps.executeQuery();
		
		User u1 = new User();
		if(rs.next()) {
			
			String e1 = rs.getString("userEmail");
			String n = rs.getString("userName");
			String add = rs.getString("userAddress");
			String contact = rs.getString("userContact");
			
			
			u1.setUsername(n);
			u1.setEmail(e1);
			u1.setAddress(add);
			u1.setContact(contact);
			//u1.setPassword(rs.getString("userPassword"));
			
			
		}
		else {
			u1=null;
		}
		return u1;	
		
	}
	
	

public ArrayList<User> getAllUsers() throws SQLException
{
	Connection conn = DBConnection.dbconnect();
	String sql = "select *from user ORDER BY userId DESC";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	ArrayList<User> allUsers = new ArrayList<User>();
	while(rs.next())
	{	
		//u1.setPassword(rs.getString("userPassword"));
		
		User u1 = new User();
		u1.setEid(rs.getString("userId"));
		u1.setEmail(rs.getString("userEmail"));
		u1.setUsername(rs.getString("userName"));
		u1.setAddress(rs.getString("userAddress"));
		u1.setContact(rs.getString("userContact"));
	
		allUsers.add(u1);

		
	}
	
	
	return allUsers;
}


public int totalUsers() throws SQLException{
	Connection conn = DBConnection.dbconnect();
	String sql = "select count(*) as totalUser from user";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	int count=0;
	if(rs.next()) {
		count=rs.getInt("totalUser");
	}
	conn.close();
	return count;
	
}
	

}