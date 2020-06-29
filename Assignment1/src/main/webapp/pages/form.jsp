<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
label{
margin-left:50px;
}
h1{
margin-left:550px;
}
body{
background-color: powderblue;
}
.button
{
background-color: 	#F5F5F5;
border:solid;
align:center;
  width: 500px;
  text-align: center;
  margin:0 auto;
}
legend{
font-family: Arial, Helvetica, sans-serif;
}
label{
font-size:12.5px;
font-family: Arial, Helvetica, sans-serif;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

</style>
<title>Insert Details</title>
</head>
<body ng-app="">


<h1>
Details to be entered
</h1>

<form  class="button"action="details" method="post">
<script 
   src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js">
</script>
<br>
<br>
<fieldset>
<legend align="left">
Personal Details
</legend>
<label for="cid"> Customer-Id </label>
<input type="number" name="cid" required>
<br>
<br>
<label for="cid"> Customer Name </label>
<input type="text" name="cname" maxlength="20" required >
</fieldset>
<br>
<br>
<br>

<fieldset>
<legend align="left">
Salary
</legend>
<div ng-app="a">
	   <input type="checkbox" ng-model="myVar1">
       <label for="csalary">Words</label>
	   <input ng-show="myVar1" type="text" name="csalary">
	   &emsp;
	   &emsp;
	   <input type="checkbox" ng-model="myNum">
	   <label for="cnsalary">Digits</label>
	   <input ng-show="myNum" type="Number" name="cnsalary" > 
	   
 </div>
 </fieldset>
<br>
<br>
<br>
<fieldset>
<legend align="left">Your Address</legend>
  Select your State:
  <select ng-model="myVar" name="state">
  
    <option value="UttarPradesh">UttarPradesh
    <option value="Uttrakhand">Uttrakhand
    <option value="Maharashtra">Maharashtra
  </select>
  <br><br>
  <div ng-switch="myVar">
  <div ng-switch-when="UttarPradesh">
  <label for="city">
  Select your City:
  </label>
    <select name="city">
	    <option value="">
	    
	    <option value="Lucknow">Lucknow
	    <option value="Kanpur">Kanpur
	    <option value="Agra">Agra
  </select>
  </div>
  <div ng-switch-when="Uttrakhand">
  <label for="city">
  Select your City:
  </label>
    <select name="city">
	    <option value="">
	    <option value="Dehradun">Dehradun
	    <option value="Haridwar">Haridwar
	    <option value="Rishikesh">Rishikesh
  </select>
  </div>
  <div ng-switch-when="Maharashtra">
  <label for="city">
  Select your City:
  </label>
     <select name="city">
	    <option value="">
	    <option value="Mumbai">Mumbai
	    <option value="Nashik">Nashik
	    <option value="Pune">Pune
  	 </select>
  </div>
</div>
</fieldset>

<br><br><br><br><br>
<input type="submit">
<br>
<br>
</form>



</body>
</html> 