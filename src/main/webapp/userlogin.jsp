<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Management System</title>
<style>
div{
background-color: lightgreen;
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
}
</style>
</head>
<body>
<center>
<h2>${error}</h2>

<div>
 <h1>Login</h1>
 <form action="checklogin" method="post">
 <h2>Enter Username</h2>
 <input type="text" placeholder="Username" name="id" />
 <h2>Enter Password</h2>
 <input type="password" Password" name="password" />
 <br>
 <br>
 <button>SUBMIT</button>
 </form>

 </div>
  </center>
</body>
</html>