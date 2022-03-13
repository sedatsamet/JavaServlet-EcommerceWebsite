<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>E-Commerce Web Site</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<style>
</style>

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
						<li class="nav-item active"><a class="nav-link"
							href="HomePage">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="Products">Products</a>
						</li>
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
		<div class="row">
			<table class="table-borderless"
				style="margin-left: 20px; margin-right: 20px; margin-top: 50px;">
				<tr>
					<td>
						<div class="card" style="width: 288px; height: 430px;">
							<img class="card-img-top" src="images/lgtv.jpg"
								alt="Card image cap" widt="286px" height="220px">
							<div class="card-body">
								<h5 class="card-title">LG Smart TV</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<a href="ProductDetails?name=TV" class="btn btn-primary">Go
									Details</a>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 288px; height: 430px;">
							<img class="card-img-top" src="images/smart_phone.jpg"
								alt="Card image cap" widt="286px" height="220px">
							<div class="card-body">
								<h5 class="card-title">Apple Smart Phone</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<a href="ProductDetails?name=Smart Phone"
									class="btn btn-primary">Go Details</a>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 288px; height: 430px;">
							<img class="card-img-top" src="images/notebook.jpg"
								alt="Card image cap" widt="286px" height="220px">
							<div class="card-body">
								<h5 class="card-title">Apple Notebook</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<a href="ProductDetails?name=Notebook" class="btn btn-primary">Go
									Details</a>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 288px; height: 430px;">
							<img class="card-img-top" src="images/desk.jpg"
								alt="Card image cap" widt="286px" height="220px">
							<div class="card-body">
								<h5 class="card-title">IKEA Desk</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<a href="ProductDetails?name=Desk" class="btn btn-primary">Go
									Details</a>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="row" style="margin-top: 20px;">
			<div class="col-3">
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
			</div>
			<div class="col-3">
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
			</div>
			<div class="col-3">
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
			</div>
			<div class="col-3">
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
				<p>Lorem ipsum dolor sit amet. Lorem, ipsum dolor sit amet
					consectetur adipisicing elit. Molestiae, quis.</p>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="https://use.fontawesome.com/bb4d945400.js"></script>
</body>

</html>