<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Received data from student table</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
h4{
color:blue;
text-align:center;
}
</style>
</head>
<body>
<img alt="" src="img/congratulations.jpg" class="mx-auto d-block" style="height: 200px;">
           <hr/>

<div class="container">
             
  <table class="table table-bordered">
    <thead>
      <tr bgcolor="yellow">
        <th>User Name</th>
        <th>Password</th>
        <th>Name</th>
        <th>Email</th>
        <th>SSN</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach items="${userslist}" var="usr">
      		<tr>
        		<td>${usr.username}</td>
        		<td>${usr.password}</td>
        		<td>${usr.name}</td>
       			 <td>${usr.email}</td>
       			 <td>${usr.ssn}</td>
      		</tr>
      	</c:forEach>
      
    </tbody>
  </table>
</div>

<div class="row justify-content-center">
<a class="btn btn-danger" href="login.jsp" type="submit">Exit</a>
</div>

</body>
</html>