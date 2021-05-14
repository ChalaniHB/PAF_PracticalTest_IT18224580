<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.Customer"%>


 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/customers.js"></script>
</head>
<body>
<div class="container">
 <div class="row">
 <div class="col-6">
	
	<h1>Customer Management </h1>
	<form id="formCustomer" name="formCustomer">
	
	Customer Name: 
	<input id="customerName" name="customerName" type="text" class="form-control form-control-sm">
	<br>Address: 
	<input id="address" name="address" type="text" class="form-control form-control-sm">
    <br>Phone Number:
	<input id="phoneNumber" name="phoneNumber" type="text" class="form-control form-control-sm">
 	<br>Email:
	<input id="email" name="email" type="text" class="form-control form-control-sm">
 	<br>
	<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
 	<input type="hidden" id="hidCustomerIDSave" name="hidCustomerIDSave" value="">
	</form>
	
	<div id="alertSuccess" class="alert alert-success"></div>
	<div id="alertError" class="alert alert-danger"></div>
	<br>
	<div id="divCustomersGrid">
	
	<%
	
		Customer customerObj = new Customer();
		out.print(customerObj.readCustomers());
	
	%>
	</div>
</div>
</div>
</div>
</body>
</html>