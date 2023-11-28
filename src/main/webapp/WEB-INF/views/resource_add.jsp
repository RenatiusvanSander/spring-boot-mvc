<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Manager</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="<spring:url value="/css/bootstrap-select.min.css"/>" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="<spring:url value="/js/bootstrap-select.min.js"/>"></script>

<script>var ctx = "${pageContext.request.contextPath}"</script>
<script src="<spring:url value="/js/resource.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/css/style.css"/>" type="text/css"/>

</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">
	
		<div class="row">
			<h1>Resource</h1>
		</div>
		
		<spring:url value="/resource/save"/>
		<form action="<spring:url value="/resource/save"/>" method="POST">
			
			<div class="row">
				
				<div class="form-group">
					<label for="resource-name">Name</label>
					<input name="name" class="form-control" type="text" id="resource-name"/>
				</div>

				<div class="form-group">
					<label for="resource-type">Type</label>
					<select name="type" class="selectpicker" id="resource-type">
					<option></option>
					<option value="material">Materials</option>
					<option value="other">Other</option>
					<option value="staff">Staff</option>
					</select>
				</div>

				<div class="form-group">
					<label for="cost">Cost</label>
					<input id="cost" class="form-control" name="cost" />
				</div>

				<div class="form-group">
					<label for="unitOfMeasure">Unit of Measure</label>
					<input type="text" class="form-control" name="unitOfMeasure" id="unitOfMeasure"/>
				</div>
				
				<button type="submit" class="btn btn-default">Submit</button>

			</div>
		
		</form>
		
	</div>
</body>
</html>