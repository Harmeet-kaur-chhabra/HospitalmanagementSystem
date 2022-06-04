<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    text-align: center;
    background: url(blur.jpg);
    padding-top: 0%;
    padding-bottom: 10%;
    padding-left: 30%;
    padding-right: 30%;
}
form {
    border: 3px solid #f1f1f1;
    text-align: left;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid rgb(236, 223, 223);
  box-sizing: border-box;
  text-align: left;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}
</style>
</head>
<body>

<div style="color:rgb(236, 224, 224);"><h2 >HospDBMS |Patient Registeration </h2></div>



<form action="#" method="get">
  
  <div class="container">
  <label for="uname" style="color:rgb(236, 224, 224);"><b>Patient ID</b></label>
    <input type="text" placeholder="Patient ID" name="pid" required>
  
    <label for="uname" style="color:rgb(236, 224, 224);"><b>First Name</b></label>
    <input type="text" placeholder="Enter first name" name="uname" required>

    <label for="email" style="color:rgb(236, 224, 224);"><b>Address</b></label>
    <input type="text" placeholder="Enter address" name="add" required>

    <label for="psw" style="color:rgb(236, 224, 224);"><b>Password</b></label>
    <input type="text" placeholder="Enter password" name="uname" required>

    <label for="numer" style="color:rgb(236, 224, 224);"><b>Contact Number</b></label>
    <input type="text" placeholder="Contact number" name="cn" required>

    <label for="dob" style="color:rgb(236, 224, 224);"><b>Age</b></label>
    <input type="text" placeholder="Enter your age name="age" required>

    <label for="numer" style="color:rgb(236, 224, 224);"><b>Diseases</b></label>
    <input type="text" placeholder="Diseases name" name="diseases" required>
        
    <label for="numer" style="color:rgb(236, 224, 224);"><b>Gender</b></label>
    <input type="text" placeholder="Enter your gender" name="gn" required>
        
  </div>
  <span class="psw">Alredy have an account? <a href="patientlogin.jsp">Login</a></span>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="register">Register</button>
  </div>
</form>

</body>
</html>
