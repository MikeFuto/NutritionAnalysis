<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<!-- ====================================================================== -->	

 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    
    <!-- Bootstrap -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

  </head>
  
  
 <!-- ====================================================================== -->	 
  
  
  <body>
	
	<div class="container">	
	<jsp:include page="header.jsp"/>        
       <div class="col-lg-10 col-md-10">
       
     <h3><br><span class="text-success">${message}</span><br></h3>	
     
 <!-- ====================================================================== -->	 
       
    
 <!-- basic information -->
	    <form:form method="POST" action="${action}" modelAttribute="user" class="col-lg-5 col-md-5" >
	  
	<h3>Email and Password Information (required)</h3>		
		<label>Email</label>   
		<form:input type="email"  path="email" class="form-control"/>		
		<div class="has-error">
		 <form:errors path="email" class="text-danger"/>
		</div>
		
		<c:if test="${action ne 'updateUser'}">
		<label>Password</label>
		<form:input type="password" path="password" id="password" class="form-control" />		
		<div class="has-error">
		 <form:errors path="password" class="text-danger"/>
		</div>
		</c:if>	
			
		<form:input type="hidden" path="id" />		
		
		<br>
		<div >
		<button class="btn btn-success" type="submit" id="submit" >
		<c:choose>
		<c:when test="${action eq 'updateUser'}">Update</c:when>
		<c:otherwise>Submit</c:otherwise>		
		</c:choose>
		</button>
		
		<a class="btn btn-primary" href="index">Cancel </a>	
		</div>
		</form:form>
	
<br> <br> 			
		
 <!-- health information -->
 		
	<h3>Health Information</h3>
	
	 <form:form method="POST" action="${action}" modelAttribute="user" class="col-lg-5 col-md-5">
<br>
	<div class="form-group">
		<label for="street">Age.........</label>
		<input type="text" class="form-control" name="street" id="street" placeholder="Street">
	</div>
<br>
	<div class="form-group">
		<label for="city">Gender...........</label>
		<input type="text" class="form-control" name="city" id="city" placeholder="City">
	</div>
<br>
	<div class="form-group">
		<label for="state">Height..........</label>
		<input type="text" class="form-control" name="state" id="state" placeholder="State">
	</div>
<br>
	<div class="form-group">
		<label for="zipCode">Activity Level.......</label>
		<input type="text" class="form-control" name="zipCode" id="zipCode" placeholder="ZipCode">
	</div>	
<br>
	<div class="form-group">
		<label for="street">Weight.........</label>
		<input type="text" class="form-control" name="street" id="street" placeholder="Street">
	</div>
<br>
	<div class="form-group">
		<label for="city">Target Weight...........</label>
		<input type="text" class="form-control" name="city" id="city" placeholder="City">
	</div>
	
	<form:input type="hidden" path="id" />		
		
		<br>
		<div >
		<button class="btn btn-success" type="submit" id="submit" >
		<c:choose>
		<c:when test="${action eq 'updateUser'}">Update</c:when>
		<c:otherwise>Submit</c:otherwise>		
		</c:choose>
		</button>
		
		<a class="btn btn-primary" href="index">Cancel </a>	
		</div>
	</form:form>
	
	<br> <br>
	
<!-- ====================================================================== -->		
		
		
		
<!-- shipping information -->

	<form:form method="POST" action="${action}" modelAttribute="user" class="col-lg-5 col-md-5">	

	<h3>Shipping Name and Phone# Information</h3> 
	<br>  
			
		<label>First Name*</label>		
		<form:input path="fname" id="fn" class="form-control" />		
		<div class="has-error">
		 <form:errors path="fname" class="text-danger" />
		</div>	
		
		<label>Last Name</label>
		<form:input path="lname" id="ln" class="form-control"  />		
		<div class="has-error">
		 <form:errors path="lname" class="text-danger"/>
		</div>
		<label>Phone</label>
		<form:input  path="phone" id="phone" class="form-control"/>		
		<div class="has-error">
		 <form:errors path="phone" class="text-danger"/>
		</div>		
		
		
			
<br> <br>
	<h3>Shipping Address Information</h3>
<br>
	<div class="form-group">
		<label for="street">Street.........</label>
		<input type="text" class="form-control" name="street" id="street" placeholder="Street">
	</div>
<br>
	<div class="form-group">
		<label for="city">City...........</label>
		<input type="text" class="form-control" name="city" id="city" placeholder="City">
	</div>
<br>
	<div class="form-group">
		<label for="state">State..........</label>
		<input type="text" class="form-control" name="state" id="state" placeholder="State">
	</div>
<br>
	<div class="form-group">
		<label for="zipCode">Zip Code.......</label>
		<input type="text" class="form-control" name="zipCode" id="zipCode" placeholder="ZipCode">
	</div>
	
		
<br> <br> 
	<h3>Shipping Payment Information</h3>
<br>
	<div class="form-group">
		<label for="payPalNum">PayPal number</label>
		<input type="text" class="form-control" name="payPalNum" id="PayPayNum" placeholder="Pay Pal Number">
	</div>
<br>
	<div class="form-group">
		<label for="payPalExpDate">PayPal Expiration</label>
		<input type="text" class="form-control" name="payPalExpDate" id="payPalExpDate" placeholder="Pay Pal Expiration">
	</div>		
<br>

		<form:input type="hidden" path="id" />		
		
		<br>
		<div >
		<button class="btn btn-success" type="submit" id="submit" >
		<c:choose>
		<c:when test="${action eq 'updateUser'}">Update</c:when>
		<c:otherwise>Submit</c:otherwise>		
		</c:choose>
		</button>
		
		<a class="btn btn-primary" href="index">Cancel </a>	
		</div>
		</form:form>
	
	<br> <br>	
		
<!-- ====================================================================== -->		
		
		 <jsp:include page="footer.jsp"></jsp:include>      
		</div>  
		
     </div>
 
  
	
  </body>  
      
  	
</html>



