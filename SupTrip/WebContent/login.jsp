<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		
		<%@ include file="/inc/bootstrap.jsp" %>
		
		<title>SupTrip - Login</title>
	</head>
	<body>
		<%@ include file="/inc/header.jsp" %>
	    <div class="container">
	    	<h1 class="text-center">SupTrip Login</h1>
			<form class="col-md-6 col-md-offset-3" role="form" method="post" action="./login">
				<div class="form-group">
					<label for="idbooster">Idbooster:</label>
					<input type="text" class="form-control" name="idbooster" id="idbooster" required="required">	
				</div>		
				<div class="form-group">
					<label for="password">Password:</label>
					<input type="password" class="form-control" name="password" id="password" required="required">
				</div>
				<div class="form-group">
					<p class="text-danger"><c:out value="${message}"/></p>
				</div>
				<input class="col-md-2 col-md-offset-5 col-xs-2 col-xs-offset-5 btn btn-default" type="submit" value="login">
			</form>
		</div>
		<%@ include file="/inc/footer.jsp" %>
		
	</body>
</html>