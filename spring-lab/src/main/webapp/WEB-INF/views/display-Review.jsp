<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review</title>
<link rel="stylesheet" href="/style.css" /> 
</head>
<body>
	<div class="header2">
		Let us know how we're doing!
		</div>
	<div class="form">
            <form>
          
              <label for="name">Name</label>
              <input type="text" id="fname" name="firstname" placeholder="Your name..">
          
          	  <label for="name">Rating</label>
          	  <div id="stars">
			  <div class="rate">
    <input type="radio" id="star5" name="rate" value="5" />
    <label for="star5" title="text">5 stars</label>
    <input type="radio" id="star4" name="rate" value="4" />
    <label for="star4" title="text">4 stars</label>
    <input type="radio" id="star3" name="rate" value="3" />
    <label for="star3" title="text">3 stars</label>
    <input type="radio" id="star2" name="rate" value="2" />
    <label for="star2" title="text">2 stars</label>
    <input type="radio" id="star1" name="rate" value="1" />
    <label for="star1" title="text">1 star</label>
  </div></div>
          
              <br><label for="comments">Comments</label>
              <textarea id="subject" name="subject" placeholder="Any additional comments?" style="height:200px"></textarea>
          
              <a href="/form"><section class="button">Submit</section></a>
          
            </form>
        </div>
	<footer>
	<section class="buttons"><a href="/index" class="button">Back home</a></section>
	</footer>
</body>
</html>