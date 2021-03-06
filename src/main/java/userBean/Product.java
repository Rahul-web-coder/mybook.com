package userBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import util.DBConnection;

public class Product {

	int pId;
	String pName;
	String pAuthor;
	String pDescription;
	String pSeller;
	int pPrice;
	int pDiscount;
	String pImage;
	int pCategoryId;
	int pqty;
	public int getPqty() {
		return pqty;
	}
	public void setPqty(int pqty) {
		this.pqty = pqty;
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpAuthor() {
		return pAuthor;
	}
	public void setpAuthor(String pAuthor) {
		this.pAuthor = pAuthor;
	}
	public String getpDescription() {
		return pDescription;
	}
	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}
	public String getpSeller() {
		return pSeller;
	}
	public void setpSeller(String pSeller) {
		this.pSeller = pSeller;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int getpDiscount() {
		return pDiscount;
	}
	public void setpDiscount(int pDiscount) {
		this.pDiscount = pDiscount;
	}
	public String getpImage() {
		return pImage;
	}
	public void setpImage(String pImage) {
		this.pImage = pImage;
	}
	public int getpCategoryId() {
		return pCategoryId;
	}
	public void setpCategoryId(int pCategoryId) {
		this.pCategoryId = pCategoryId;
	}
	
	
	
	public Product() {
		super();
	}
	
	public Product(int pId, String pName, String pAuthor, String pDescription, String pSeller, int pPrice,
			int pDiscount, String pImage, int pCategoryId, int pqty) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pAuthor = pAuthor;
		this.pDescription = pDescription;
		this.pSeller = pSeller;
		this.pPrice = pPrice;
		this.pDiscount = pDiscount;
		this.pImage = pImage;
		this.pCategoryId = pCategoryId;
		this.pqty = pqty;
	}
	
	
	
	
	//getting email from the database for editing users data according to email & putting the fetched data from database of a particular user in edit form
		public int addBook() throws SQLException{
			
			//sql connection
			Connection conn = DBConnection.dbconnect();
			
			//SQL Query
			String sql = "insert into product (pName,pAuthor,pDescription,pSeller,pPrice,pDiscount,pImage,pQty,pCategoryId) values (?,?,?,?,?,?,?,?,?) ";
			
			//Statement (Set Data) & Execute
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, pName);
			ps.setString(2,pAuthor);
			ps.setString(3,pDescription);
			ps.setString(4,pSeller);
			ps.setInt(5,pPrice);
			ps.setInt(6,pDiscount);
			ps.setString(7,pImage);
			ps.setInt(8,pqty);
			ps.setInt(9,pCategoryId);
			
			int row = ps.executeUpdate();
			conn.close();
			return row;	
		}
	
	public ArrayList<Product> getAllProductsFromDB() throws SQLException
	{
		Connection conn = DBConnection.dbconnect();
		String sql = "select *from product";
		java.sql.PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Product> allStuds1 = new ArrayList<Product>();
		while(rs.next())
		{
			Product s1 = new Product();
			s1.setpId(rs.getInt("pId"));
			s1.setpName(rs.getString("pName"));
			s1.setpAuthor(rs.getString("pAuthor"));
			s1.setpDescription(rs.getString("pDescription"));
			s1.setpSeller(rs.getString("pSeller"));
			s1.setpPrice(rs.getInt("pPrice"));
			s1.setpDiscount(rs.getInt("pDiscount"));
			s1.setpImage(rs.getString("pImage"));
			s1.setpCategoryId(rs.getInt("pCategoryId"));
			s1.setPqty(rs.getInt("pQty"));
			allStuds1.add(s1);

			
		}
		
		
		return allStuds1;
	}

	
	
	public Product getAllProductsFromDB(int pid) throws SQLException
	{
		Connection conn = DBConnection.dbconnect();
		String sql = "select *from product where pId=?";
		java.sql.PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, pid);
		ResultSet rs = ps.executeQuery();
		Product p5=null;
		if(rs.next())
		{
			int id=rs.getInt("pId");
			String name=rs.getString("pName");
			String author=rs.getString("pAuthor");
			String description=rs.getString("pDescription");
			String seller=rs.getString("pSeller");
			int price=rs.getInt("pPrice");
			int discount=rs.getInt("pDiscount");
			String image=rs.getString("pImage");
			int category=rs.getInt("pCategoryId");
			int pqty= rs.getInt("pqty");
			p5=new Product(id,name,author,description,seller,price,discount,image,category,pqty);
			
		}

		return p5;
	}
	
	
	
	
	public int totalBooks() throws SQLException{
		Connection conn = DBConnection.dbconnect();
		String sql = "select count(*) as book from product";
		java.sql.PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		int count=0;
		if(rs.next()) {
			count=rs.getInt("book");
		}
		conn.close();
		return count;
		
	}
}
