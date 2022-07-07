<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GC Pizza</title>
<link rel="stylesheet" href="/style.css" /> 
</head>
<body>
<div class="header">Welcome to GC Pizza!</div>
<center><div><section class="buttons"><a href="/pizza?type=meatLovers" class="button">Meat Lover's</a></section>
<section class="buttons"><a href="/pizza2?type=veggie" class="button">Vegetarian</a></section>
<section class="buttons"><a href="/pizza3?type=supreme" class="button">Supreme</a></section>
<section class="buttons"><a href="/builder?type=custom" class="button">Pizza Builder</a></section>
<section class="buttons"><a href="/review?type=rating" class="button">Leave us a review</a></section>
</div></center>
</body>
</html>