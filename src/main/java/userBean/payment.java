package userBean;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import util.DBConnection;

public class payment {
	
	private int paymentId;
	private String userEmail;
	private String transactionId;
	private Timestamp transactionDate;
	private int amount;	
	private String status;
	

	
	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	public Timestamp getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Timestamp transactionDate) {
		this.transactionDate = transactionDate;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int addPayment() throws SQLException{
		
		//sql connection
		Connection conn = DBConnection.dbconnect();
		
		
		//SQL Query
		String sql = "insert into payment(userEmail,amount,status) values (?,?,?) ";
		
		//Statement (Set Data) & Execute
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, userEmail);
		ps.setInt(2, amount);
		ps.setString(3, "Pending");
		int pay = ps.executeUpdate();
		ResultSet rs = ps.getGeneratedKeys();
		int lastid=0;
		if(rs.next()) {
			lastid=rs.getInt(1);
		}
		

		conn.close();
		System.out.println(lastid);
		return lastid;	
	
	}
	
	public int updatePayment(String transactionid, int lastid) throws SQLException{
		
		//sql connection
		Connection conn = DBConnection.dbconnect();
		
		//SQL Query
		String sql = "update payment set transactionid = ? , status = ? where paymentId = ? ";
		
		//Statement (Set Data) & Execute
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, transactionId);
		ps.setString(2, "Succesfull");
		ps.setInt(3, lastid);
		
		
		int pay = ps.executeUpdate();
		conn.close();
		return pay;	
	
	}
	

}
