
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Programming</title>
</head>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<body>
	<div class="container text-center">
		<form class="form-signin" action="Register" method="POST">
			<a href="HomePage"><img class="mb-4"
				src="images/shopping_cart.jpg" alt="" width="72" height="72"></a>
			<h1 class="h3 mb-3 font-weight-normal">Please Sign up</h1>

			<div class="form-group">
				<label for="userName" class="sr-only">Username</label> <input
					type="text" id="inputEmail" class="form-control-sm"
					name="user_name" placeholder="Username" required autofocus>
			</div>
			<br>
			<div>
				<label for="inputPassword" class="sr-only">Password</label> <input
					type="password" id="inputPassword" class="form-control-sm"
					name="password" placeholder="Password" required>
			</div>
			<div>
				<br> <label for="inputPassword_check" class="sr-only">Password</label>
				<input type="password" id="inputPassword_check"
					class="form-control-sm" name="password_check"
					placeholder="Password Again" required>
			</div>
			<br>
			<div class="form-group text-center" style="margin-left:55px;">
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
					up</button>
			</div>
		</form>
		<hr>
		<span style="margin-left:55px;">If you have already an account</span> <br> <a
			href="form.jsp" style="margin-left:55px;"><button class="btn btn-lg btn-primary btn-block">Sign
				in</button></a>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
		integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
		integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
		crossorigin="anonymous"></script>
</body>

</html>