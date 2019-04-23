<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body,html{
height:100%;width:100%;}
#header{
height:15% ;width:100%; color:white; background-image:url("patientportal_header2.jpg") ;font-family:century gothic ;}
#leftdiv1{
height:65% ;width:2%;float:left;}
#leftdiv{
height:65% ;width:45%; color:black;float:left;}
#rightdiv{
height:65% ;width:40%; color:black;float:right;text-align:;font-family:corbel;}

input[type=text],[type=password], select {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
 }
 input[type=submit],[type=reset] {
  width: 50%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;  
  cursor: pointer;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script> 
function validate()
{ 
 var UserId = document.form.UserId.value; 
 var Password = document.form.Password.value;
 
 if (UserId==null || UserId=="")
 { 
 alert("User Id cannot be blank"); 
 return false; 
 }
 else if(Password==null || Password=="")
 { 
 alert("Password cannot be blank"); 
 return false; 
 } 
}
</script> 
</head>
<body>
<div id="header"><b><h1>PATIENT HEALTH MONITORING PORTAL</h1></b><br></div>
<br>
<br>
<div id="leftdiv"> <img src="jug.jpg" alt="no image" style="height:100%; width:100%"></div>
<div id="rightdiv">
<br>
<form name="form" action="LoginController" method="post" onsubmit="return validate()">
<!-- Do not use table to format fields. As a good practice use CSS -->
<table align="center">
 <tr>
 <td>User Id      </td>
 <td><input type="text" name="UserId" /></td>
 </tr>
 <tr>
 <td>Password     </td>
 <td><input type="password" name="Password" /></td>
 </tr>
 <tr> <!-- refer to the video to understand request.getAttribute() -->
 <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Login"></input> 	
 <input type="reset" value="Reset"></input></td>
 </tr>
 <tr>
                                                                             <td><a href="Doctor.jsp">new user</a></td>
                                                                        </tr>
</table>
</form>
 </div>
</body>
</html>