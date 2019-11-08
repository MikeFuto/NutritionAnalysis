<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>




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
        
<form:form method="POST" action="savecontact" modelAttribute="address" enctype="multipart/form-data" class="col-md-8">
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
<label>Phone*</label>
<form:input  path="phone" class="form-control" required="true"/>	

<label>Add Image*</label>
<div class="form-group"> 
                <form:input id="fileInput" type="file" path="file" onchange="updateSize();" />	                
                <form:input type="hidden" path="user_id" value="${logedinUser.id}"/>
                <p>selected files: <span id="fileNum">0</span>;
                total size: <span id="fileSize">0</span></p>
        </div>
        
<form:input type="hidden" path="email" value="${logedinUser.email}"/>	


<div >

<button class="btn btn-success" type="submit" id="submit" >
Submit
</button>
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
        
      </div>
    </div>
  </div>
 
 
 
 
 
 <!--  ==================================================== -->
 
 
  <div class="modal" id="addImage">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">	      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;Add Picture</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>	        
        <!-- Modal body -->
        <div class="modal-body">	      
        <div class="container" >

<div class="form-group col-md-5"> 
    <form enctype="multipart/form-data" action="uploadMultipleFiles" method="POST">
            <div class="row">
                Please select:
                <input id="fileInput" type="file" name="uploadingFiles" onchange="updateSize();" multiple>
                Please select:
                <input id="fileInput" type="file" name="uploadingFiles" onchange="updateSize();" multiple>
                Please select:
                <input id="fileInput" type="file" name="uploadingFiles" onchange="updateSize();" multiple>
                Please select:
                <input id="fileInput" type="file" name="uploadingFiles" onchange="updateSize();" multiple>
                Please select:
                <input id="fileInput" type="file" name="uploadingFiles" onchange="updateSize();" multiple>
                <input type="hidden" name="id" value="${logedinUser.id}"/> 
            
            </div><br>	
            <div class="row">	              
                <input type="submit" class="btn btn-primary" value="Upload files">
            <button type="button" class="btn btn-danger small" data-dismiss="modal">Cancel</button>
        
        </div>
                
        </form>
                         
</div>	

        </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>




<!--  ==================================================== -->


<div class="modal" id="displayDescription">
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
   
    <!--  ================================================ -->
   
  <table>
		<tr>
			<th>Plan Name     </th>
			<th>_____</th>
			<th>Plan Date     </th>
			<th>_____</th>
			<th>Plan Budget   </th>
			<th>_____</th>
			<th>Plan Description</th>	
		</tr>
		
		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>
		
		<tr>
			<td> ${analysis.planName} </td>
			<th> </th>
			<td> ${analysis.planDate} </td>
			<th> </th>
			<td> ${analysis.planBudget} </td> 
			<th> </th>
			<td> ${analysis.planDescription} </td>
		</tr>	
</table>	

<br>
<br>

