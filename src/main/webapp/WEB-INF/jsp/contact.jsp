<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Contact Us</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>
</head>





<body>
<br>

	<div class="container">
		<jsp:include page="header.jsp"/>   
		<div class="col-lg-10 col-md-10" col-sm-12>
			<br>
			
			<h3> ${title}</h3> <h3> ${message}</h3> 
			
		
			<br><br>
We are based in St. Louis, Mo and serve the greater USA.
Please reach out to us if you have any questions regarding our methodology
or if you have suggestions to improve your experience!
Type your message here and leave us an email address so we can respond.........
			<br><br>

			<div class="container">

			<%-- 	<spring:message code="welcome.msg"/> --%>
				<form:form id="emails" method="post" modelAttribute="mail"
					action="inquiryMail">
					<div class="row">
						<div class="col-md-8">
							<div class="text-center">
							<h2><spring:message code="welcome.msg"/></h2>
								<%-- <h3 class="text-primary">${message}</h3> --%>
								<h3 class="text-danger">${error}</h3>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<form:input type="text" class="form-control" path="email"
									placeholder="E-mail Address" />

							</div>
						</div>
						<div class="col-md-4">
							<form:input type="text" path="subject" class="form-control"
								placeholder="subject" />

						</div>
					</div>
					<div class="row">
						<div class="col-lg-8">
							<textarea class="form-control" id="msg" name="msg" rows="5"
								placeholder="message"></textarea>

						</div>

					</div>
					<div class="row">
						<br>
						<br>
						<br>
						<div class="col-md-4">
							<button type="submit" name="submit" class="btn btn-primary">Submit Message</button>
							<a href="contact" class="btn btn-primary" role="button">Reset</a>
						</div>
					</div>


				</form:form>

							
			</div>


			<jsp:include page="footer.jsp"></jsp:include>  
		</div>

	</div>



</body>


</html>

