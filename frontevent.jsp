<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>





<form method="post">
<center><h2 class="alert-warning">My Events</h2></center>
<div class="container">         
  <table class="table table-bordered table-striped">
    
     <tr>
			<th>Title</th>
			<th>Description</th>
			<th>No of students</th>
			<th>skills</th>
			<th>No of volunteers</th>
		</tr>
    
	
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost/dell", "root", "root");
				Statement st = con.createStatement();
				/*Object idcom=session.getAttribute("comid");
				String id=(String)idcom;
				System.out.println("comid"+id);*/
				ResultSet rs = st.executeQuery("select * from events");
				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(2)%></td>
		
			<td><%=rs.getString(5)%></td>
			
			<td><%=rs.getString(6)%></td>
		
			<td><%=rs.getString(7)%></td>
		
			<td><%=rs.getString(9)%></td>
		</tr>
		
	<% 
			}
	%>
	</table>
	<%
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<table>

</table>
</div>

</form>
</body>
</html>


