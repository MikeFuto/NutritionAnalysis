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
      
 <!-- insert an animation or video or advert or logo here -->
<br>
 <h3> ${title}</h3> <h3> ${message}</h3> 
 	<br>	
 	
 <h2> About Us</h2> <br>	
<br>
Nutrition is our passion and we take it seriously.<br>
Your health is of paramount importance and we want to help you <br>
simplify the myriad of standards and confusing advertising<br>
and let the computer do the work of tracking the details.	<br>				

 <!-- insert an animation or video or advert or logo here -->
 
  <br>	 <br>	 <br>
  
  You may continue as a guest by selecting ingredients to populate the cart for analysis<br>
  but the analysis will be based on an average persons height, and idealized weight.<br>
  To save your selection or to customize the analysis to your specifications<br>
  you will need to create an account and fill out preferences and statistics.<br>
  
  <br>	 <br>	 <br>
  
<%-- 
<a href="user-${item.id}">
		<img src="${contextPath}//users//${item.id}//${item.getAddress().stream().findFirst().get().filename}" width="70" height="55"/>
		</a>
 --%>
<a>
<img src = "${contextPath}//cover2.jpeg" width="800" height="700"
         alt = "Picture of" >
</a>

<%--  <c:when test="${not empty item.getAddress()}"> 
		<a href="user-${item.id}">
		<img src="${contextPath}//users//${item.id}//${item.getAddress().stream().findFirst().get().filename}" width="70" height="55"/>
		</a>
					     </c:when>
						<c:otherwise>
						No image	    
						</c:otherwise>
						</c:choose>	      --%>
 
 <br>	 <br>	 <br>
<!--  <video width="1920" height="1080" controls>
 <source src="file:\\\C:\\Training\\StreamsHTML\\20190914_154628.mp4" type="video/mp4" />
 <source src="C:\\Training\\StreamsHTML\\20190914_154628.mp4" type="video/mp4" />
 <source src="C://Training//StreamsHTML//20190914_154628.mp4" type="video/mp4" />
</video>

 <br>	 <br>	 <br>

 <p>
    <img src = "C:\\Training\\StreamsHTML\\20190916_101810.jpg"
         alt = "Picture of Evan for good luck" />
  </p>
 -->



 <br>	<br>	 <br>
 
		</div>		
		 
     </div>
 
 
 
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

<button class="btn btn-success" type="submit" id="submit" >
Submit
</button>
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
 --%>
 
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



