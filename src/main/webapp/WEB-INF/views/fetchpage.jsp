<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>                                                              
<%@page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FETCH PAGE</title>
</head>  
<body>

        <table border="1" cellpadding="5">
            <tr>
                <th>firstname</th>
                <th>lastname</th>
                <th>username</th>
                <th>Password</th>
                <th>email</th>
                <th>address</th>
                <th>delete</th>
                <th>edit</th>
            </tr>
            <c:if test="${!empty userlist}">
            <c:forEach items="${userlist}" var="user">
                <tr>
                    <td>${user.firstname}</td>
                    <td>${user.lastname}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.email}</td>
                    <td>${user.address}</td>
                     <td><a href="delete?uid=${user.username}">delete</a></td> 
           			<td><a href="edit?uid=${user.username}">edit</a></td>
            </tr>
            </c:forEach>
            </c:if>
            
        </table>
    

</body> 
</html> 