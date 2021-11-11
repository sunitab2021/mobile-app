<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Demo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<img alt="" src="img/person.png" style="height:100px"><hr/>
  ${username}
  <h2>Login form</h2>
  <form action="abc">
    <div class="form-group">
      <label for="username">User Name:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter Username" name="username">
    </div>
    
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
    
    <button type="submit" class="btn btn-primary">Search</button>
    <button type="Reset" class="btn btn-primary">Reset</button>
    <a href="registration.jsp">
<button type="button" class="btn btn-danger">New Registration</button>
</a>
  </form>
</div>
</body>
</html>