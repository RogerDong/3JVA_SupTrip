<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ include file="/inc/bootstrap.jsp" %>

<title>SupTrip</title>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
    <div class="container" >
		<h1 class="text-center">SupTrip</h1>
		<p class="text-center">SupTrip is a service to search and list trips between SUPINFO different campus.</p>
		<p class="text-center">As a SUPINFO students, you will fall in love with the SupTrip Service.</p>
		
		<c:if test="${sessionScope.idbooster == null}">
			<div class="row" style="margin: 50px 0;">
				<div class="col-md-4 text-center text-muted"><p>Users<p></div>
				<div class="col-md-4 text-center text-muted"><p>Campus<p></div>
				<div class="col-md-4 text-center text-muted"><p>Trips<p></div>
			</div>
			<div class="row" style="margin: 50px 0;">
				<div class="col-md-4 text-center text-muted"><p>${userNum}<p></div>
				<div class="col-md-4 text-center text-muted"><p>${campusNum}<p></div>
				<div class="col-md-4 text-center text-muted"><p>${tripNum}<p></div>
			</div>
		</c:if>

        
		<c:if test="${sessionScope.idbooster != null}">
		<div style="height:50px;"></div>
			<div class="row col-md-11 col-md-offset-1">
				<form class="form" method="post" action="./home">
	                <div class="form-group col-md-3">
	                    <input type="text" class="form-control" name="departure" placeholder="Departure">
	                </div>
	                <div class="form-group col-md-3">
	                    <input type="text" class="form-control" name="destination" placeholder="Destination">
	                </div>
	                <div class="form-group col-md-2">
	                    <input type="submit" class="btn btn-default col-md-12" value="Search">
	                </div>
	                <div class="form-group col-md-2">
	                	<a href="/SupTrip/auth/bag" class="btn btn-default col-md-12">View Bag</a>
	                </div>
	            </form>
	            <table class="table">
	            	<tr>
	            		<th>No.</th>
	            		<th>Departure</th>
	            		<th>Destination</th>
	            		<th>Fee</th>
	            	</tr>
	            	<c:forEach items="${tripList}" varStatus="status" var="trip">
		            	<tr>
		            		<td><c:out value="${status.count}"></c:out></td>
		            		<td>${trip.departureCampus.campusName}</td>
		            		<td>${trip.destinationCampus.campusName}</td>
		            		<td>${trip.fee}</td>
		            		<td>
		            			<a href="/SupTrip/auth/addTrip?trip_id=<c:out value="${trip.id}" />"><Button class="btn btn-default" >Add</Button>
		            			</a>
		            		</td>
		            	</tr>
	            	</c:forEach>
	            	
	            </table>
			</div>
		</c:if>	
	</div>
	<%@ include file="/inc/footer.jsp" %>

</body>
</html>