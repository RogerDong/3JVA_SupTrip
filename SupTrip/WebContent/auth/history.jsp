<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="/inc/bootstrap.jsp" %>
<title>SupTrip - User's Bag History</title>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<div class="container">
		<h1>Bag</h1>
		<table class="table">
				<tr>
					<th>Departure Campus</td>
					<th>Destination Campus</td>
					<th>Fee</td>
				</tr>
			<c:forEach items="${listBags}" var="p">
				<tr>
					<td><c:out value="${p.trip.departureCampus.campusName}" /></td>
					<td><c:out value="${p.trip.destinationCampus.campusName}" /></td>
					<td><c:out value="${p.trip.fee}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<%@ include file="/inc/footer.jsp" %>
</body>
</html>