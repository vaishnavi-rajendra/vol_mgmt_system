<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="com.sun.mail.util.MailSSLSocketFactory"%>
<%@ page import="java.io.IOException"%>
<%@page import=" java.sql.ResultSet"%>
<%@ page import=" java.sql.Statement"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import=" javax.servlet.ServletException"%>
<%@ page import=" javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.* "%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Voluntary Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body bgcolor="#E6E6FA">
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>>
		</div>
		<div id="menu">
			<ul>
				
				
				<li><a href="homepage.jsp" accesskey="2" title="">SIGNOUT</a></li>
				
			</ul>
		</div>
	</div>
	</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
<script language="JavaScript" type="text/javascript">
<!--
function checkform(form)
{
	if(form.email.value==""||form.cpassword.value==""||form.npassword.value==""||form.n1password.value==""||form.npassword.value!=form.n1password.value||form.cpassword.value!=form.pass.value){
		if((form.email.value!=""||form.cpassword.value!=""||form.npassword.value!=""||form.n1password.value!="")&&(form.npassword.value!=form.n1password.value))
			alert("Please confirm your new password correctly");
		else if((form.email.value!=""||form.cpassword.value!=""||form.npassword.value!=""||form.n1password.value!="")&&(form.cpassword.value!=form.pass.value))
		 alert("Enter your current password correctly");
		else 
			alert("Please fill all the fields");
		
		
		return false;
	}
	else
		{
		alert("Your password has been updated successfully");
	return true;
		}
	}
	</script>

<body>
<form action="changepass" method="post" onsubmit="return checkform(this)">
<center>
<table>
<tr><td>
<input type="hidden" name="pass" value=<%=session.getAttribute("pass").toString()%>></td></tr>
<tr><td>
<input type="hidden" name="type" value=<%=session.getAttribute("type").toString()%>></td></tr>
<tr><td>
<font color="black" style="font-family:Aharoni;font-size:160%;">Enter Your email:</font></td><td><input type="email" name="email"></td></tr>
<tr><td>
<font color="black" style="font-family:Aharoni;font-size:160%;">Enter Your current password:</font></td><td><input type="password" name="cpassword"></td></tr>
<tr><td>
<font color="black" style="font-family:Aharoni;font-size:160%;">Enter Your new password:</font></td><td><input type="password" name="npassword"></td></tr>
<tr><td>
<span id="password_strength"></span>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#txtPassword").bind("keyup", function () {
            //TextBox left blank.
            if ($(this).val().length == 0) {
                $("#password_strength").html("");
                return;
            }
 
            //Regular Expressions.
            var regex = new Array();
            regex.push("[A-Z]"); //Uppercase Alphabet.
            regex.push("[a-z]"); //Lowercase Alphabet.
            regex.push("[0-9]"); //Digit.
            regex.push("[$@$!%*#?&]"); //Special Character.
 
            var passed = 0;
 
            //Validate for each Regular Expression.
            for (var i = 0; i < regex.length; i++) {
                if (new RegExp(regex[i]).test($(this).val())) {
                    passed++;
                }
            }
 
 
            //Validate for length of Password.
            if (passed > 2 && $(this).val().length > 8) {
                passed++;
            }
 
            //Display status.
            var color = "";
            var strength = "";
            switch (passed) {
                case 0:
                case 1:
                    strength = "Weak";
                    color = "red";
                    break;
                case 2:
                    strength = "Good";
                    color = "darkorange";
                    break;
                case 3:
                case 4:
                    strength = "Strong";
                    color = "green";
                    break;
                case 5:
                    strength = "Very Strong";
                    color = "darkgreen";
                    break;
            }
            $("#password_strength").html(strength);
            $("#password_strength").css("color", color);
        });
    });
</script>



<font color="black" style="font-family:Aharoni;font-size:160%;">Confirm Your new password:</font></td><td><input type="password" name="n1password"></td></tr>
</table>



<br></br><input type="submit" style="font-family: 'Aharoni'; font-size: larger; color: blue; background-color: #FFFFC0; border: 3pt ridge lightgrey"  value="submit" >


</center>
</form>


</div>
</div>
</div>
</div>
</div>
</body>
</html>