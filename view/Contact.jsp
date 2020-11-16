<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<!-- <link rel="stylesheet" href="css/style.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css"> -->
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="css/bootstrap-reboot.min.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> -->

	
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

.errors {
	font-weight: 400;
	color: red;
	font-size: small;
}
</style>
</head>
<body>
<!-- 	<script src="js/jquery-3.5.1.min.js"></script> -->
<!-- 	<script src="js/popper.min.js"></script> -->
<!-- 	<script src="js/bootstrap.bundle.js"></script> -->
<!-- 	<script src="js/bootstrap.bundle.min.js"></script> -->
<!-- 	<script src="js/bootstrap.js"></script> -->
<!-- 	<script src="js/bootstrap.min.js"></script> -->


	<!--Header-->
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
				<!--col-auto i.e.,shifted rightside-->
				<div class="col-auto">
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item "><a class="nav-link" href="/PassportWeb/p/home">Home
									<span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Anexures </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item"
										href="https://portal2.passportindia.gov.in/AppOnlineProject/pdf/AnnexureA.pdf">Anexures-A</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item"
										href="https://portal2.passportindia.gov.in/AppOnlineProject/pdf/AnnexureC.pdf">Anexures-C</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item"
										href="https://portal2.passportindia.gov.in/AppOnlineProject/pdf/AnnexureD.pdf">Anexures-D</a>
								</div></li>
							 <li class="nav-item">
                                <a class="nav-link" href="/PassportWeb/p/about">About us</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link " href="/PassportWeb/p/contact">Contact us<span class="sr-only">(current)</span></a>
                            </li>
						</ul>
					</div>
				</div>
				<!--col-auto end-->
			</div>
		</nav>
	</header>
	<!--header end-->
	<br>
	<div class="container-fluid main bg-secondary">
		<br>
		<div class="container  bg-light">
			<div class="tsg-rwd-content-page-parsysxxx parsys">
				<div class="tsg-rwd-text parbase section">

					<div style="margin-top: 5px">


						<p></p>
						<p>The National Passport Information Center is available to
							answer your passport questions.&nbsp;</p>
						<p>
							<b>Please note</b>: If you're outside India, please contact the
							nearest&nbsp;<a href="http://www.eoi.gov.in/"
								title="Find your Nearest Embassy or Consulate">INDIAN
								Embassy or Consulate</a>.
						</p>
						<p></p>

					</div>
				</div>
				<div class="tsg-rwd-text parbase section">

					<div style="margin-top: 5px">

						<h2 id="tsg-rwd-text" class="main_section">Passport
							Questions?</h2>
						<p></p>
						<ul>
							<li><b>Phone</b>:&nbsp;<b><a title="Call NPIC"
									href="tel:+91-8774872778" adhocenable="false">+91-877-487-2778</a>/&nbsp;<a
									title="Call NPIC, TDD/TTY" href="tel:18888747793"
									adhocenable="false">+91-888-874-7793</a></b>&nbsp;(TDD/TTY)
								<ul>
									<li>Customer service representatives are available:<br>
										&nbsp;&nbsp;&nbsp;&nbsp;Monday- Friday &nbsp; &nbsp; &nbsp;
										&nbsp; &nbsp; &nbsp;8:00 a.m. to 10:00 p.m. IST<br>
										&nbsp; &nbsp; *Except on National Holidays
									</li>

								</ul></li>
							<li><b>Email</b>:&nbsp;<a href="passport@state.gov"
								title="Email Passport service at eoi dot gov"
								adhocenable="false">eoi@state.gov</a>&nbsp;
								<ul>
									<li>Most email inquiries are answered within 24 hours.</li>
									<li>Please call for the status of your passport. We cannot
										email that information.</li>
									<li><i>Do not email for travel emergencies. Contact us
											by phone only.</i></li>
								</ul></li>
						</ul>
						<p>
							<i>&nbsp;</i>
						</p>
						<p></p>

					</div>
				</div>
				<div class="tsg-rwd-text parbase section">

					<div style="margin-top: 5px">

						<h2 id="tsg-rwd-text" class="main_section">Make an
							Appointment at a Passport Agency</h2>
						<p></p>
						<ul>
							<li><b>Online</b>:&nbsp;<a
								title="Online Passport Appointment System"
								href="https://portal2.passportindia.gov.in/AppOnlineProject/online/apptAvailStatus"
								adhocenable="false">Online&nbsp;Passport
									Appointment&nbsp;System</a></li>
							<li><b>Phone</b>:&nbsp;&nbsp;<a href="tel:+91-8774872778"
								title="Call NPIC" adhocenable="false">+91-877-487-2778</a>&nbsp;or&nbsp;<a
								title="Call NPIC TDD TTY" href="tel:91-888-874-7793"
								adhocenable="false">+91-888-874-7793</a>&nbsp;(TDD/TTY).</li>
						</ul>

						Some customers may be eligible to apply at a passport agency or
						center. Learn more on our <a
							title="Passport Agency and Center info" adhocenable="false"
							href="/content/travel/en/passports/get-fast/passport-agencies.html">Passport
							Agency and Center</a> page.&nbsp;
						</p>
						<p>&nbsp;</p>
						<p></p>

					</div>
				</div>
				<div class="tsg-rwd-text parbase section">

					<div style="margin-top: 5px">

						<h2 id="tsg-rwd-text" class="main_section">Life-or-Death
							Emergencies</h2>
						<p></p>
						<p>
							If you have a life-or-death emergency and are traveling
							internationally in the next 72 hours (3 business days), please
							visit our <a title="Life-or-Death info" adhocenable="false"
								href="https://portal1.passportindia.gov.in/AppOnlineProject/online/faqTatkaalPassports">Life-or-Death
								Emergency page</a> for more information.&nbsp;
						</p>
						<p>&nbsp;</p>
						<p></p>

					</div>
				</div>
				<div class="tsg-rwd-text parbase section">

					<div class="tsg-rwd-text parbase section">

						<div style="margin-top: 5px">

							<h2 id="tsg-rwd-text" class="main_section">Website Issues</h2>
							<p></p>
							<p>
								Complete a&nbsp;Website Issues</a>&nbsp;form to report problems with
								our website such as broken links and missing or incorrect
								information. This form is not for customer service issues or
								questions about your passport application.&nbsp;
							</p>
							<p></p>

						</div>
					</div>
				</div>
			</div>
			<br>
		</div>
		</div>
		<br>
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
</body>
</html>