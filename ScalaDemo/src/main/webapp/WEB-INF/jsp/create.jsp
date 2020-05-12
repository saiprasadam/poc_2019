
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            
      <title>Create an UserInfo</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
  </head>
<body>
 <div class="container">
<h3>User Information</h3>
	<br><br>
<form:form method="POST" action="users/form" modelAttribute="user" class="text-center border border-light p-5">
		<table>
			
			<!-- <div class="form-group"> -->
				<tr>
				<td><form:label path="name" class="h4 mb-4">Name</form:label></td></tr>
				<tr>
				<td><form:input class="form-control mb-4"  path="name" /></td>
				</tr>
				<!-- </div> -->

			<!-- <div class="form-group"> -->
			<tr>
				<td><form:label path="address" class="h4 mb-4">Address</form:label></td></tr>
				<tr>
				<td><form:input class="form-control mb-4" path="address" /></td></tr>
			<!-- </div> -->
			<tr>
				<td><form:label path="phoneNo" class="h4 mb-4">PhoneNo</form:label></td></tr><tr>
				<td><form:input class="form-control mb-4" path="phoneNo" /></td>
			</tr>
			<tr>
				<td><form:label path="rank"  class="h4 mb-4">Rank</form:label></td></tr><tr>
				<td><form:input class="form-control mb-4" path="rank" /></td>
			</tr>
			<tr> </tr>
			<tr>
				<td><input type="submit" class="btn btn-primary" value="Submit" /></td>
			</tr>
		</table>
	
	</form:form>
	</div>
</body>
</html>