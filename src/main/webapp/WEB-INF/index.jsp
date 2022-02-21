<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Fruity Loops</title>
		<!-- para CSS en Bootstrap -->
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/css/styles.css">
		
	</head>
	<body>
		<div class="container">
			<h1 class=color-purple>Fruit Store</h1>
			<div class="row border-purple border-30">
				<table class="table table-bordered border-purple">
					<thead>
						<tr>
							<th scope="col">Name</th>
							<th scope="col">Price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="fruta" items="${ frutas }">
							<tr>
								<td><c:out value="${fruta.getName()}"/></td>
								<td><c:out value="${fruta.getPrice()}"/></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- Para cualquier Bootstrap que use JS o jQuery -->
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>