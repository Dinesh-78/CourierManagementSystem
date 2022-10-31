<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/index.css"  />
<title>Insert title here</title>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
</style>
</head>
<body>

<ul>
  <li><a href="/">HOME</a></li>
  <li><a href="/about">ABOUT</a></li>
  <li><a href="pricing">PRICING</a><li>
  <li><a href="/booking">BOOKING</a></li>
   <li><a href="adminlogin">ADMIN</a></li>
  <li><a href="userlogin">CUSTOMER</a></li>
  <li><a href="userreg">REGISTER</a></li>
  <li style="float: right;"><a href="/logout">LOG OUT</a></li>
  <li style="float: right;"><a >${name}</a></li>
  
  
</ul>
<img src="images/44.jpg" alt="">
 <div class="tail">
        
        <div class="row">
           <div class="col">
              <h3>Other services</h3>
              <ul>
                  <li><a>Groceries Delivery</a></li>
                  <li><a>Book Daily wage Workers </a></li>
                  <li><a>Transport</a> </li>
                  <li><a>Document Details</a></li>
              </ul>
           </div>
           <div class="col">
              <h3>Quick links</h3>
              <ul>
                  <li><a>Track the Order</a></li>
                  <li><a>Your Bills </a></li>
              </ul>
           </div>
           <div class="col">
              <h3>Social Media</h3>
              <ul>
                  <li> <a> facebook</a></li>
                  <li class="inst">  Instagram</li>
                  <li class="twit">  Twitter</li>
              </ul>
           </div>
           <div class="comment">
            <h4>Leaving a single comment helps  to growth our company</h4>
            <input placeholder="comment me" />
             <button>Submit</button>
            </div>
        </div>
        <div class="cards">
            
            <div class="card">
                <h1> Our Deliveries</h1> 
                <br>
                <h1>+100</h1>              
            </div>
            <div class="card">
                <h1>Our Customers</h1> 
                <br>
                <h1>+100</h1>   
            </div>
            <div class="card">
                <h1>Our Branches</h1>
                
                <br>
                <h1>+100</h1>
            </div>
            <div class="card">
                <h1>Our Employees</h1>
                <br>
                <h1>+100</h1>           
            </div>
            </div>
        
       
       </div> 
</body>
</html>