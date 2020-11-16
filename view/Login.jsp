<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<title>Home</title>
<!--  <link rel="stylesheet" href="/resources/css/style.css"> -->
<!--     <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-grid.css"> -->
<!--     <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css"> -->
<!--     <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-grid.min.css"> -->
<!--     <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-reboot.css"> -->
<!--     <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-reboot.min.css"> -->
<!--     <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css"> -->


<!-- Bootstrap and jQuery -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
<script
	src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style type="text/css">
.navbar-dark .navbar-nav .nav-item {
	margin: 0 15px;
}

.navbar-brand {
	font-weight: bold;
	font-family: sans-serif;
}

label {
	font-weight: 500;
}

.form-check-label {
	font-weight: 400;
}

.service {
	background-color: rgba(255, 255, 255, 0);
}

.personal {
	background-color: rgba(201, 201, 201, 0);
}

.birth {
	background-color: rgba(201, 201, 201, 0);
}

.main {
	background: rgb(255, 128, 9);
	background: linear-gradient(180deg, rgba(255, 128, 9, 1) 46%,
		rgba(226, 212, 202, 1) 48%, rgba(4, 156, 38, 1) 68%,
		rgba(10, 164, 44, 1) 100%);
}

.card1 {
	background: rgb(245, 133, 27);
	background: linear-gradient(180deg, rgba(245, 133, 27, 1) 4%,
		rgba(226, 212, 202, 1) 47%, rgba(4, 156, 38, 1) 87%);
}

.card2 {
	background: rgb(245, 133, 27);
	background: linear-gradient(180deg, rgba(245, 133, 27, 1) 4%,
		rgba(226, 212, 202, 1) 47%, rgba(4, 156, 38, 1) 87%);
}

.card3 {
	background: rgb(245, 133, 27);
	background: linear-gradient(180deg, rgba(245, 133, 27, 1) 4%,
		rgba(226, 212, 202, 1) 47%, rgba(4, 156, 38, 1) 87%);
}

.myform {
	background: rgb(210, 193, 179);
	background: linear-gradient(180deg, rgba(210, 193, 179, 0.48783263305322133)
		0%, rgba(245, 133, 27, 1) 4%, rgba(226, 212, 202, 1) 47%,
		rgba(4, 156, 38, 1) 87%, rgba(185, 214, 192, 0.4542191876750701) 100%);
}

.signup {
	background: rgba(196, 175, 175, 0.432);
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px 0px #000;
	width: 500px;
}

.errors {
	font-weight: 400;
	color: red;
	font-size: small;
}
</style>
</head>

<body>
	<header>
		<nav
			class="navbar fixed-top navbar-expand-md navbar-dark bg-dark scrolling-navbar">
			<div class="container">
				<a class="navbar-brand" href="#">Passport Seva</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				
			</div>
		</nav>
	</header>
	
	<br><br>
	<div class="container-fluid py-5 main">
		<div class="container signup text-light justify-content-center">
			<form:form action="loginProcess" method="post" id="Login"
				commandName="Login">
				<div class="text-center h2 text-light">Welcome</div>
				<br>

				<div class="form-group ">
					<label for="username">Username</label> <form:input type="text"
						class="form-control" path="username" id="username"
						placeholder="Username"/>

				</div>

				<div class="form-group ">
					<label for="inputPassword3">Password</label> <form:input type="password"
						class="form-control" path="password" id="password"
						placeholder="Password"/>

				</div>

				<br>

				<div class="form-group ">
					<button type="submit" class="btn btn-primary ">Sign up</button>
				</div>
				<div class="form-group">
					<label class="text-right">New User? <a
						href="/PassportWeb/log/sign">click here</a></label>
				</div>

			</form:form>
			
		</div>
	</div>
	</div>


	<!--Footer-->
	<footer>
		<nav
			class="navbar navbar-expand-md navbar-dark bg-dark scrolling-navbar">
			<div class="container  bg-dark text-light">
				<div>
					<label>&copy; Government of India</label>
					<p>
						Passport Seva HQ<br> near post office, New Delhi<br>
						India
					</p>
				</div>

				<div>
					<label>Write to us </label>
					<p>passport.gov@hcl.com</p>
				</div>

			</div>
		</nav>
	</footer>
	<!--footer end-->


	<script>
        bootstrapValidate('#username', 'alpha:Only alphabets allowed')
   
        bootstrapValidate('#password', 'min:8:Enter at-least 8 characters')
      
    </script>
</body>

</html>