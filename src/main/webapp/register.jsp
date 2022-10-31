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
background-color: yellow;
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
}
</style>
</head>
<body>
<center>
<div class="divi">
<form action="adduser" method="post" modelAttribute="usr" >


<h2>${name}</h2>
 <h2>REGISTER</h2>
 <h2>Enter Userid</h2>
 <input type="text" placeholder="User ID" name="id" />
  <h2>Enter Email</h2>
 <input type="text" placeholder="EMAIL" name="email" />
  <h2>Enter Password</h2>
 <input type="password" placeholder="PASSWORD"  name="password" />
 <br>
 <br>
 <button>SUBMIT</button>
<button> <a href="/userlogin">Login</a></button>

</form>
</div>
</center>
</body>
</html>