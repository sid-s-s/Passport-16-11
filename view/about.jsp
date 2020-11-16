<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

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

.errors {
	font-weight: 400;
	color: red;
	font-size: small;
}
</style>
</head>

<body>
<!--     <script src="/resources/js/jquery-3.5.1.min.js"></script> -->
<!--     <script src="/resources/js/popper.min.js"></script> -->
<!--     <script src="/resources/js/bootstrap.bundle.js"></script> -->
<!--     <script src="/resources/js/bootstrap.bundle.min.js"></script> -->
<!--     <script src="/resources/js/bootstrap.js"></script> -->
<!--     <script src="/resources/js/bootstrap.min.js"></script> -->
    

    <!--Header-->
    <header>
        <nav class="navbar fixed-top navbar-expand-md navbar-dark bg-dark scrolling-navbar">
            <div class="container">
                <a class="navbar-brand" href="#">Passport Seva</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!--col-auto i.e.,shifted rightside-->
                <div class="col-auto">
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item ">
                                <a class="nav-link" href="/PassportWeb/p/home">Home </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Anexures
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item"
                                        href="https://portal2.passportindia.gov.in/AppOnlineProject/pdf/AnnexureA.pdf">Anexures-A</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item"
                                        href="https://portal2.passportindia.gov.in/AppOnlineProject/pdf/AnnexureC.pdf">Anexures-C</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item"
                                        href="https://portal2.passportindia.gov.in/AppOnlineProject/pdf/AnnexureD.pdf">Anexures-D</a>
                                </div>
                            </li>
                             <li class="nav-item active">
                                <a class="nav-link" href="/PassportWeb/p/about">About us<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/PassportWeb/p/contact">Contact us</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--col-auto end-->
            </div>
        </nav>
    </header>

    <!--header end-->
    <div class="container-fluid main py-5">
        <br>
        <div class="card" style="width: 60rem;">
            <div class="card-body">
                <h5 class="card-title">About Us</h5>
                <h6 class="card-subtitle mb-2 text-muted">Passport Seva</h6>
                <p class="card-text">Apply for passport online. In recent years, the Government of India has taken many
                    initiatives to usher in an era of e-Governance to improve the delivery of public services. The
                    National e-Governance Plan (NeGP) includes many high impact e-Governance projects that have been
                    identified as Mission Mode Projects (MMP's). One such project focuses on reforming Passport services
                    in India.

                    The Ministry of External Affairs (MEA) is responsible for issuance of Passports to Indian Citizens
                    through a network of 36 Passport offices across the Country and 190 Indian Missions and Posts
                    abroad.

                    A Passport is an essential travel document for those who are traveling abroad for education,
                    tourism, pilgrimage, medical attendance, business purposes and family visits. During the last few
                    years, the growing economy and spreading globalization have led to an increased demand for Passport
                    and related services. This increasing demand for passports and related services is coming from both
                    large cities and smaller towns, creating a need for wider reach and availability. To augment and
                    improve the delivery of passport services to Indian citizens, the Ministry of External Affairs (MEA)
                    launched the Passport Seva Project (PSP) in May 2010.

                    The project has been implemented in a Public Private Partnership (PPP) mode with Tata Consultancy
                    Services, selected through a public competitive procurement process. Under this program, the
                    sovereign and fiduciary functions like verification, granting and issuing of passport have been
                    retained by MEA. The ownership and strategic control of the core assets including data/information
                    is with MEA.

                    Passport Seva enables simple, efficient and transparent processes for delivery of passport and
                    related services. Apart from creating a countrywide networked environment for Government staff, it
                    integrates with the State Police for physical verification of applicant's credentials and with India
                    Post for delivery of passports.</p>
                <a href="Application.html" class="card-link">Apply Now</a>
            </div>
        </div>
    </div>
    <!--Footer-->
    <footer>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark scrolling-navbar">
            <div class="container py-5 bg-dark text-light">
                <div><label>&copy; Government of India</label>
                    <p>Passport Seva HQ<br>
                        near post office, New Delhi<br>
                        India
                    </p>
                </div>

                <div>
                    <label>Write to us </label>
                    <p> passport.gov@hcl.com</p>
                </div>

            </div>
        </nav>
    </footer>
    <!--footer end-->
</body>
</head>

</html>