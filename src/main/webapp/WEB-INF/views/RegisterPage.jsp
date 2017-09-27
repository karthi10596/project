<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTERATION PAGE</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body
  {
  background-color:white;
  }
  .form:form-control{
  width:100px;
  }
  form fieldset a:hover { text-decoration: underline; }
  </style>
</head> 
<body>
<div class="container">
  <center><h2>Registeration form</h2></center>
<form:form action="register" method="post" commandName="user">
<fieldset>
    <label><b>FirstName</b></label>
    <form:input type="text" path="firstname" class="form-control" placeholder="Enter Firstname"/><br>
    <br><label><b>LastName</b></label>
    <form:input type="text" path="lastname" class="form-control" placeholder="Enter Lastname"/><br>
    <br><label><b>UserName</b></label>
    <form:input type="text" path="username" class="form-control" placeholder="Enter Username"/><br>
     <br><label><b>Password</b></label>
    <form:input type="password" path="password" class="form-control" placeholder="Enter Password"/><br>
    <br><label><b>Address</b></label> 
    <form:input type="text" path="address" class="form-control" placeholder="Enter address"/><br>
     <br><label><b>Email-Id</b></label>
    <form:input type="email" path="email" class="form-control" placeholder="Enter E-mail"/><br>
    <label><b>date of birth</b></label>
    <form:input type="text" path="DateofBirth" class="form-control" placeholder="Enter date of birth"/><br>
     <input type="submit" value="Submit"/>
</fieldset>
  </form:form>
</div>
</body>
</html>