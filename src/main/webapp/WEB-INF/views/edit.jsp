<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</ title>
</head>
<body>
<form:form action="edituser" method="post" commandName="user1">
<fieldset>
    <label><b>FirstName</b></label>
    <form:input type="text" path="firstname" value="${userdata.firstname}" class="form-control" placeholder="Enter Firstname"/><br>
    <br><label><b>LastName</b></label>
    <form:input type="text" path="lastname" value="${userdata.lastname}" class="form-control" placeholder="Enter Lastname"/><br>
    <br><label><b>UserName</b></label>
    <form:input type="text" path="username" value="${userdata.username}" class="form-control" placeholder="Enter Username"/><br>
     <br><label><b>Password</b></label>
    <form:input type="password" path="password" value="${userdata.password}" class="form-control" placeholder="Enter Password"/><br>
    <br><label><b>Address</b></label> 
    <form:input type="text" path="address" value="${userdata.address}" class="form-control" placeholder="Enter address"/><br>
     <br><label><b>Email-Id</b></label>
    <form:input type="email" path="email" value="${userdata.email}" class="form-control" placeholder="Enter E-mail"/><br>
    <label><b>date of birth</b></label>
   
     <input type="submit" value="update"/>
</fieldset>
 </form:form>

</body>
</html>