<h3>Nutrition analysis.............</h3>
<table>	<!--  add table of selected attributes  -->
		
		<tr>
			<th>Recommended   </th>
			<th>-----</th>
			<th>Description   </th>
			<th>-----</th>
			<th>SubTot Calories</th>
			<th>-----</th>
			<th>Warnings      </th>
		</tr>
		
		<tr>  
			<th>=====</th>
			<th>=====</th>
			<th>=====</th>
			<th>=====</th>
			<th>=====</th>
			<th>=====</th>
		</tr>
		
		<tr>
			<td> ${analysis.rangeCarbs}</td>
			<th> </th>
			<td> Carbohydrates         </td>
			<th> </th>
			<td> ${analysis.totalCarbs}</td> 
			<th> </th>
			<td> ${analysis.warnCarbs} </td>
		</tr>	

		<tr>
			<td> ${analysis.rangeProtein}</td>
			<th> </th>
			<td> Proteins                </td>
			<th> </th>
			<td> ${analysis.totalProtein}</td> 
			<th> </th>
			<td> ${analysis.warnProtein} </td>
		</tr>	

		<tr>
			<td> ${analysis.rangeFats} </td>
			<th> </th>
			<td> Fats/Lipds            </td>
			<th> </th>
			<td> ${analysis.totalFats} </td> 
			<th> </th>
			<td> ${analysis.warnFats}  </td>
		</tr>	
		
		<tr>
			<td> ${analysis.rangeSatFat} </td>
			<th> </th>
			<td> Saturated Fats          </td>
			<th> </th>
			<td> ${analysis.totalSatFat} </td> 
			<th> </th>
			<td> ${analysis.warnSatFat}  </td>
		</tr>	
		
		<tr>
			<td> ${analysis.rangeO3Fat} </td>
			<th> </th>
			<td> Omega3 Fats            </td>
			<th> </th>
			<td> ${analysis.totalO3Fat} </td> 
			<th> </th>
			<td> ${analysis.warnO3Fat}  </td>
		</tr>	
		
		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>
		
		<tr>
			<td> ${analysis.rangeNa}    </td>
			<th> </th>
			<td> Sodium                 </td>
			<th> </th>
			<td> ${analysis.totalNa}    </td> 
			<th> </th>
			<td> ${analysis.warnNa}     </td>
		</tr>	
		
		<tr>
			<td> ${analysis.rangeK}     </td>
			<th> </th>
			<td> Potassium              </td>
			<th> </th>
			<td> ${analysis.totalK}     </td> 
			<th> </th>
			<td> ${analysis.warnK}      </td>
		</tr>	 
		
		<tr>
			<td> ${analysis.rangeHg}    </td>
			<th> </th>
			<td> Mercury                </td>
			<th> </th>
			<td> ${analysis.totalHg}    </td> 
			<th> </th>
			<td> ${analysis.warnHg}     </td>
		</tr>	 
		
		<tr>	
			<th>=====</th>
			<th>=====</th>
			<th>=====</th>
			<th>=====</th>
			<th>=====</th>
			<th>=====</th>
		</tr>
		
		<tr>
			<td> ${analysis.rangeCalories}</td>
			<th> </th>
			<td> Total Calories           </td>
			<th> </th>
			<td> ${analysis.totalCalories}</td> 
			<th> </th>
			<td> ${analysis.warnCalories} </td>
		</tr>	 
		
		<tr>
			<td> ${analysis.rangeServings}</td>
			<th> </th>
			<td> Total Servings           </td>
			<th> </th>
			<td> ${analysis.totalServings}</td> 
			<th> </th>
			<td> ${analysis.warnServings} </td>
		</tr>	 
		
		<tr>
			<td> ${analysis.planBudget}}  </td>
			<th> </th>
			<td> Total Cost               </td>
			<th> </th>
			<td> ${analysis.totalCost}    </td> 
			<th> </th>
			<td> ${analysis.warnCost}     </td>
		</tr>	 
		
		
		<!--  possible to include allergy and Vitamin and Mineral and water data-->
</table>	

   
  <!--  ================================================ -->
   
   
        
<form:form method="POST" action="savecontact" modelAttribute="address" enctype="multipart/form-data" class="col-md-8">
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
<label>Phone*</label>
<form:input  path="phone" class="form-control" required="true"/>	




<label>Add Image*</label>
<div class="form-group"> 
                <form:input id="fileInput" type="file" path="file" onchange="updateSize();" />	                
                <form:input type="hidden" path="user_id" value="${logedinUser.id}"/>
                <p>selected files: <span id="fileNum">0</span>;
                total size: <span id="fileSize">0</span></p>
        </div>
        
<form:input type="hidden" path="email" value="${logedinUser.email}"/>	


<div >

<button class="btn btn-success" type="submit" id="submit" >
Submit
</button>


<button type="button" class="btn btn-primary small" data-dismiss="modal">Cancel</button>
    </div>
</form:form>

        </div>
        </div>
        
        
        <!-- Put table of picture and description and nutritional info here and then delete the other stuff -->
        
        
        
        
        <!-- Modal footer -->
        <div class="modal-footer">
        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
 
 


