package p1;

import java.sql.*;


public class AdminDao 
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

	public static int save(Admin obj)
	{
		int status=0;
		try{

			Connection con=AdminDao.getConnection();
			PreparedStatement ps=con.prepareStatement ("insert into Admin_info "+" (first_name,last_name,age,gender,contact,email,password,associate_id) values (?,?,?,?,?,?,?,?)");
			ps.setString(1, obj.getFirst_name());
			ps.setString(2, obj.getLast_name());
			ps.setInt(3, obj.getAge());
			ps.setString(4,obj.getGender());
			ps.setString(5, obj.getContact());
			ps.setString(6, obj.getEmail());
			ps.setString(7, obj.getPassword());
			ps.setInt(8, obj.getAssociate_id());

			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception ex){ex.printStackTrace();}
		return status;
	}
	
	public static ResultSet login(int id, String pass)
	{
		ResultSet rs = null;
		Connection con = AdminDao.getConnection();
		try{
			String query = "Select * from Admin_info where associate_id = ? and password = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
}