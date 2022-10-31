<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 20%;
  margin-right: 90px;
  float: left;
  margin-bottom: 16px;
  padding: 0 8px;
  height: 300px;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
}
</style>
</head>
<body>

<h2>Card</h2>
<div class="row">
<div class="card">
  <img src="images/superfast.webp" alt="Avatar" style="width:70%">
  <div class="container">
    <h4><b>Superfast Delivery(100 RS Accordning to distance )</b></h4> 
    <p>With in 1 days</p> 
  </div>
</div>
<div class="card">
  <img src="images/express.jpg" alt="Avatar" style="width:80%">
  <div class="container">
    <h4><b>Express Delivery(70 RS Accordning to distance )</b></h4> 
    <p>With in 2-3 days</p> 
  </div>
</div>
<div class="card">
  <img src="images/normal.jpg" alt="Avatar" style="width:100%">
  <div class="container">
    <h4><b>Normal Delivery(40 RS Accordning to distance )</b></h4> 
    <p>With in a week</p> 
  </div>
</div>
</div>
</body>
</html>