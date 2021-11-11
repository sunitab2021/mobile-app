<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
</head>
<body>
<header style="height: 30px;background-color: yellow;">
    
    </header>
    <div class="container">
        <img alt="" src="img/person.png" style="height: 100px;">
        
        <form action="RegistrationServlet" method="post">
<label>User Name</label>
<input type="text" name="username" class="form-control" style="width: 60%;">
<label>Password</label>
<input type="password" name="password" class="form-control" style="width: 60%;">
<label>Full Name</label>
<input type="text" name="fullname" class="form-control" style="width: 60%;">
<label>Email</label>
<input type="email" name="email" class="form-control" style="width: 60%;">
<label>Gender</label>
<select  name="gender" class="form-control" style="width: 60%;">
    <option>Male</option>
     <option>Female</option>
     <option>Transient</option>
      <option>other </option>
</select>
<br/>
<button type="submit" class="btn btn-primary">Sign In</button>
</form>
    
    </div>
</body>
</html>