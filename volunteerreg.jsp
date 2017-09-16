<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VOLUNTEER REGISTRATION</title>
</head>
<body>
<form action="redirection1" method="post">
  First name:<br>
  <input type="text" name="firstname"><br>
  Last name:<br>
  <input type="text" name="lastname"><br>
  Phone number:<br>
  <input type="number" name="phno"><br>
  Address:<br>
  <input type="varchar(50)" name="addr"><br>
   email id:<br>
  <input type="varchar(30)" name="email"><br><br>
  <select>
    <option value="student">Student</option>
  <option value="non-student">Non-Student</option>
  
</select>
  
  <input type="submit" value="register">

  
</form>
</body>
</html>