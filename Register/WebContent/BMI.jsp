<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ page import="bmiBean.bmi"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BMI</title>
<script>
function BMI()
{
	<% %>
}
</script>
</head>
<body>

<div style="text-align: center">
<h1>Patient Registration</h1>
</div>
<form name="form"  action="bmicontroller" method="post" >

<table align="center">

<tr>
<td>Height</td>
<td><input type="number"  name="Height" pattern="[-+]?[0-9]"></td>
</tr>
<tr>
<td>Weight</td>
<td><input type="number" step="any" name="Weight" pattern="[-+]?[0-9]*[.,]?[0-9]+"></td>
</tr>
<tr>
<td>BMI</td>
<td><jsp:useBean id="user" class="bmiBean.bmi" scope="request" />
<jsp:getProperty property="BMI" name="user" /></td>
</tr>
<tr>
<td></td>
<td><input type="button" onclick="BMI()" name="Calc" value="Calculate BMI"></td>

<td><input type="submit" name="BMI" value="Submit" ></td>
</table>
</form>
</html>