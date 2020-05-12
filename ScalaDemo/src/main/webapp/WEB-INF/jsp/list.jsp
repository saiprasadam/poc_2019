<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
      <title>list of Users</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  </head>
<body>
   
    <div class="container">
    <h3>UserInformation List</h3> 
  <h4 style="margin-left: 908px;">
<!--      <a href="/users/form">Add UserInfo</a> -->
<a href="/users?form=true">Add UserInfo</a>
</h4>      
  <table class="table table-bordered">
  <thead>
            <tr>
               <th>ID</th>
								<th>Name</th>
								<th>Address</th>
								<th>Phone</th>
								<th>Rank</th>
								<th>Action</th>
            </tr>	

	  	<c:forEach var="listValue" items="${users}">
				
            <tr>
			<td>${listValue.id}</td>
			<td>${listValue.name}</td>
			<td>${listValue.address}</td>
			<td>${listValue.phoneNo}</td>
			<td>${listValue.rank}</td>
			<td> <a href="users/edit/${listValue.id}" >Edit</a> |
									<a href="users/delete/${listValue.id}" >Delete</a>
			
			
			
               
             
            </tr>
            </c:forEach>
</thead>
         </table>
      </div>
   </body>
</html>