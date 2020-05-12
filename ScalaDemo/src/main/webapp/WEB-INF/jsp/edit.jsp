
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>Create an UserInfo</title>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
  </head>
<body>
 <div class="container">
<h3>User Information</h3>
	<br><br>
<form:form method="POST"  action="users/update" modelAttribute="users" class="text-center border border-light p-5">
		<table>
			<tr>
				<td><form:label path="id" class="h4 mb-4">ID</form:label></td>
				</tr> <tr>
				<td><form:input class="form-control mb-4" path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="name" class="h4 mb-4">Name</form:label></td></tr><tr>
				<td><form:input class="form-control  mb-4" path="name" /></td>
			</tr>
			<tr>
				<td><form:label class="h4 mb-4" path="address">Address</form:label></td></tr><tr>
				<td><form:input class="form-control mb-4" path="address" /></td>
			</tr>
			<tr>
				<td><form:label class="h4 mb-4" path="phoneNo">PhoneNo</form:label></td></tr><tr>
				<td><form:input class="form-control mb-4" path="phoneNo" /></td>
			</tr>
			<tr>
				<td><form:label class="h4 mb-4" path="rank">Rank</form:label></td></tr><tr>
				<td><form:input class="form-control mb-4" path="rank" /></td>
			</tr>
			</tr><tr>
			<tr>
				<td><input type="submit" class="btn btn-primary" value="Submit" /></td>
			</tr>
		</table>
	
	</form:form>
	</div>
</body>
</html>