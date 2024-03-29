<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Manager</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<spring:url value="/css/bootstrap-select.min.css"/>"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="<spring:url value="/js/bootstrap-select.min.js"/>"></script>

</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<form action="<spring:url value="/project/save"/>" method="post"
				class="col-md-8 col-md-offset-2">

				<div class="form-group">
					<label for="project-name">Name</label> <input type="text"
						id="project-name" class="form-control" name="name" />
				</div>
				
				<div class="form-group">
					<label for="project_type">Type</label>
					<select name="type" class="selectpicker">
					<option value="single">Single Year</option>
					<option value="multi">Multi-Year</option>
					</select>
				</div>

				<div class="form-group">
					<label for="sponsor">Sponsor</label> <input id="sponsor"
						class="form-control" name="sponsor" type="text" />
				</div>

				<div class="form-group">
					<label for="funds">Authorized Funds</label> <input id="funds"
						class="form-control" name="authorizedFunds" type="text" />
				</div>

				<div class="form-group">
					<label for="hours">Authorized Hours</label> <input id="hours"
						class="form-control" name="authorizedHours" type="text" />
				</div>

				<div class="form-group">
					<label for="description">Description</label>
					<textarea class="form-control" id="description" name="description" rows="3"></textarea>
				</div>
				
				<div class="form-group">
					<label for="special">Special</label>
					<input id="special" name="special" type="checkbox">
				</div>
				
				<div class="form-group">
					<label for="year">Year</label>
					<input id="year" name="year" type="text">
				</div>

				<button type="submit" class="btn btn-default">Submit</button>

			</form>

		</div>
	</div>
</body>
</html>