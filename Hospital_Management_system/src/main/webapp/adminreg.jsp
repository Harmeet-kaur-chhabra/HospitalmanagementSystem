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
    background: url(https://images.squarespace-cdn.com/content/v1/5cc9b9e1da50d3060b859b2e/1572867604707-3IBHYRIZKZX5A6N7Q90K/HEALTH+BG.png?format=2500w);
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
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
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

<div style="color:black;"><h2 >HospDBMS | Admin Registeration </h2></div>



<form action="AdminReg" method="post">
  
  <div class="container">
    <label for="uname" style="color:black;"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="email" style="color:black;"><b>Email</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw" style="color:black;"><b>Password</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>
        
  </div>
  <span class="ald" style="color:black;">Alredy have an account? <a href="adminlogin.jsp">Login</a></span>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="register">Register</button>
  </div>
</form>

</body>
</html>
