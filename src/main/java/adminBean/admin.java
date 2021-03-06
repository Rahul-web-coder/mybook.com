package adminBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBConnection;

public class admin {
	private String email;
	private String password;
	private String Status;
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
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	//login if data is present in database
	public admin adminLogin() throws SQLException{
		
		//sql connection
		Connection conn = DBConnection.dbconnect();
		
		//SQL Query
		String sql = "select *from admin where adminEmail = ? and adminPassword = ?";
		
		//Statement (Set Data) & Execute
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, password);
		
		//t is a container its work is to get all the data from table(users) from database. it is used when select command is used
		ResultSet rs = ps.executeQuery();
		
		admin ad = new admin();
		if(rs.next()) {
			
			String e = rs.getString("adminEmail");
			String n = rs.getString("adminPassword");
			
			ad.setEmail(e);
			ad.setPassword(n);
			
		}
		else {
			ad=null;
		}
		return ad;	
		
	}
	

	public static int delete(int id){  
        int status=0;  
        try{  
        	Connection conn =  DBConnection.dbconnect();  
            PreparedStatement ps=conn.prepareStatement("delete from product where pId=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            conn.close();  
        }catch(Exception e){e.printStackTrace();}  
         
        return status;
    }  
	
	public static int deletebookcategory(int id){  
        int status=0;  
        try{  
        	Connection conn =  DBConnection.dbconnect();  
            PreparedStatement ps=conn.prepareStatement("delete from product_category where pCategoryId=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            conn.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
	
	public int updatebookstatus(int id){  
        int stat=0;  
        try{  
        	Connection conn =  DBConnection.dbconnect();  
            PreparedStatement ps=conn.prepareStatement("update my_orders set status=? where orderId=?");  
            ps.setString(1, getStatus());
            ps.setInt(2,id);  
            stat=ps.executeUpdate();  
              
            conn.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return stat;  
    }
	
}
