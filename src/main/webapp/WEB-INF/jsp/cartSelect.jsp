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
  <title>Index</title>
    
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
	<jsp:include page="header.jsp"/>      	     
      <div class="col-lg-12 col-md-12">
      
               
   		 <div class="container">	 
         
<!-- ============================================================================================   -->                
          <br> 
          <h2>Cart Selection</h2> 
             <table class="table table-striped table-hover">
             <thead class="thead-dark">
             <tr class="text-success">
             	<th>#</th>
             <%-- 	<th>
             		<input type="text" id="search" 
             			placeholder=" Filter Names (${list.size()}) " 
             			class="form-control"  >
             	</th> --%>
             	<th>Product Name </th>
             	<th>Manufacturer </th>
             	<th>Size </th>
             	
             	<th>Pkg. cost </th>
             	<th>Pkg. count </th>
             	<th>Subtotal </th>
             	
        <%--      <c:if test="${not empty logedinUser && logedinUser.role eq 'ADMIN'}">           
             	<th>Role</th>
             	
             	<th>
             	
             	<i class='fas fa-pencil-alt'></i> --%>
             	
             	<th>
             	<i class='far fa-trash-alt'></i>
             	</th>
      <%--        </c:if> --%> 
             </tr>
             </thead>
             
             
             <tbody>
             	<c:forEach var="item" items="${list}" >
             	<tr>
             	
             	<td> ${list.indexOf(item)+1} </td> 
      
            	<td> ${item.productName}	</td> 
             	
             	<td> ${item.productMfg}	</td>
             	
             	<td> ${item.packageSize}	</td>
             	
			 	<td> ${item.packageCost} </td>
			 	  
				<td>  ${item.quantOrdered}  </td>         
			    
			      <td> ${item.subTotalCost} </td>            
            
  <%--           
	         <c:if test="${not empty logedinUser && logedinUser.role eq 'ADMIN'}">
             <td> 
				<form method="POST" action="editrole" >		    									
		    	 <input type="hidden" name="id" value="${item.id}" />		    	 
		    		<select onchange="this.form.submit()" name="role" class="form-control">
					  <option value="${item.role}">${item.role}</option>
					  <option value="USER">USER </option>
					  <option value="ADMIN">ADMIN</option>												  
					</select>												
				</form>
			 </td>   --%>
			           
             <td>         
          <%--    <a href="edituser-${item.id}"  >
             <i class="fas fa-pencil-alt btn btn-info btn-xs"></i>              
             </a> --%>
             
             <a href="deleteFromCart-${item.id}" onclick="confirmed(); return false;" title="Delete from Cart" >
             <i class="far fa-trash-alt btn btn-danger btn-xs"></i>              
              </a>
                            
             </td>
           <%--   </c:if>      --%> 
              
             </tr>
             </c:forEach>
             
             </tbody> 
             </table>
    
<br>   
==================================================================================================    
<br>    
    <form class="form-inline navbar-right" action="search" method="post">
         
			<h3>Cart size....${list.size()}....</h3>
			
			<div> <%	Date planDate = new Date();
         				out.print( "<h4 align = \"left\">" +planDate.toString()+"</h4>");			
     		 %> </div>
     		 ......
     		  <button type="button" class="btn btn-primary float-right" 
             				data-toggle="modal" data-target="#addplan">
             			    Update Cart Details </button>
     		 
     		...Clear the Cart... <!-- need to wire this to app controller -->
     		 <a href="deleteAllCart" onclick="confirmed(); return false;" title="Delete cart" ></a>
             <i class="far fa-trash-alt btn btn-danger btn-xs"></i>       
     		 
     	</form> </div>	 
	
	<%-- 		<div>	<%
        			 	Date planDate = new Date();
         				out.print( "<h2 align = \"center\">" +planDate.toString()+"</h2>");
     			 %> </div> --%>
		<br>        
 
       
           
       
           
 <!--  <br> <br> -->
           
       <!-- this is for editing the user that is logged in and i dont need this here -->      
       <%--        <c:if test="${not empty logedinUser}">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#addprofile">
				  Add Contact
				</button>
				<a href="edituser-${logedinUser.id}"  >
				    <i class="fas fa-pencil-alt btn btn-info btn-lg">Edit Profile</i>              
				</a>
				</c:if>
         --%>
              
    
    
    
    
    
          
<br>          
     <table class="table table-striped table-hover">
         <thead class="thead-dark">
          <tr class="text-success">
			<th>Plan Name     </th>
			
			<th>Plan Date     </th>
		
			<th>Plan Budget   </th>
			
		<!-- 	<th>Plan Description</th> -->
			
	<%-- 	<c:if test="${not empty logedinUser}">	 --%>
			
			<th>User Id</th>
			
			<th>Activity Level</th>	
			
			<th>Age</th>
		
			<th>Height</th>
			
			<th>Weight</th>
			
			<th>Target Weight</th>
	<%-- 	</c:if> --%>
		
		</tr>
		 </thead>
             
             
         <tbody>
		
		
	<%-- 	<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		<c:if test="${not empty logedinUser}">	
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</c:if>	
		</tr> --%>
		
		<tr>
			<td> ${analysis.planName}... </td>
			
			<td> ${analysis.planDate}... </td>
			
			<td> ${analysis.planBudget}... </td> 
			
		<%-- 	<td> ${analysis.planDescription} </td> --%>
		
			<td> Guest </td>
			
			<td> Moderate </td>
			
			<td> 38.1 years </td> 
			
			<td> 66.25 inches </td>
			
			<td> 182 lbs </td> 
			
			<td> 133 lbs </td> 
		</tr>	
		
		</tbody>
</table>	         
          
          
 <br> <br>        
             
		</div>		
		 
     </div>
 
 
 <!--  ==================================================== -->
 
  <div class="modal" id="addplan">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">	      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;Add Plan Info</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">	      
        <div class="container" >
        
        	<form:form method="POST" action="addTitleToCart" modelAttribute="cart" class="col-md-8">
  
  		<br>
			<div class="form-group">
				<label for="planName">Plan Name.....</label>
				<input type="text" class="form-control" name="planName" id="planName" placeholder="Plan Name">
			</div>
		<br>
			<div class="form-group">
				<label for="planDescription">Plan Description</label>
				<input type="text" class="form-control" name="planDescription" id="planDescription" placeholder="Plan Description">
			</div>
		<br>
			<div class="form-group">
				<label for="planBudget">Plan Budget</label>
				<input type="text" class="form-control" name="planBudget" id="planBudget" placeholder="Plan Budget per day">
			</div>
		<br>
		<%-- 	<p> name="planDate" = <% planDate %> </p>
			<p><% // ${analysis.planDate} = planDate;  </p> --%>
			
	<br>
	<div >
		<button class="btn btn-success" type="submit" id="submit" > Submit </button>
		<button type="button" class="btn btn-primary small" data-dismiss="modal">Cancel</button>
    </div>
			</form:form>

        </div>
        </div>
        
        
    <!--  ==================================================== -->     
        <!-- Modal footer -->
        <div class="modal-footer">
        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
 
 
 
 
 

<!--  ==================================================== -->
 
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
			<button class="btn btn-success" type="submit" id="submit" >Submit</button>
			<button type="button" class="btn btn-primary small" data-dismiss="modal">Cancel</button>
    	</div>
	</form:form>
	
        </div>
        </div>
        
        
    <!--  ==================================================== -->     
        <!-- Modal footer -->
        <div class="modal-footer">
        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
        </div>
        
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



