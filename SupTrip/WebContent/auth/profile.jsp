<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ include file="/inc/bootstrap.jsp" %>

<title>SupTrip - User Profile</title>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<div class="container">
		<h1 class="text-center">User Information</h1>
		<form class="col-md-6 col-md-offset-3" role="form" method="post">
			<div class="form-group">
				<label for="idbooster">Idbooster:</label>
				<input type="text" class="form-control" name="idbooster" id="idbooster" value="${user.idbooster}" disabled="disabled" />	
			</div>	

			<div class="form-group">
				<label for="firstname">First Name:</label>
				<input type="text" class="form-control" name="firstname" id="firstname" value="${user.firstName}" >
			</div>
			<div class="form-group">
				<label for="lastname">Last Name:</label>
				<input type="text" class="form-control" name="lastname" id="lastname" value="${user.lastName}">
			</div>
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="text" class="form-control" name="email" id="email" value="${user.email}">
			</div>

			<div class="form-group">
				<label for="campus">Campus:</label>
				<select class="form-control" name="campus" id="campus">
					<c:forEach items="${campusList}" var="campus">
						<option value=<c:out value = "${campus.id}"/> ${campus.id == yourcampus.id ? 'selected="selected"' : ''} ><c:out value = "${campus.campusName}"/></option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<label for="old_password">Old Password:</label>
				<input type="password" class="form-control" name="old_password" id="old_password" >
			</div>
			<div class="form-group">
				<label for="new_password">New Password:</label>
				<input type="password" class="form-control" name="new_password" id="new_password" >
			</div>	
			<div class="form-group">
				<label for="confirm_new_password">Confirm New Password:</label>
				<input type="password" class="form-control" name="confirm_new_password" id="confirm_new_password" >
			</div>	
			
			<div class="form-group">
				<p class="text-danger"><c:out value="${message}"/></p>
			</div>
			
			<input type="submit" class="btn btn-default col-md-2 col-md-offset-5 col-xs-2 col-xs-offset-5 btn btn-default" value="Save">
			
		</from>
	</div>
	
	<%@ include file="/inc/footer.jsp" %>
	
</body>
</html>