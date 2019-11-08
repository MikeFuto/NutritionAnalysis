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
  <title>cartAnalysis</title>
    
  <!-- Bootstrap -->
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
      <div class="col-lg-12 col-md-12">
      
      		
    	 
      <%--         <h2> ${success} <br> ${msg} <spring:message code="welcome.list"/></h2> --%>
          
          <br> 
   		 <div class="container">	 
         <form class="form-inline navbar-right" action="search" method="post">
         
	 <br> <br>	
<!--  =====================================================================================  -->   
        
     <%--   <c:if test="${not empty logedinUser}">	  --%>
           
    <!--      <table class="table table-striped table-hover">
         <thead class="thead-dark">
          <tr class="text-success">
          
			<th>Plan Name     </th>
			
			<th>Plan Date     </th>
			
			<th>Plan Budget   </th>
			
			<th>Plan Description</th>
		</thead> -->
		
	<%--	<tbody>
	 	<tr>
			<td> ${analysis.planName} </td>
			
			<td> ${analysis.planDate} </td>
		
			<td> ${analysis.planBudget} </td> 
			
			<td> ${analysis.planDescription} </td>
		</tr>	 
		</tbody>	
		</table>	--%>

<!-- ====================================================================================-->
 <br> <br>
 
 <h2>Graphical Analysis by % of Calories</h2>
           
           <!--   <table class="table table-striped table-hover"> -->
             <table class="table table-hover">
             <thead class="thead-dark">
             <tr class="text-success">
            
             	<th>Description </th>
             	<!-- <th>Average Daily </th>
             	<th>% of Daily </th>
             	<th>Warnings </th> -->
             	<th>Graph.........................20%................................40%................................
             	60%................................80%................................100% </th>
             </tr>
             </thead>
             
             
             <tbody>
             		
             <tr> 	
           
             	<td> Carbohydrates	</td>
             	
			 	<%-- <td> ${analysis.carbGramInDayAvg} </td>
			 	  
				<td>  ${analysis.carbCalPercent}  </td>         
			    
			    <td>  ${analysis.warnColorCarbs}  </td> --%>
			    
			    <td>  
			    
			     <div class="${analysis.warnColorCarbs}" role="alert"> 
			     
			      <c:forEach begin="1" end="${analysis.carbCalPercent}" var="i">
    				<c:out value="I"> </c:out>
					</c:forEach>
			     
			     </div> 
			     
		<%-- 	<div class="${analysis.warnColorCarbs}" role="alert">   
			    <c:forEach begin="1" end=<"${analysis.carbCalPercent}" var="i">
    				<c:out> value=${analysis.planDescription} </c:out>
				</c:forEach>
			    </div> --%>
			    
			   
			    
			    
			  <!--   https://stackoverflow.com/questions/11698993/representation-of-a-simple-for-loop-in-jstl-el -->
			    
			    		<%-- var value = ${analysis.carbCalPercent}; --%>
			    		
			<%--      	<c:forEach var="${analysis.carbCalPercent}/4"> 	
			  			<a>System.out.print("=")</a>	 			
			    	</c:forEach> 
 --%>			    
				<%--  <%! for(int i = 0; i < analysis.carbCalPercent/4; i++) { System.out.print("="); } %> --%>
 	
			     <%-- 	<%! for(int i = 0; i < analysis.carbCalPercent/4; i++) { %>
            	 	<a><%= System.out.print("=")   %></a>
    				<% } %>	   --%>
			    	
			    </td>  
			         
            </tr>
 
             <tr> 	
        
             	<td> Protein	</td>
             	
			 <%-- 	<td> ${analysis.protGramInDayAvg} </td>
			 	  
				<td>  ${analysis.protPercent}  </td>         
			    
			    <td>  ${analysis.warnColorProt}  </td>    --%>
			    
			    <td><div class="${analysis.warnColorProt}" role="alert"> 
			   		<c:forEach begin="1" end="${analysis.protPercent}" var="i">
    				<c:out value="I"> </c:out>
					</c:forEach>
			    </div></td>      
            </tr>
            
            <tr> 	
     
             	<td> Fats	</td>
             	
			 	<%-- <td> ${analysis.fatGramInDayAvg} </td>
			 	  
				<td>  ${analysis.fatPercent}  </td>         
			    
			    <td>  ${analysis.warnColorFats}  </td>   --%>
			    
			    <td><div class="${analysis.warnColorFats}" role="alert"> 
			   		<c:forEach begin="1" end="${analysis.protPercent}" var="i">
    				<c:out value="I"> </c:out>
					</c:forEach>
			    </div></td>      
            </tr>
            </tbody> 
             </table>
            
            
        <!--      <tr> 	
   
             	<td> ------	</td>
             	
			 	<td> ------ </td> -->
			 	  
			<!-- 	<td> ------  </td>     -->     
			    
			 <!--    <td> ------  </td>         -->
            </tr>
         
     <h2>Graphical Analysis by % of Recommended Daily Allowance</h2>       
            <table class="table table-hover">
             <thead class="thead-dark">
             <tr class="text-success">
            
             	<th>Description </th>
             	<!-- <th>Average Daily </th>
             	<th>% of Daily </th>
             	<th>Warnings </th> -->
             	<th>Graph.....20%.......40%.......60%.......80%.......100%......120%......140%......160%......180%......200%
             	......220%......240%... </th>
             </tr>
             </thead>
            
            <tbody>
                
             <tr> 	
  
             	<td> Fiber	</td>
             	
			 <%-- 	<td> ${analysis.carbFiGramInDayAvg} </td>
			 	  
				<td>  ${analysis.carbFiPercent}  </td>         
			    
			    <td>  ${analysis.warnColorFiCarbs}  </td>  
			     --%>
			    <td><div class="${analysis.warnColorFiCarbs}" role="alert"> 
			    	<c:forEach begin="1" end="${analysis.carbFiPercent}" var="i">
    				<c:out value="I"> </c:out>
					</c:forEach>
			    </div></td>     
            </tr>	
            
            <tr> 	
   
             	<td> Salt	</td>
             	
			 <%-- 	<td> ${analysis.sodiumMgInDayAvg} </td>
			 	  
				<td>  ${analysis.sodiumPercent}  </td>         
			    
			    <td>  ${analysis.warnColorNa}  </td>    --%>
			    
			    <td><div class="${analysis.warnColorNa}" role="alert"> 
			    	<c:forEach begin="1" end="${analysis.sodiumPercent}" var="i">
    				<c:out value="I"> </c:out>
    				</c:forEach>
			    </div></td>  
            </tr>	
            
             <tr> 	
    
             	<td> Potassium	</td>
             <%-- 	
			 	<td> ${analysis. potassiumMgInDayAvg} </td>
			 	  
				<td>  ${analysis.potassiumPercent}  </td>         
			    
			    <td>  ${analysis.warnColorK}  </td>  --%>
			    
			  <%--   <td> <span class="text-success" > = </span> </td>${analysis.warnColorK} --%>
			    <td> <div class="${analysis.warnColorK}" role="alert"> 
			    	<c:forEach begin="1" end="${analysis.potassiumPercent}" var="i">
    				<c:out value="I"> </c:out> 
    				</c:forEach>
			    </div> </td>
            </tr>	
            
            
             </tbody> 
             </table>
             
