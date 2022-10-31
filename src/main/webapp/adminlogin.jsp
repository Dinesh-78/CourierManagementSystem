<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Management System</title>
<style>
div{
background-color: lightblue;
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
}
</style>
</head>
<body>
<center>
<div>
<h2>${error}</h2>
 <h1>Login Page</h1>
 <form action="checkadmin" method="post">
 <h1>Enter Username</h1>
 <input type="text" placeholder="Username" name="username" />
 <h1>Enter Password</h1>
 <input type="password" placeholder="Password" name="password" />
 <br>
 <br>
 <button>SUBMIT</button>
 </form>
 </div>
 </center>
</body>
</html>