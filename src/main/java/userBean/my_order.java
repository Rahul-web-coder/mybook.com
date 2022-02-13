package userBean;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.DBConnection;

public class my_order {
	private int orderId;
	private  String productName;
	private  int productPrice;
	private  int productQty;
	private  String productImg;
	private  String  buyerName;
	private  int totalPrice;
	private  String date;
	private  String status;
	private  int paymentId;
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String producName) {
		this.productName = producName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductQty() {
		return productQty;
	}
	public void setProductQty(int productQty) {
		this.productQty = productQty;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	public my_order() {
		
	}
	
	public my_order(int orderId, String productName, int productPrice, int productQty, String productImg, String buyerName,
			int totalPrice,String date, String status, int paymentId) {
		super();
		this.orderId = orderId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productQty = productQty;
		this.productImg = productImg;
		this.buyerName = buyerName;
		this.totalPrice = totalPrice;
		this.date = date;
		this.status = status;
		this.paymentId = paymentId;
	}
public int AddToBuyedProductToOrderTable() throws SQLException {
		
		Connection conn = DBConnection.dbconnect();
		String sql = "insert into my_orders (product_name,product_price,product_qty,product_img,buyer_name,total_price,status,paymentId)  values(?,?,?,?,?,?,?,?)";
		java.sql.PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, productName);
		ps.setInt(2, productPrice);
		ps.setInt(3, productQty);
		ps.setString(4, productImg);
		ps.setString(5, buyerName);
		ps.setInt(6, totalPrice);
		ps.setString(7, "Ordered");
		ps.setInt(8, paymentId);
		
		int row = ps.executeUpdate();
		conn.close();
		return row;
	}


public ArrayList<my_order> getAllProductsFromOrderByEmail() throws SQLException
{
	Connection conn = DBConnection.dbconnect();
	String sql = "select *from my_orders where buyer_name=?";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, buyerName);
	ResultSet rs = ps.executeQuery();
	ArrayList<my_order> allOrders = new ArrayList<my_order>();
	
	while(rs.next())
	{
		int orderId=rs.getInt("orderId");
		String productName=rs.getString("product_name");
		int productPrice=rs.getInt("product_price");
		int productQty=rs.getInt("product_qty");
		String productImg=rs.getString("product_img");
		String buyerName=rs.getString("buyer_name");
		int totalPrice=rs.getInt("total_price");
		String date=rs.getString("date");
		String status=rs.getString("status");
		int paymentId= rs.getInt("paymentId");
		
		my_order c5=new my_order(orderId,productName,productPrice,productQty,productImg,buyerName,totalPrice,date,status,paymentId);
		allOrders.add(c5);
		
	}
	
	
	return allOrders;
	}


public ArrayList<my_order> getAllOrders() throws SQLException
{
	Connection conn = DBConnection.dbconnect();
	String sql = "select *from my_orders ";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	
	ResultSet rs = ps.executeQuery();
	ArrayList<my_order> allOrders = new ArrayList<my_order>();
	
	while(rs.next())
	{
		int orderId=rs.getInt("orderId");
		String productName=rs.getString("product_name");
		int productPrice=rs.getInt("product_price");
		int productQty=rs.getInt("product_qty");
		String productImg=rs.getString("product_img");
		String buyerName=rs.getString("buyer_name");
		int totalPrice=rs.getInt("total_price");
		String date=rs.getString("date");
		String status=rs.getString("status");
		int paymentId= rs.getInt("paymentId");
		
		my_order c5=new my_order(orderId,productName,productPrice,productQty,productImg,buyerName,totalPrice,date,status,paymentId);
		allOrders.add(c5);
		
	}
	
	
	return allOrders;
	}



public ArrayList<my_order> getRecentOrders() throws SQLException
{
	Connection conn = DBConnection.dbconnect();
	String sql = "select *from my_orders ORDER BY orderId DESC LIMIT 10";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	
	ResultSet rs = ps.executeQuery();
	ArrayList<my_order> allOrders = new ArrayList<my_order>();
	
	while(rs.next())
	{
		int orderId=rs.getInt("orderId");
		String productName=rs.getString("product_name");
		int productPrice=rs.getInt("product_price");
		int productQty=rs.getInt("product_qty");
		String productImg=rs.getString("product_img");
		String buyerName=rs.getString("buyer_name");
		int totalPrice=rs.getInt("total_price");
		String date=rs.getString("date");
		String status=rs.getString("status");
		int paymentId= rs.getInt("paymentId");
		
		my_order c5=new my_order(orderId,productName,productPrice,productQty,productImg,buyerName,totalPrice,date,status,paymentId);
		allOrders.add(c5);
		
	}
	
	
	return allOrders;
	}



public int checkOrder() throws SQLException {
	
	Connection conn = DBConnection.dbconnect();
	String sql = "select count(*) as cartlen from my_orders where buyer_name=?";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, buyerName);
	ResultSet rs = ps.executeQuery();
	int count=0;
	if(rs.next()) {
		count=rs.getInt("cartlen");
	}
	conn.close();
	return count;
}


public int totalOrder() throws SQLException{
	Connection conn = DBConnection.dbconnect();
	String sql = "select count(*) as totalorder from payment";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	int count=0;
	if(rs.next()) {
		count=rs.getInt("totalorder");
	}
	conn.close();
	return count;
	
}


public int totalBookSold() throws SQLException{
	Connection conn = DBConnection.dbconnect();
	String sql = "select count(*) as totalBookSold from my_orders";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	int count=0;
	if(rs.next()) {
		count=rs.getInt("totalBookSold");
	}
	conn.close();
	return count;
	
}



public int totalsales() throws SQLException{
	Connection conn = DBConnection.dbconnect();
	
	String sql = "select sum(amount) as totalsales from payment";
	java.sql.PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	int count=0;
	if(rs.next()) {
		count=rs.getInt("totalsales");
	}
	conn.close();
	return count;
	
}

	
}