<br> <br>

=======================================================================================

 <br> <br>		
<h2>User Settings and Cart Totals	</h2>
		<table class="table table-striped table-hover">
         <thead class="thead-dark">
          <tr class="text-success">
          
          	<th>Cost of Cart</th>
			
			<th># Days in Cart</th>
			
			<th>$/Day Average</th>
			
			<th>User Id     </th>
			
			<th>Activity Level     </th>
		
			<th>Age   </th>
			
			<th>Height</th>
			
			<th>Weight</th>
			
			<th>Target Weight</th>
			
			
		</thead>
		
		<tbody>
		 <tr>
		 	<td> ${analysis.costTotal} </td> 
		
			<td> ${analysis.numOfDays} </td>
			
			<td> ${analysis.costInDayAvg} </td>
			
			<td> Guest </td>
		
			<td> Moderate </td>
		
			<td> 38.1 years </td> 
		
			<td> 66.25 inches </td>
			
			<td> 182 lbs </td>
			
			<td> 133 lbs </td>
		</tr>	 
		</tbody>	
		</table>	
				
			
	<%-- 	</c:if>		    --%>
 <br> <br>




  <h2>Detail Analysis for Cart of size... ${list.size()} </h2>         
 <br> <br>
       
             <table class="table table-striped table-hover">
             <thead class="thead-dark">
             <tr class="text-success">
            
             	<th>RecMin </th>
             	<th>RecMax </th>
             	<th> </th>
             	<th>Description </th>
             	<th>Average Daily </th>
             	<th>% of Daily </th>
             	<th>Warnings </th>
             	
             </tr>
             </thead>
             
             
             <tbody>
             		
             <tr> 	
             	<td> ${analysis.carbRecMin} </td> 
      
            	<td> ${analysis.carbRecMax}	</td> 
             	
             	<td> 	</td>
             	
             	<td> Carbohydrates	</td>
             	
			 	<td> ${analysis.carbGramInDayAvg} </td>
			 	  
				<td>  ${analysis.carbCalPercent}  </td>         
			    
			    <td>  ${analysis.warnColorCarbs}  </td>        
            </tr>
 
             <tr> 	
             	<td> ${analysis.proteinMin} </td> 
      
            	<td> 	</td> 
             	
             	<td> 	</td>
             	
             	<td> Protein	</td>
             	
			 	<td> ${analysis.protGramInDayAvg} </td>
			 	  
				<td>  ${analysis.protPercent}  </td>         
			    
			    <td>  ${analysis.warnColorProt}  </td>        
            </tr>
            
            <tr> 	
             	<td> ${analysis.fatRecMin} </td> 
      
            	<td> ${analysis.fatRecMax}	</td> 
             	
             	<td> 	</td>
             	
             	<td> Fats	</td>
             	
			 	<td> ${analysis.fatGramInDayAvg} </td>
			 	  
				<td>  ${analysis.fatPercent}  </td>         
			    
			    <td>  ${analysis.warnColorFats}  </td>        
            </tr>
            
             <tr> 	
             	<td> ------ </td> 
      
            	<td> ------	</td> 
             	
             	<td> 	</td>
             	
             	<td> ------	</td>
             	
			 	<td> ------ </td>
			 	  
				<td> ------  </td>         
			    
			    <td> ------  </td>        
            </tr>
            
                
             <tr> 	
             	<td> ${analysis.carbFiberRecMin} </td> 
      
            	<td> ${analysis.carbFiberRecMax}	</td> 
             	
             	<td> 	</td>
             	
             	<td> Fiber	</td>
             	
			 	<td> ${analysis.carbFiGramInDayAvg} </td>
			 	  
				<td>  ${analysis.carbFiPercent}  </td>         
			    
			    <td>  ${analysis.warnColorFiCarbs}  </td>        
            </tr>	
            
            <tr> 	
             	<td> ${analysis.saltMin} </td> 
      
            	<td> ${analysis.saltMaxSuggest}	</td> 
             	
             	<td> 	</td>
             	
             	<td> Salt	</td>
             	
			 	<td> ${analysis.sodiumMgInDayAvg} </td>
			 	  
				<td>  ${analysis.sodiumPercent}  </td>         
			    
			    <td>  ${analysis.warnColorNa}  </td>        
            </tr>	
            
             <tr> 	
             	<td> ${analysis.potasRecMin} </td> 
      
            	<td> 	</td> 
             	
             	<td> 	</td>
             	
             	<td> Potassium	</td>
             	
			 	<td> ${analysis. potassiumMgInDayAvg} </td>
			 	  
				<td>  ${analysis.potassiumPercent}  </td>         
			    
			    <td>  ${analysis.warnColorK}  </td> 
            </tr>	
            
             </tbody> 
             </table>
   <br> <br>          
          
  <br> <br>           
     
     	<%-- 	<td>
                    <div style= 'background-color:blue; width:" + HorX[i] + "; /> 
                    <p> HorX[i]</p>                    
                </td>
                
                http://www.nullskull.com/a/784/html-horizontal-bar-chart.aspx
      --%>
     
			<%-- 	<% for(int i = 0; i < {analysis.carbCalPercent}/4; i+=1) { %>
            		<%= System.out.print("=")   %>
    				<% } %>	 --%>

		<%-- 	<% for(int i = 0; i < 100/4; i+=1) { %>
            		<%= System.out.print("=")   %>
    				<% } %>	 --%>

</body>
</html>