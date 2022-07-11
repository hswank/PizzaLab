<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pizza Builder</title>
<link rel="stylesheet" href="/style.css" /> 
</head>
<body>
<div class="form">
	<form action="/calcTotal" method="get">
		<label for="cars">Choose a size:</label>

		<select name="size" id="size">
	  		<option value="small">Small $7</option>
	  		<option value="medium">Medium $10</option>
	  		<option value="large">Large $12</option>
		</select>
		
		How many toppings? (0-10)<input min=0 max=10 value=0 type="number" name="topCount" required /><br><br>
		
		<input type="checkbox" id="glutenFree" name="noGluten" value=true>
		<label for="glutenFree"> Gluten-free crust ($2.00 extra)</label><br><br>

		Special instructions(Optional):
		<input type="text" name="special" id="specialInstructions"/>
		
		<input type="submit">
	</form>
</div>

	<footer>
	<section class="buttons"><a href="/index" class="button">Back home</a></section>
	</footer>
</body>
</html>