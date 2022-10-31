<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}
h2{
   text-align: center;
   background-color: pink;
}

div {
  float: left;
  width: 35%;
  padding: 0 20px;
  margin-right: 150px;
}


.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

</style>
</head>
<body>
<h1>${name}</h1>
<h2>Please fill details To Courier Your Item</h2>
      <form action="newcourier" method="post" modelAttribute="cour" >
      <label>User Id</label>
            <input type="text" id="fname" name="id" placeholder="Enter User Id">
            <h3>Courier Information</h3>
                <select id="type" name="method">
                <option value="Slow">Normal Delivery</option>
    			<option value="Express">Express Delivery</option>
  				</select>
  				
  			 <label><i class="fa fa-list-alt" aria-hidden="true"></i>Item</label>
  			 <input type="text" id="item" name="item" placeholder="Item name (If You Want )">
            <label><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="name" placeholder="Enter Name">
            <label ><i class="fa fa-envelope"></i> Phone Number</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <div>
            <h2>Sender Address</h2>
            <label ><i class="fa fa-address-card-o"></i> Sender Address</label>
            <input type="text" id="adr" name="saddress" placeholder="Sender Village/Town">
            <label ><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="scity" placeholder="City">
            <label for="state">State</label>
            <input type="text" id="state" name="sstate" placeholder="State">
            <label >Pin Code</label>
            <input type="text" id="zip" name="spincode" placeholder="Pincode">
             </div>
             <br>
             <div>
<h2>Receiver Address</h2>
            <label ><i class="fa fa-address-card-o"></i> Receiver Address</label>
            <input type="text" id="adr" name="raddress" placeholder="Receiver Village/Town">
            <label ><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="rcity" placeholder="City">
            <label for="state">State</label>
            <input type="text" id="state" name="rstate" placeholder="State">
            <label >Pin Code</label>
            <input type="text" id="zip" name="rpincode" placeholder="Pincode">
          </div>
           <button>SUBMIT</button>
          </form>

</body>
</html>