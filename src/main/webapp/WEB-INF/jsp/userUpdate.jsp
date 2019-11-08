<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
      
 <%@ page import="com.web.capstone.model.User" %>
 <% User user = (User) session.getAttribute("users"); %> 
    
<!DOCTYPE html>
<html lang="en">
===============================================================	

<head>
		<meta charset="ISO-8859-1">
		<title>User Profile Update</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<br>
<body>	
	
	<div class="container">	
	<jsp:include page="header.jsp"/>      	     
      <div class="col-lg-12 col-md-12">
      
 

===============================================================	

<br>
	<h2>Please Review your Profile Information here</h2>

<br>
<h3>Email and Password information</h3>
<table>	<!--  add table of selected attributes-->
			
		<tr>
			<th>Email        </th>
			<th>_____</th>
			<th>Password     </th>
		</tr>
		
		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>
		
		<tr>
			<td> ${users.email} </td> 
			<th> </th>
			<td> ${users.password} </td>
			<th> </th>
			<td> ${users.userStatus} </td>
		</tr>	
	
</table>



<br>
<br>
<h3>Health information</h3>
<table>	
		
		<tr>
			<th>Age   	     </th>
			<th>_____</th>
			<th>Gender       </th>
			<th>_____</th>
			<th>Height       </th>
			<th>_____</th>
			<th>Activity Level</th>
			<th>_____</th>
			<th>Weight   	  </th>
			<th>_____</th>
			<th>Target Weight </th>
			<th>_____</th>
		</tr>
		
		<tr>
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
			<th>-----</th>
			<th>-----</th>
		</tr>
		
		<tr>
			<td> ${users.age} </td>
			<th> </th>
			<td> ${users.gender} </td>
			<th> </th>
			<td> ${users.height} </td> 
			<th> </th>
			<td> ${users.activityLevel} </td>
			<th> </th>
			<td> ${users.Weight} </td>
			<th> </th>
			<td> ${users.targetWeight} </td> 
			
		</tr>	

</table>	

<br><br>

===============================================================	
<br><br>

<h2>Please Review your Shipping Information here</h2>

<br><br>
<h3>Contact information</h3>
<table>	<!--  add table of selected attributes-->
			
		<tr>
			<th>First Name   </th>
			<th>_____</th>
			<th>Last name    </th>
			<th>_____</th>
			<th>Phone#       </th>
			
		</tr>
		
		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>		

		<tr>
			<td> ${users.firstName} </td>
			<th> </th>
			<td> ${users.lastName} </td>
			<th> </th>
			<td> ${users.phone} </td>
		</tr>	
	
</table>

<br>
<br>
<h3>Shipping Address information</h3>
<table>	<!--  add table of selected attributes-->
	
		<tr>
			<th>Street   	 </th>
			<th>_____</th>
			<th>City         </th>
			<th>_____</th>
			<th>State        </th>
			<th>_____</th>
			<th>Zip          </th>
		</tr>
		
		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>
		

		<tr>
			<td> ${users.street} </td>
			<th> </th>
			<td> ${users.city} </td>
			<th> </th>
			<td> ${users.state} </td> 
			<th> </th>
			<td> ${users.zip} </td>
		</tr>	
	
</table>

<br>
<br>
<h3>Payment information</h3>
<table>	<!--  add table of selected attributes-->
		
		<tr>
			<th>PayPal#   	 </th>
			<th>_____</th>
			<th>PayPalExpDate</th>
			<th>_____</th>
			<th>xxxxxxx      </th>
			<th>_____</th>
			<th>xxxxxxxxx    </th>
		</tr>
		
		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>
		
		<tr>
			<td> ${users.PayPalNum} </td>
			<th> </th>
			<td> ${users.PayPalExpDate} </td>
			<th> </th>
			<td> ${users.balance} </td> 
			<th> </th>
			<td> ${users.odStatus} </td>
		</tr>	

</table>
	

</div>
</div>



<br>
<br>

===============================================================	
<br>
		<footer>
<br>			
			To exit ...................
			<a href="index.jsp">Return to Home Page</a>
<br>			
			<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
		</footer>
<br>		

	</div>		 
   </div>

</body>
</html>




