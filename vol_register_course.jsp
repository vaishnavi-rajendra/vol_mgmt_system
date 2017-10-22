<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="javax.servlet.*"%>
<%@page import="java.util.Enumeration" %>
<%@page import="java.text.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Angled Theme 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20131104

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Angled Theme by TEMPLATED</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script 
<![endif]-->
</head>
<style>

table {  
    color: #333;
    font-family: Helvetica, Arial, sans-serif;
    width: 640px; 
    border-collapse: 
    collapse; border-spacing: 0; 
}

td, th {  
    border: 1px solid transparent; /* No more visible border */
    height: 30px; 
    transition: all 0.3s;
     /* Simple transition for hover effect */
}

th {  
    background: #DFDFDF;  /* Darken header a bit */
    font-weight: bold;
    font-size:150%; 
}

td {  
    background: #FAFAFA;
    text-align: center;
    font-size:120%; 
    width:15%;
}

/* Cells in even rows (2,4,6...) are one color */        
tr:nth-child(even) td { background: #F1F1F1; }   

/* Cells in odd rows (1,3,5...) are another (excludes header cells)  */        
tr:nth-child(odd) td { background: #FEFEFE; }  

tr td:hover { background: #666; color: #FFF; }  
/* Hover cell effect! */
</style>
<script>function check()
{
	alert("Registeration is successfull");
	}</script>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
						<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>

		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="homepage.jsp" accesskey="1" title="">Logout</a></li>
				<li><a href="changepass.jsp" accesskey="2" title="">Change Password</a></li>
				<li><a href="general_profile.jsp" accesskey="2" title="">View Profile</a></li>
				
			</ul>
		</div>
	</div>
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
					
					<form action="vol_register_course" method="post">
					<center><h2 class="alert-warning">Suggested Courses......</h2></center>
					<div class="container">         
  <table class="table table-bordered table-striped">
    <thead>
     <tr><center></center>
			<th>Company name</th>
			<th>Course</th>
			<th>Company id</th>
			<th>Course id</th>
			<th>Select</th>
		    </center>
		</tr>
    </thead>
	
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost/dell", "root", "root");
				Statement st = con.createStatement();
				String id=session.getAttribute("param").toString();
			
				String comp_skillset="",com_type="",volt_id="3",sug_com="",sug_comid="",sug_couid="",sug_title="";
				int rem_stu=0,rem_vol=0,i=0,j=0;
				
				ResultSet res1 =st.executeQuery("select * from register_vol where email='"+id+"'");
				
				
				while(res1.next())
				{ 
					comp_skillset=res1.getString(7);
					 com_type=res1.getString(6);
					 //vol_id=res1.getString(10);
					 //System.out.println(comp_skillset);
					 //String s  = "select * from vol_login where course='"+comp_skillset.toString()+"'";
				//System.out.println(s);
				ResultSet res =st.executeQuery("select * from events where skills like '%"+comp_skillset+"%'");
				
				    
	
				//System.out.println(res);
				while(res.next())
				{
					sug_title=res.getString(2);
				     sug_com=res.getString(3);
				     Date d=new Date();
						DateFormat df=new SimpleDateFormat("E MMM dd hh:mm:ss Z yyyy");
						Date date1=df.parse(d.toString());
						System.out.println("system date"+date1);
						Date d1=res.getDate(11);
						Date d2=res.getDate(12);
						System.out.println("fetch date"+d1);

						i=d1.compareTo(date1);
						j=date1.compareTo(d2);

						System.out.println("i="+i);
				     
					// System.out.println(sug_com);
					sug_comid=res.getString(4);
					sug_couid=res.getString(1);
					 rem_stu=(res.getInt(6));
					 rem_vol=(res.getInt(9));
					 System.out.println();
					 
			    if(com_type.equals("student")&& rem_stu>0 && i>=0  && j>=0  )
				{
					System.out.println(comp_skillset);
					System.out.println(sug_com);
					%>
					<tr>
						<input type="hidden" value=<%=sug_title%> name="title"></input>
					
			<input type="hidden" value=<%=sug_com%> name="company_name"></input>
		<input type="hidden" value=<%=comp_skillset%> name="course_name"></input>
			
			
			<input type="hidden" value=<%=sug_comid%> name="company_id"  ></input>
			<td><%=sug_com%></td>
			<td><%=comp_skillset%></td>
			<td><%=sug_comid%> </td>
			<td><%=sug_couid%> </td>
			<td><input type="radio" value=<%=sug_couid%> name="course_id"  ></input></td>
			
		</tr>
		<% 
				}		
				else if(com_type.equals("volunteer")&&rem_vol>0 && i>=0)
				{
					System.out.println(comp_skillset);
					System.out.println(sug_com);
					%>
					<tr>
								<input type="hidden" value=<%=sug_title%> name="title"></input>
					
		<input type="hidden" value=<%=sug_com%> name="company_name"></input>
		<input type="hidden" value=<%=comp_skillset%> name="course_name"></input>
		<input type="hidden" value=<%=sug_comid%> name="company_id"  ></input>
			<td><%=sug_com%></td>
			<td><%=comp_skillset%></td>
			<td><%=sug_comid%> </td>
				<td><%=sug_couid%> </td>
			
			<td><input type="radio" value=<%=sug_couid%> name="course_id"  ></input></td>
		</tr>
		<% 
				}
				
				}
				
			}
			}
			
			catch(Exception e){
				e.printStackTrace();
				
			}
		
		
			
	%>
</table>
</div>
					
				
	
  <input type="submit" style="font-family: 'Aharoni'; font-size: larger; color: blue; background-color: #FFFFC0; border: 3pt ridge lightgrey"  value="REGISTER" onclick="return check()" ></a>	
	</form>	
			</div>
		</div>
	</div>
	</div>
			
			


</body>
<div id="footer" class="container">
	
</div>

</html>