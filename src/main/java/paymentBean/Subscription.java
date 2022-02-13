package paymentBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import util.DBConnection;

public class Subscription 
{
	private int paymentid,amount;

	private String transactionid,email;
	private String status;
	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	
	public int getPaymentid() {
		return paymentid;
	}

	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}

	public String getTransactionid() {
		return transactionid;
	}

	public void setTransactionid(String transactionid) {
		this.transactionid = transactionid;
	}

	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int addpayment() throws SQLException{
		Connection conn = DBConnection.dbconnect();
		String sql="insert into subscription(userEmail,amount,status) values(?,?,?)";
		java.sql.PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, email);
		ps.setInt(2, amount);
		ps.setString(3, "Pending");
		int row = ps.executeUpdate();
		conn.close();
		return row;
	}
	
	public int updatepayment(String transactionid,String email) throws SQLException{
		Connection conn = DBConnection.dbconnect();
		String sql="update subscription set transactionid=?, status=? where userEmail=?";
		java.sql.PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, transactionid);
		ps.setString(2, "Completed");
		ps.setString(3, email);
		int row = ps.executeUpdate();
		conn.close();
		return row;
	}
}