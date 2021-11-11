<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
h6{
color:darkblue;
text-align:center;
}
</style>
</head>
<body>
<img alt="" src="img/congratulations.jpg" class="mx-auto d-block" style="height: 200px;">
           <hr/>
<h6><b>Congratulations! ${userDTO.name} you have successfully logged in. Click the button below to check all the records.</b></h6>
<!--<div class="container">
             
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>User Name</th>
        <th>Password</th>
        <th>Name</th>
        <th>Email</th>
        <th>SSN</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${userDTO.username}</td>
        <td>${userDTO.password}</td>
        <td>${userDTO.name}</td>
        <td>${userDTO.email}</td>
        <td>${userDTO.ssn}</td>
      </tr>
      
    </tbody>
  </table>
</div>-->
<div class="row justify-content-center">
<a class="btn btn-danger" href="GetAllRecordsServlet" type="submit"> Click here to get all the records</a>
</div>
</body>
</html>