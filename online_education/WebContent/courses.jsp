<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="java.sql.*"%>
<%
	ResultSet resultset = null;
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Details</title>
<Style>

</Style>
</head>
<body>

</body>
<form method="post">

	<table border= "1" width="100%" >
		<tr>
			<td style="text-align:center"><b>Course Id</b></td>
			<td style="text-align:center"><b>Course Name</b></td>
			<td style="text-align:center"><b>Course Duration</b></td>
			<td style="text-align:center"><b>Course Fee</b></td>

		</tr>
		<%
		
		String name = "";
		String q = request.getParameter("q");
			try {
				Class.forName("com.mysql.jdbc.Driver");
				//String query1 = "select * from Student_Info where password = ?";
				String query = "select * from Course where(Course_Name='" + q + "');";
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test?user=root&password=root");
				Statement stmt = conn.createStatement();
				//PreparedStatement ps = conn.prepareStatement(query1);
				//String Course = request.getParameter("Course");
				//ps.setString(1,"Manis1");
				//ResultSet rs = ps.executeQuery();
				ResultSet rs = stmt.executeQuery(query);
				while (rs.next()) {
		%>
		<tr>
			<td style="text-align:center"><%=rs.getString("Course_Id")%></td>
			<td style="text-align:center"><%=rs.getString("Course_Name")%></td>
			<td style="text-align:center"><%=rs.getString("Course_Duration")%></td>
			<td style="text-align:center"><%=rs.getString("Course_Fees")%></td>

		</tr>
		<%
			}
		%>
	</table>
	<%
		rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</form>
</html>