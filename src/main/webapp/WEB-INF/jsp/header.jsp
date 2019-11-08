<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary static-top" style="background-color: #e3f2fd;"> -->
<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary static-top" style="background-color: #dddddd !important" -->>
<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary static-top"> -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
  <div class="container">
  
    <a class="navbar-brand" href="doAnalysis">Nutrition Analysis</a>
    
     	<!--   <li class="nav-item active"> -->
    <a class="nav-link" href="index">Home <span class="sr-only">(current)</span> </a>
      
 	<a class="nav-link" style="color: white" href="contact">Contact Us <span class="sr-only">(current)</span> </a>
 
 
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
      	     
	  <!--   <li class="nav-item dropdown">
	      <a class="nav-link dropdown-toggle" href="#" 
	      		id="navbardrop" data-toggle="dropdown">Ingredients</a>
	      <div class="dropdown-menu">
	        	<a class="dropdown-item" href="chooseIngredients?catagory=meat" >Meats</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=side">Sides</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=vegetables">Vegetables</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=desserts">Desserts</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=drinks">Drinks</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=snacks">Snacks</a>
	      </div>
	    </li> -->
	    
	  <!--   <li class="nav-item">   <a class="nav-link" style="color: white" href="ingredientImport">Import </a> -->
	    
	    <li class="nav-item">  	<a class="nav-link" style="color: white" href="allIngredients">Ingredients</a>       		</li>
	    <li> ---- </li>
	    <li class="nav-item">  	<a class="nav-link" style="color: white" href="viewCart">Cart</a>       		</li>
        <li> ---- </li>	
        <li class="nav-item">	<a class="nav-link" style="color: white" href="doAnalysis">Analysis</a>	</li>
	    
	   
	    <li> ---- </li>
	    <li> ---- </li>
	    <li> ---- </li>
	    
	    <li class="nav-item dropdown">
	      <a class="nav-link dropdown-toggle" href="#" style="color: white" 
	      		id="navbardrop" data-toggle="dropdown">Ideas/Tips</a>
	      <div class="dropdown-menu">
	      		<a class="dropdown-item" href="instructions">Instructions</a>
	        	<a class="dropdown-item" href="processStuff">Natural VS Processed</a>
	        	<a class="dropdown-item" href="saltStuff">Salt Issues</a>
	        	<a class="dropdown-item" href="fatsAndCarbs">Fats VS Carbs</a>
	        	<a class="dropdown-item" href="allergies">Allergy Issues</a>
	        	<a class="dropdown-item" href="tips">Other Tips</a>
	        	<a class="dropdown-item" href="ess">Exercise Sleep Stress</a>      	
	      </div>
	    </li>    
	    
	   
	    
	    <c:choose>
	    <c:when test="${not empty logedinUser}">
	    
	    <li class="nav-item dropdown">
	      <a class="nav-link dropdown-toggle" href="#" style="color: white"
	      		id="navbardrop" data-toggle="dropdown">Account</a>
	      <div class="dropdown-menu">
	      		<a class="dropdown-item" href="register">Account Update</a>
	        	<a class="dropdown-item" href="userUpdate1">Account Status</a>
	        	<a class="dropdown-item" href="register">User Targets</a>
	        	<a class="dropdown-item" href="register">User History</a>
	      </div>
	    </li>     	
        	<li class="nav-item">
          		<a class="nav-link" style="color: white" href="logout">Logout</a>
        	</li>
	    </c:when>
	    
	    <c:otherwise>
	    	<li class="nav-item dropdown">
	      	<a class="nav-link dropdown-toggle" href="#" style="color: white"
	      		id="navbardrop" data-toggle="dropdown">Preferences</a>
	      	<div class="dropdown-menu">	
	        	<a class="dropdown-item" href="register">Create Account</a>
	        	<a class="dropdown-item" href="userUpdate1">Guest Settings</a>
	      </div>
	    </li>      
        	<li class="nav-item">
          		<a class="nav-link" style="color: white" href="login">Login</a>
        	</li>
	    </c:otherwise>	    
	    </c:choose>        
                
      </ul>
     <!--  
      <form class="form-inline navbar-right" action="search" method="post">
	    <input class="form-control mr-sm-2" name="lname" type="text" placeholder="Search" required>
	    <button class="btn btn-success" type="submit">Search</button>
	     <a class="nav-link" href="contact">Contact Us</a>	
	  </form>
        -->
    </div>
  </div>
</nav>
