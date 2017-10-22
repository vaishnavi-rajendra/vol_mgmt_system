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
<title>Volunteer Education Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<style>
table{
border-spacing:1em;}
</style>
<script language="JavaScript" type="text/javascript">
<!--
function checkform ( form )
{
  var phoneno=/^\d{10}$/;
	
		
if(form.vname.value==""|| form.vid.value==""||form.vcid.value==""|| form.vemail.value==""|| form.vcontact.value==""||form.textarea1.value==""|| !

form.vcontact.value.match(phoneno))
	{
	if(!form.vcontact.value.match(phoneno) && !form.vcontact.value=="")
		{
		alert("Invalid contact information");
		return false;
		}
	else
		{
	alert("all fields must be filled ");
	return false;
	}
	}

	

else 
	{
	
	return true;}
}
</script>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>
		</div>
		<div id="menu">
			<ul>
				
				<li><a href="homepage.jsp" accesskey="2" title="">Logout</a></li>
				
			</ul>
		</div>
	</div>
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
										<h2 style="font-family:carlito;font-style:italic;font-weight:bold; 

color:#006666">REGISTRATION</h2>

					
					<form action="compvolunteerregister" method="post" onsubmit="return checkform(this)";>
				<center>
					
					
<table style="margin-top:-20%; margin-right:-35%;">
<div>
<img src="images/register4.jpg" style="float=:left; margin-left:-65%; margin-right:-10%;"></img>
</div>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Name:</td><td><input type="text" name="vname" id="vname">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Volunteer ID:</td><td><input type="text" name="vid" id="vid">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Company ID:</td><td><input type="text" name="vcid" id="vcid">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Email:</td><td><input type="email" name="vemail" id="vemail">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Address:</td><td> <TEXTAREA NAME="textarea1" ROWS="5"></TEXTAREA>
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Contact:</td><td><input type="text" name="vcontact" id="vcontact">
</td></tr>
</table>

<input type="submit" style="font-family: 'carlito';font-size:medium;color: white; background-color: blue; margin-right:-40%;height:30px;width:75px;border-radius:10px;" 

value="Register">
   

</center>
  
</center>
  </form>
 


 </body>
 
 </div>
			</div>
		</div>
	</div>
	</div>
	
	<div id="footer" class="container">
	
</div>
</html>
	
