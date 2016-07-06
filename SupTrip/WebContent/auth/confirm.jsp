<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/inc/bootstrap.jsp" %>
<title>SupTrip - Comfirm Page</title>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<div class="container">
		<h1>Confirmation</h1>
		<table class="table">
			<tr>
				<td width="100">User ID</td>
				<td width="100">DepartureCampus</td>
				<td width="100">DestinationCampus</td>
				<td width="100">Fee</td>
			</tr>
			<c:forEach items="${confirmBags}" var="p">
				<tr>
					<td width="100"><c:out value="${p.user.idbooster}" /></td>
					<td width="100"><c:out value="${p.trip.departureCampus.campusName}" /></td>
					<td width="100"><c:out value="${p.trip.destinationCampus.campusName}" /></td>
					<td width="100"><c:out value="${p.trip.fee}" /></td>				
				</tr>
			</c:forEach>
		</table>
		<form role="form" method="post" action="/SupTrip/auth/bag">
			<input type="submit" class="btn btn-default" value="Submit">
		</form>
	</div>
	<%@ include file="/inc/footer.jsp" %>
</body>
</html>