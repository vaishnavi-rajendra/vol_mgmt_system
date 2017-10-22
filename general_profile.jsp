<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>


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
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">volunteer management</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="homepage.jsp" accesskey="1" title="">Logout</a></li>
				<li><a href="changepass.jsp" accesskey="2" title="">Change Password</a></li>
				<li><a href="vol_register_course.jsp" accesskey="3" title="">Course register</a></li>
				
			</ul>
		</div>
	</div>
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
					
					
					
					<div class="container">         
  
	
		
		 <% 
		  
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost/dell", "root", "root");
				Statement st = con.createStatement();
				String id=session.getAttribute("param").toString();
			
				String reg_comp_id="",reg_company="",reg_course="",reg_username="",reg_course_id="";
				String fn="",ln="",pn="",ad="",t="",s="",i="",u="";
				int rem_stu=0,rem_vol=0;
				ResultSet res1 =st.executeQuery("select * from register_vol where email='"+id+"'");
				if(res1.next())
				{
					fn=res1.getString(1);
					ln=res1.getString(2);
					pn=res1.getString(3);
					ad=res1.getString(4);
					t=res1.getString(6);
					s=res1.getString(7);
					i=res1.getString(8);
					u=res1.getString(9);

					System.out.println(reg_username);
				}
				%>
				
				<font color="black" style="font-family:Aharoni;font-size:160%;">HII <%=u%></font>
				
				<%
				ResultSet res =st.executeQuery("select * from general_course_reg where email='"+id+"'");

				while(res.next())
				{
				     reg_comp_id=res.getString(1);
					 System.out.println("companyid"+reg_comp_id);
					reg_course_id=res.getString(2);
					System.out.println("profle details");
					reg_company=res.getString(3);
					reg_course=res.getString(6);
			}
			%><br>
			<br></br></br>
				<table>	<tr><td>
			
			 <font color="black" style="font-family:Aharoni;font-size:160%;">
			 First name:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			 <%=fn%></td></tr><tr><td>
			 <font color="black" style="font-family:Aharoni;font-size:160%;">
			 Last name:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			 <%=ln%></td></tr><tr><td>
			 <font color="black" style="font-family:Aharoni;font-size:160%;">
			 Phone number:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			 <%=pn%></td></tr><tr><td>
			  <font color="black" style="font-family:Aharoni;font-size:160%;">
			Address:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			<%=ad%></td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			Type:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			<%=t%></td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			SkillSet:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			<%=s%></td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			
			 ID:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			 <%=i%></td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			 
			Username:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			<%=u%></td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			
			Email ID:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			<%=id%></td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			Company:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			<%=reg_company%></td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			Company ID:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			<%=reg_comp_id%></td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			
			Course:</td><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			<%=reg_course%> </td></tr><tr><td> <font color="black" style="font-family:Aharoni;font-size:160%;">
			
			
		</tr>
		</table>
		<% 
						
				}
			catch(Exception e){
				e.printStackTrace();
				
			}
		%>
</table>
</div>
					
				
	
  	
 
	</form>	
			</div>
		</div>
	</div>
	</div>
			
			


</body>
<div id="footer" class="container">
	
</div>

</html>
