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
    background: url(https://wallpaperaccess.com/full/2473955.png);
    padding-top: 8%;
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
  color: black;
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

<div style="color:rgb(236, 224, 224);"><h2 >HospDBMS | Admin Login </h2></div>



<form action="AdminLoginServlet" method="post">
  
  <div class="container">
    <label for="uname" style="color:rgb(236, 224, 224);"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw" style="color:rgb(236, 224, 224);"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
  </div>
  <span class="psw">Don't have an account? <a href="adminreg.jsp">Create account</a></span>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="loginbtn"><a href="admindashboard.jsp">login</button>
  </div>
</form>

</body>
</html>
