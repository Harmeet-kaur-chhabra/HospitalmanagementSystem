<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    body{
        text-align: center;
        background-image: url(https://images5.alphacoders.com/351/thumb-1920-351885.jpg);
        padding-top: 10%;

    }
    form {
    border: 3px solid #f1f1f1;
    text-align: center;
    
    }
    .container{
        padding-left: 10%;
        padding-right: 10%;
        padding-top: 10%;
        padding-bottom: 10%;
        padding: 10%;

    }
    .admin{
        color:white ;
    }
    .btn{
        padding: 10px;
        margin-right:2% ;
        
    }
    

</style>
</head>
<body>
    <h1 class="admin">ADMIN | DASHBOARD</h1><br>

    <form action="/home.html" method="get">
    <div class="container">
        
        <button class="btn" style="float: center;"><i class="fa fa-user"></i>
            <i class="glyphicon glyphicon-user"></i> Manage Patients
        <p>total patient 2</p>
        </button>
        
        <button class="btn" style="float: center;"><i class="fa fa-user"></i>
            <i class="glyphicon glyphicon-user"></i>Manage Doctors
        <p>total patient 2</p>
        </button>

        <button class="btn" style="float: center;"><i class="fa fa-user"></i>
            <i class="glyphicon glyphicon-user"></i> Appointments
        <p>total patient 2</p>
        </button>
        
    </div>
</form>


</body>
</html>
