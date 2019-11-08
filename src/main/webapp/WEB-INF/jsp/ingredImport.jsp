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
    <title>Ingredient Import</title>
    
    <!-- Bootstrap -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

  </head>
  
  
 <!-- ====================================================================== -->	 
  
<!-- https://www.warehouse115.com/food-products/canned/fruits.html -->
  
  <body>
	
	<div class="container">	
	<jsp:include page="header.jsp"/>        
       <div class="col-lg-10 col-md-10">
  <br>     
     <h3>Enter UPC code here to auto populate and import</h3> 
<br>	
	<%--  <form:form method="Post" action="addIngredient" modelAttribute="ingredient" class="col-lg-5 col-md-5"> --%>
	 <form class="form-inline navbar-right" action="addIngredient" method="post" >
<br>
	<div class="form-group">
		<label for="upcCode">UPC Code</label>
		<input type="text" class="form-control" name="upcCode" id="upcCode" placeholder="upcCode">
	</div>	
<br>  
   
   		<button class="btn btn-success" type="submit" id="submit" >Submit</button>
	
	<%-- </form:form> --%>
	</form>
 <br>  <br>
 <!-- ====================================================================== -->	   
       <h3>OR</h3>
<br>       
     <h3><br><span class="text-success">${message}</span><br></h3>	
     
<br> <br> 			
		
 <!-- health information -->
 		
	<!-- <h3>Ingredient Information</h3> -->
	
	 <form:form method="Post" action="addIngredient" modelAttribute="ingredient" class="col-lg-5 col-md-5">

	<div class="form-group">
		<label for="productName">productName</label>
		<input type="text" class="form-control" name="productName" id="productName" placeholder="productName">
	</div>
<br>
	<div class="form-group">
		<label for="productMfg">productMfg</label>
		<input type="text" class="form-control" name="productMfg" id="productMfg" placeholder="productMfg">
	</div>
<br>
	<div class="form-group">
		<label for="description">description</label>
		<input type="text" class="form-control" name="description" id="description" placeholder="description">
	</div>
<br>
	<div class="form-group">
		<label for="upcCode">upcCode</label>
		<input type="text" class="form-control" name="upcCode" id="upcCode" placeholder="upcCode">
	</div>	
<br>
	<div class="form-group">
		<label for="category">category</label>
		<input type="text" class="form-control" name="category" id="category" placeholder="category">
	</div>
<br>
	<div class="form-group">
		<label for="costOfPkg">costOfPkg</label>
		<input type="text" class="form-control" name="costOfPkg" id="costOfPkg" placeholder="costOfPkg">
	</div>
	
<br>
	<div class="form-group">
		<label for="servInPkg">servInPkg</label>
		<input type="text" class="form-control" name="servInPkg" id="servInPkg" placeholder="servInPkg">
	</div>
<br>
	<div class="form-group">
		<label for="calInServ">calInServ</label>
		<input type="text" class="form-control" name="calInServ" id="calInServ" placeholder="calInServ">
	</div>	
<br>	
 ======================================================================	
	
<br>
	<div class="form-group">
		<label for="carbGramInServ">carbGramInServ</label>
		<input type="text" class="form-control" name="carbGramInServ" id="carbGramInServ" placeholder="carbGramInServ">
	</div>
	
<br>
	<div class="form-group">
		<label for="carbFiGramInServ">carbFiGramInServ</label>
		<input type="text" class="form-control" name="carbFiGramInServ" id="carbFiGramInServ" placeholder="carbFiGramInServ">
	</div>
<br>
	<div class="form-group">
		<label for="protGramInServ">protGramInServ</label>
		<input type="text" class="form-control" name="protGramInServ" id="protGramInServ" placeholder="protGramInServ">
	</div>	
<br>
	<div class="form-group">
		<label for="fatGramInServ">fatGramInServ</label>
		<input type="text" class="form-control" name="fatGramInServ" id="fatGramInServ" placeholder="fatGramInServ">
	</div>
	
<br>
	<div class="form-group">
		<label for="sodiumMgInServ">sodiumMgInServ</label>
		<input type="text" class="form-control" name="sodiumMgInServ" id="sodiumMgInServ" placeholder="sodiumMgInServ">
	</div>
<br>
	<div class="form-group">
		<label for="pottasiumMgInServ">pottasiumMgInServ</label>
		<input type="text" class="form-control" name="pottasiumMgInServ" id="pottasiumMgInServ" placeholder="pottasiumMgInServ">
	</div>	
	
		<button class="btn btn-success" type="submit" id="submit" >Submit</button>
	
	</form:form>
	
	
	
	
	<%-- <form:input type="hidden" path="id" />		
		
		<br>
		<div >
		<button class="btn btn-success" type="submit" id="submit" >
		<c:choose>
		<c:when test="${action eq 'addIngredient'}">Add to Database</c:when>
		<c:otherwise>Submit</c:otherwise>		
		</c:choose>
		</button>
		
		<a class="btn btn-primary" href="index">Cancel </a>	
		</div>
	</form:form> --%>
	
		
		 <jsp:include page="footer.jsp"></jsp:include>      
		</div>  
		
     </div>
 
  
	
  </body>  
      
  	
</html>


