<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

  </head>
  <body>
	
	<div class="container">	  
	   <jsp:include page="header.jsp"/>   
       <div class="col-lg-10 col-md-10">
        <br>
	    <form:form method="POST" action="login" modelAttribute="user" class="col-lg-5 col-md-5">
	    
		<h3>
		<span class="text-success"> 
		${message}<br><small>${success}</small></span>
		<span class="text-danger">${error}</span><br>
		
		</h3>
			
		<label>Email</label>
		<form:input type="email"  path="email" class="form-control" required="true" />	
		<label>Password</label>
		<form:input type="password" path="password" id="password" class="form-control" required="true"/>		
		<br>
		<div >
		
		<button class="btn btn-success" type="submit" id="submit" >Submit</button>
		
		<a class="btn btn-primary" href="index">Cancel </a>	
		<br>	<br>   <br>
		
		<h2> OR</h2>
		
		<br>	<br>
		<a class="btn btn-primary" href="register">Create an account </a>	
		
		</div>
		</form:form>
		
		
		
		 <%-- <jsp:include page="footer.jsp"></jsp:include>  --%>      
		</div>  
		
     </div>
 
  
	
  </body>  
      
  	
</html>



