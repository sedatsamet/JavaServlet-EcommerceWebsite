<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products Page</title>
</head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<body>
	<div class="container-fluid">
		<div class="row">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<a class="navbar-brand" href="HomePage">E-Commerce Web Site
					Project</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarText" aria-controls="navbarText"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarText">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="HomePage">Home</a>
						</li>
						<li class="nav-item active"><a class="nav-link"
							href="Products">Products</a></li>

					</ul>
					<span
						class="collapse navbar-collapse navbar-text justify-content-end">
						<c:if test="${not empty sessionScope.username}">
							<span class="navbar-text"><c:out
									value="${sessionScope.username}"></c:out> logged in</span>
							<a class="nav-link" href="Logout">Logout</a>
						</c:if> <c:if test="${empty sessionScope.username}">
							<a class="nav-link" href="form.jsp">Sign in</a>
							<a class="nav-link" href="register.jsp">Sign up</a>
							<span class="navbar-text">Not logged in</span>
						</c:if> <a class="nav-link" href="ShoppingCart"><i
							class="fa fa-shopping-basket" aria-hidden="true"></i></a>
					</span>
				</div>
			</nav>
		</div>
	</div>
	<div class="container-fluid text-center">
		<table class="table table-hover " style="margin-top: 20px;">
			<thead class="thead-dark">
				<th><b>ID</b></th>
				<th><b>Name</b></th>
				<th><b>Brand</b></th>
				<th><b>Image</b></th>
				<th><b>Details</b></th>
				<th><b>Quantity</b></th>
				<th><b>Price</b></th>
				<th><b> </b></th>
			</thead>
			<c:forEach items="${requestScope.prods}" var="prod">
				<tr>
					<td><c:out value="${prod.prodID}"></c:out></td>
					<td><c:out value="${prod.prodName}"></c:out></td>
					<td><c:out value="${prod.prodBrand}"></c:out></td>
					<td><img src="images/<c:url value="${prod.imgsrc}"/>"
						alt="image" width="80" height="80"></td>
					<td><a href="ProductDetails?name=${prod.prodName}"
						class="btn btn-primary">Go Details</a></td>
					<td><c:out value="${prod.quantity}"></c:out></td>
					<td><c:out value="${prod.price} $"></c:out></td>
					<td><a href="AddCart?name=${prod.prodName}"><button
								type="button" class="btn btn-outline-secondary">Add to
								Cart</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
		integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
		integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
		crossorigin="anonymous"></script>
	<script src="https://use.fontawesome.com/bb4d945400.js"></script>
</body>
</html>