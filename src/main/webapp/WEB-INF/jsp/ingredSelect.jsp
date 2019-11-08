<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>

<%-- <c:if test="${empty logedinUser}">
<c:redirect url="/login"/>
</c:if> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html lang="en">
  <head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Selection</title>
    
  <!-- Bootstrap -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

  </head>
  
  
  <!--  ==================================================== -->     
  
  <body>		
  
	<div class="container">			     
      <div class="col-lg-12 col-md-12">
      <jsp:include page="header.jsp"/>  
      
      		 <h1> Ingredients listing of ${msg} </h1>
          
          <!-- 	I need to put a header here to say which group of ingredients are being displayed -->
            <%--   <h1> ${success} <br> ${msg} <spring:message code="welcome.list"/></h1> --%>
              
          <%--               
              <c:if test="${not empty logedinUser}">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-primary float-right" 
					data-toggle="modal" data-target="#addprofile">
				  	Add Ingredient </button>
				  
				<a href="edituser-${logedinUser.id}"  >
				    <i class="fas fa-pencil-alt btn btn-info btn-lg">Edit Profile</i>              
				</a>
				</c:if>
               --%>
           <%--     
               <form class="form-inline navbar-right" action="search" method="post">
	    		<input class="form-control mr-sm-2" name="lname" type="text" placeholder="Search" required>
	    		<button class="btn btn-success" type="submit">Search</button>
	     		<a class="nav-link" href="contact">Contact Us</a>	
	  			</form>
                --%>
              
     <!--    <ul class="navbar-nav ml-auto"> -->
        <div class="container">	
	
	
		 
         <form class="form-inline navbar-right" action="search" method="post">
	     		
	     	<a class="nav-link dropdown-toggle float-left" href="#" 
	      		id="navbardrop" data-toggle="dropdown">Select Ingredient Category</a>
	      	<div class="dropdown-menu">
	      	<!-- 	<a class="dropdown-item" href="chooseIngredients?catagory=*" >All</a> -->
	        	<a class="dropdown-item" href="chooseIngredients?catagory=meat" >Meats</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=side">Sides</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=vegetables">Vegetables</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=side">Soup/Stew/Chili</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=desserts">Desserts</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=drinks">Drinks</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=snacks">Snacks</a>
	      <!--   	<a class="dropdown-item" href="chooseIngredients?catagory=created">Created</a>
	        	<a class="dropdown-item" href="chooseIngredients?catagory=upc">UPC codes</a> -->
	      	</div>
	      	
	      	<input type="text" id="search" width="75" height="25" 
             		class="form-control float-right" placeholder=" Find in List by Name (${list.size()}) " >
	      	
	      <!-- 	<a class="nav-link" href="ingredientImport">Create/Import Ingredient</a> -->
	      
	      ...or...
	      	
	      	<a class="btn btn-success" href="ingredientImport">Create/Import Ingredient </a>	
	      	
	    <!--   	 <button type="button" class="btn btn-primary float-left" 
             				data-toggle="modal" data-target="#displayDescription1">
             			 	Select Packaging </button> -->
             
            <c:if test="${not empty logedinUser}"> 			 	
             ...Clear All Bookmarks... <!-- need to wire this to app controller -->
     		 <a href="deleteBookmarks" onclick="confirmed(); return false;" title="Delete All BookMarks" ></a>
             <i class="far fa-trash-alt btn btn-danger btn-xs"></i>       
     		</c:if> 
     	 			 	
	  	</form>
             
        </div>
             		
  <!--        </li> 	
     </ul>     -->
       
               
        <!--        <button type="button" class="btn btn-primary float-left" 
             				data-toggle="modal" data-target="#displayDescription1">
             			 	More Info </button>
					
				<button type="button" class="btn btn-primary float-right" 
             				data-toggle="modal" data-target="#displayDescription2"> 
             				More Info </button>	
                       -->
     <!--  ==================================================== -->                        
             <br>
    		          
             <table class="table table-striped table-hover">
             <thead class="thead-dark bg-dark">
           <!--   <tr class="text-success"> -->
            <tr> 
             <th>#</th>

             <th> upc-Code </th>
             
             <th> Item name </th>
             
              <th> Item size </th>
        			
             <%-- 	<input type="text" id="search" width="75" height="25"
             		class="form-control" placeholder=" Find By Name (${list.size()}) " > --%>
             </th>
             
            <th> Description </th> 
          
              <th> Cost </th>
             
             <th> Select Quantity </th> 
            
             <!--  probably need to change the interface to be on or the other -->
             <%--  <c:if test="${not empty logedinUser && logedinUser.role eq 'BookMarked'}">     --%>
             <c:if test="${not empty logedinUser}">           
             <th> Bookmarks </th>
             <th>
        <!--      <i class='far fa-trash-alt'></i>
             <i class='fas fa-pencil-alt'></i> -->
             </th>
             </c:if>
          <!--     <th> Flags </th>  -->
              
             </tr>
             </thead>
             
      <!--  ==================================================== -->       
             <tbody>
             <c:forEach var="item" items="${list}" >
             
            <!--  <tr class="text-success"> -->
              <tr>
             <td>${list.indexOf(item)+1}</td>  
             
      
      <!-- this is the button to display data into a drop down	-->        
    <!--          <td>
               	<div class="inner col-md-12">
				<div class="btn-group">	
					<a href="#" class="dropdown-toggle active" data-toggle="dropdown" href="#">
					<span class="glyphicon glyphicon-chevron-down"></span>
					</a>
             </td>		 -->
             
     
                        
     <!-- this is the area to display a small picture take out and only in modal	 -->      
      <%--        <td> 	
             	<c:choose> 
             		<c:when test="${not empty item.picture}">
				   		<a href="user-${item.id}">
						<img src="${contextPath}//users//${item.id}//${item.getAddress().stream().findFirst().get().filename}" 
							width="40" height="35"/> </a>
					</c:when> <c:otherwise> No image </c:otherwise>
				</c:choose>	     
             </td>  --%>
         <!--     <td>
             		<button type="button" class="btn btn-primary float-right" 
             		data-toggle="modal" data-target="#displayDescription2"> 
             		Description </button>	  
             </td>         -->
                     
        <!-- this is the title of an ingredient and cost 	 -->    
        	<td> ${item.upcCode} </td>
                       
             <td> ${item.productName} </td>
             
             <td> ${item.sizeOz} </td>
			                           
             <td>	
             		<button type="button" class="btn btn-primary small" 
             				data-toggle="modal" data-target="#displayDescription_${item.id}"
             				width="100" height="50"> Description
					</button>
            </td>
             
              <td>${item.costOfPkg}</td>           
             
              <!-- this is the button to select an item	 -->           
             <td> 
				<form method="POST" action="addToCart" onsubmit="return false">		    									
		    	 	<input type="hidden" name="ingredientId" value="${item.id}" />		    	 
		    			<select onchange="this.form.submit()" name="isSelected" class="form-control">
					 <%--  	<option value="${item.role}">${item.role}</option> --%>
					  	<option value=" "> Please Select </option>
					  	<option value="1"> Selected 1 </option>
					  	<option value="2"> Selected 2 </option>
					  	<option value="3"> Selected 3 </option>
					  	<option value="4"> Selected 4 </option>
					  	<option value="5"> Selected 5 </option>
					  	<option value="0"> DeSelect </option>												  
					</select>												
				</form>
			 </td>  
              
	          <c:if test="${not empty logedinUser}">
     <%--         <td> 
				<form method="POST" action="addToBookmark" >		    									
		    	 	<input type="hidden" name="ingredientId" value="${item.id}" />		    	 
		    			<select onchange="this.form.submit()" name="isBookmarked" class="form-control">
		    			
					  	<option value="${item.role}">${item.role}</option>
					  	<option value="N"> Please Select </option>
					  	<option value="B"> Bookmark </option>
					  	<option value="N"> UnBookmarked </option>												  
					</select>												
				</form>
			 </td>   --%>
				
			<td>
             	<a href="addBookmark-${item.id}"  >   </a>
            	<i class="fas fa-pencil-alt btn btn-info btn-xs"></i>              
             </td>	
				
			<td>	
				<a href="deleteBookmark-${item.id}" onclick="confirmed(); return false;" title="Delete All BookMarks" ></a>
             	<i class="far fa-trash-alt btn btn-danger btn-xs"></i>       
			</td>
						            
  			 
             
             </c:if>  
             
        <%--        <td> [${item.flags}] </td> --%>
                            
             </tr>
             
              
 <!--  ==================================================== -->
 
 <div class="modal" id="displayDescription_${item.id}">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      	      
  <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;Product Details</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
 	
       <br>
       <br>
  <!-- Modal body -->
  
  
  <img src = "${contextPath}//${item.upcCode}.jpeg" width="150" height="155"
         alt = "Picture of Item" >
         
 <img src = "${contextPath}//${item.upcCode}N.jpeg" width="150" height="155"
         alt = "Picture of Nutrition" >        
  
  			<h2> ...${item.productMfg}....${item.productName} </h2> 
  			<br>
  			 <br>=========================================================================<br>
  			....Size = +${item.sizeOz}  .... Cost = +${item.costOfPkg}.... 
  			Category = +${item.category}....UPC code = ${item.upcCode} 
  			<br>
            ...Product description...${item.description} <br>
            <br>
           <br>=========================================================================<br>
 		 <%-- <br>	<!-- calculate the real servings  -->
 			Nutrition density...................................................... <br>
			Serving count = +${item.servCount}.... calories/serving ${item.calInServ}....
			total calories = + <@% {(${item.servCount} * ${item.calInServ})} %>
		 <br>=========================================================================<br>	 --%>
		 <br>					
			...Carbohydrates <br>
			...Carbohydrates/Serving = +${item.carbGramInServ}....	
			Fiber/Serving = +${item.carbFiGramInServ}....
			Sugars added = +${item.carbSiGramInServ} <br>
		<br>
		 <br>=========================================================================<br>	
		 <br>
			...Fats <br>
			...Fats/Serving = +${item.fatGramInServ}.... <br>
			...Omega3 Fats/Serving = +${item.fatO3MgInServ} <br>  
		<%-- 	${item.fatSatGramInServ}
			${item.fatColestMgInServ}
			${item.fatPolyGramInServ}
			${item.fatMonoGramInServ} --%>
		<br>	
	 	 <br>=========================================================================<br>	
		 <br>	
			...Proteins <br>
			...Proteins/Serving = +${item.protGramInServ}....
			Essential Proteins/Serving = +${item.protEssGramInServ} <br>
		<br>	
		 <br>=========================================================================<br>	
		 <br>	
			...Other <br>
			...Sodium(Mg) in serving = +${item.sodiumMgInServ}.... 
			Pottasium(Mg) in serving = +${item.pottasiumMgInServ}<br>
			...VitaminsInServ <br>	
			...MineralsInServ <br>
		
		<br>	
		 <br>=========================================================================<br>	
		<%--  <br>	
			Nutrition info - allergies/danger...................................... <br>
			${item.peanuts}
			${item.treeNuts}
			${item.msgFlavor}
			${item.shellFish}
			${item.mercury}
			${item.artSweet}
			${item.preserv}
			${item.fatTransGramInServ}
		 <br>=========================================================================<br>	 --%>
		 <br>
		        <!-- Modal footer -->
        <div class="modal-footer">
        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
        </div>
       <br><br>
      </div>
    </div>
  </div>	
  
 <!--  ==================================================== -->
             </c:forEach>
             
             </tbody>
             
             </table>
             
		</div>		
		 
     </div>
 
 
 
 
 <!--  ==================================================== -->
 
 <div class="modal" id="displayDescription2">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      	      
  <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;Product Details</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
 	
       <br>
       <br>
  <!-- Modal body -->
  
  			<h2> ${item.productName}__${item.productMfg} </h2> <br>
  			size = +${item.sizeOz}  .... cost = +${item.costDollar}.... <br>
  			Catagory = +${item.category}....UPC code = ${item.UPCcode} <br>
            Product description.................................................... <br>
            ${item.description}
           <br>=========================================================================<br>	
  			<br>
  			<c:choose> 
             		<c:when test="${not empty item.getAddress()}">
				   		<a href="user-${item.id}">
						<img src="${contextPath}//users//${item.id}//${item.getAddress().stream().findFirst().get().filename}" 
							width="300" height="150"/> </a>
					</c:when> <c:otherwise> No image </c:otherwise>
			</c:choose>	      
       	 <br>=========================================================================<br>	
 		 <br>	
 			Nutrition density...................................................... <br>
			Serving count = +${item.servCount}.... calories/serving ${item.calInServ}....
			total calories = + <@% {(${item.servCount} * ${item.calInServ})} %>
			<!-- calculate the real servings  -->
		 <br>=========================================================================<br>	
		 <br>					
			Nutrition Carbohydrates................................................ <br>
			Carbohydrates/Serving = +${item.carbGramInServ}	 <br>	
			Fiber/Serving = +${item.carbFiGramInServ} <br>
			Sugars added = +${item.carbSiGramInServ} <br>
		 <br>=========================================================================<br>	
		 <br>
			Nutrition Fats......................................................... <br>
			Fats/Serving = +${item.fatGramInServ} <br>
			${item.fatSatGramInServ}
			${item.fatColestMgInServ}
			${item.fatPolyGramInServ}
			${item.fatMonoGramInServ}
			Omega3 Fats/Serving = +${item.fatO3MgInServ} 
	 	 <br>=========================================================================<br>	
		 <br>	
			Nutrition Proteins...................................................... <br>
			Proteins/Serving = +${item.protGramInServ} <br>
			Proteins/Serving = +${item.protEssGramInServ}
		 <br>=========================================================================<br>	
		 <br>	
			Nutrition Other........................................................ <br>
			Sodium(Mg) in serving = +${item.sodiumMgInServ} <br>
			Pottasium(Mg) in serving = +${item.pottasiumMgInServ}
		 <br>=========================================================================<br>	
		 <br>	
			VitaminsInServ......................................................... <br>
		 <br>	
			MineralsInServ........................................................ <br>
		 <br>=========================================================================<br>	
		 <br>	
			Nutrition info - allergies/danger...................................... <br>
			${item.peanuts}
			${item.treeNuts}
			${item.msgFlavor}
			${item.shellFish}
			${item.mercury}
			${item.artSweet}
			${item.preserv}
			${item.fatTransGramInServ}
		 <br>=========================================================================<br>	
		 <br>
		        <!-- Modal footer -->
        <div class="modal-footer">
        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
        </div>
        <br>=========================================================================<br>	
      </div>
    </div>
  </div>	
  
 <!--  ==================================================== -->
  
 <%--  
       <div class="modal-body">	      
        <div class="container" >
		<form:form method="POST" action="savecontact" modelAttribute="address" class="col-md-8">
    
		<label>Address*</label>	
		<form:input path="address" id="address" class="form-control" required="true"/>	

		<label>City*</label>
		<form:input path="city"  class="form-control" required="true" />	

		<label>State*</label>
		<form:select path="state" name="state" class="form-control input-sm">
		
		<c:choose>
		<c:when test="${empty address.state}">
   		<option value=" " >Select State</option>
		</c:when> 
		
		<c:otherwise>
  		<option value="${address.state}" >${address.state}</option>
		</c:otherwise>
		</c:choose>
		
		<c:forEach items="${states}" var="state">	 
		<option value="${state}">${state.id}</option>
   		</c:forEach>
		</form:select>

		<label>ZIP*</label>
		<form:input  path="zip" class="form-control" required="true"/>	

		<form:input type="hidden" path="id" />	

		<br>
		<div >

		<button class="btn btn-success" type="submit" id="submit" > Submit </button>
		<button type="button" class="btn btn-primary small" data-dismiss="modal">Cancel</button>
    	</div>
		</form:form>
        </div>
        </div>
  
  
        
        <!-- Modal footer -->
        <div class="modal-footer">
        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
        </div>		
        
 
 --%>
 
