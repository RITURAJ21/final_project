package p1;


import java.sql.*;


public class FeeDao 
{
	
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		}
		catch(Exception e)
		{System.out.println(e);}
		return con;
	}

	public static int save(Admin1 obj)
	{
		int status=0;
		try{

			Connection con=AdminDao.getConnection();
			PreparedStatement ps=con.prepareStatement ("insert into Fee_info "+" (Student_ID,Student_name,Stream,Fees_Fine,Total_Fees) values (?,?,?,?,?)");
			
			ps.setInt(1, obj.getStudent_ID());
			
			ps.setString(2, obj.getStudent_name());
			
			ps.setString(3,obj.getStream());
			ps.setInt(4, obj.getFees_Fine());
			ps.setInt(5, obj.getTotal_Fees());
			

			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception ex){ex.printStackTrace();}
		return status;
	}
	
	
		
	
	
	
	
	public static ResultSet login(int id)
	{
		ResultSet rs = null;
		Connection con = FeeDao.getConnection();
		try{
			String query = "Select * from Fee_info where Student_ID = ? ";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
}