<!--  ==================================================== -->
<%--  
 <div class="modal" id="addprofile">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      	      
  <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;Add Contact Info</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
 
       
  <!-- Modal body -->
        <div class="modal-body">	      
        <div class="container" >
		<form:form method="POST" action="savecontact" modelAttribute="address" class="col-md-8">
    
		<label>Address*</label>	
		<form:input path="address" id="address" class="form-control" required="true"/>	

		<label>City*</label>
		<form:input path="city"  class="form-control" required="true" />	

		<label>State*</label>
		<form:select path="state" name="state" class="form-control input-sm">
		
		<c:choose>
		<c:when test="${empty address.state}">
   		<option value=" " >Select State</option>
		</c:when> 
		
		<c:otherwise>
  		<option value="${address.state}" >${address.state}</option>
		</c:otherwise>
		</c:choose>
		
		<c:forEach items="${states}" var="state">	 
		<option value="${state}">${state.id}</option>
   		</c:forEach>
		</form:select>

		<label>ZIP*</label>
		<form:input  path="zip" class="form-control" required="true"/>	

		<form:input type="hidden" path="id" />	

		<br>
		<div >

		<button class="btn btn-success" type="submit" id="submit" > Submit </button>
		<button type="button" class="btn btn-primary small" data-dismiss="modal">Cancel</button>
    	</div>
		</form:form>
        </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
        </div> --%>
        
      </div>
    </div>
  </div>
 
 </body>
 
 
 
  <!--  ==================================================== --> 
  
  <script>
	    function confirmed(){
            if (confirm('You are about to delete, Do you want to proceed?')) {
                  document.getElementById("del").submit();
                  return true;
	            } else {
	               return false;
	            }
	         }

	    
	    $("#search").keyup(function () {
	        var value = this.value.toLowerCase().trim();

	        $("table tr").each(function (index) {
	            if (!index) return;
	            $(this).find("td").each(function () {
	                var id = $(this).text().toLowerCase().trim();
	                var not_found = (id.indexOf(value) == -1);
	                $(this).closest('tr').toggle(!not_found);
	                return not_found;
	            });
	        });
	    });
	    </script> 
	    
	    <script>
            function updateSize() {
                var nBytes = 0,
                        oFiles = document.getElementById("fileInput").files,
                        nFiles = oFiles.length;
                for (var nFileId = 0; nFileId < nFiles; nFileId++) {
                    nBytes += oFiles[nFileId].size;
                }

                var sOutput = nBytes + " bytes";
                // optional code for multiples approximation
                for (var aMultiples = ["KiB", "MiB", "GiB", "TiB", "PiB", "EiB", "ZiB", "YiB"], nMultiple = 0, nApprox = nBytes / 1024; nApprox > 1; nApprox /= 1024, nMultiple++) {
                    sOutput = nApprox.toFixed(3) + " " + aMultiples[nMultiple] + " (" + nBytes + " bytes)";
                }
                // end of optional code

                document.getElementById("fileNum").innerHTML = nFiles;
                document.getElementById("fileSize").innerHTML = sOutput;
            }
        </script>
  	
</html>


