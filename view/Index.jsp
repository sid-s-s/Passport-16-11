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
                            <li class="nav-item active">
                                <a class="nav-link" href="/PassportWeb/p/home">Home <span class="sr-only">(current)</span></a>
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
                            <li class="nav-item">
                                <a class="nav-link" href="/PassportWeb/p/about">About us</a>
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

        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                   <a href="/PassportWeb/p/page"><img class="d-block w-100" src="/PassportWeb/WebContent/WEB-INF/resources/img/new apply.jpg" height="290" alt="First slide"></a> 
                  </div>
              <div class="carousel-item ">
                <img class="d-block w-100" src="/PassportWeb/WebContent/WEB-INF/resources/img/unity_awards2020.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="/PassportWeb/WebContent/WEB-INF/resources/img/svanidhi.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="/PassportWeb/WebContent/WEB-INF/resources/img/iGot.jpg" alt="Fourth slide">
              </div>
            </div>
          </div>
        <div class="row">
            <div class="card card1 col-md-3" style="width: 25rem;">
                <div class="card-body">
                    <h5 class="card-title">Office-Time</h5>
                    <h6 class="card-subtitle mb-2 text-muted">updated timings</h6>
                    <p class="card-text">New Delhi: Monday through Friday from 08:45 am to 11:30 am, closed on second
                        Friday and last Wednesday of every month.<br>
                    </p>
                    <p>
                        Chennai: Monday through Friday from 9:00 a.m. to 12:00 p.m., closed on all Wednesdays and second
                        Friday of every month.<br>
                    </p>
                    <p>
                        Hyderabad: Monday to Friday from 8:30am to 12:00pm., closed the last Wednesday of every
                        month.<br>
                    </p>
                    <p>
                        Kolkata: Monday through Friday, closed on second Friday and last Wednesday of every month. <br>
                    </p>
                    <p>
                        Mumbai: Monday through Friday from 8:30 a.m. to 12:00 p.m.,closed on second Friday and last
                        Wednesday of every month.</p>
                </div>
            </div>
            <div class="card card2 col-md-6" style="width: 27rem; ">
                <div class="card-body">
                    <h5 class="card-title">UPDATE ON LIMITED SERVICES DUE TO COVID:</h5>
                    <h6 class="card-subtitle mb-2 text-danger">*Important*</h6>
                    <p class="card-text">

                        Passport Office and Consulates in India are providing limited in-person services to Indian
                        citizens at this time.
                        Adult citizens using form DS-82 to renew a previous passport must send those applications by
                        mail to the Passport Office or Consulate responsible for the state where the applicant resides.
                    </p>
                    <p>
                        Limited appointment slots are now available online. Additional appointment times will be made
                        available each Monday.
                        Please note that appointment availability is reduced to ensure the safety of our customer
                        through proper social distancing. If you have an immediate need to travel, or another urgent
                        circumstance, please email New Delhi, Chennai, Hyderabad, Kolkata, or Mumbai to request an
                        emergency passport appointment.</p>
                    <label for="application">Provide details online for passport</label>
                    <br>
                    <a href="/PassportWeb/p/page" class="card-link"><h3>Apply now</h3></a>

                </div>
            </div>
            <div class="card card3 col-md-3" style="width: 25rem;  ">
                <div class="card-body">
                    <h5 class="card-title">External Links</h5>
                    <ul>
                        <li><a href="https://www.mea.gov.in/" class="card-link text-dark">Ministry of External
                                Affairs</a></li>
                        <li><a href="https://www.india.gov.in/" class="card-link text-dark">National Portal
                                Of India</a></li>
                        <li><a href="https://indianvisaonline.gov.in/evisa/tvoa.html" class="card-link text-dark">Visa on arrival
                                </a></li>
                        <li><a href="http://www.boi.gov.in/" class="card-link text-dark">Bureau of Immigration</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--Footer-->
    <footer>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark scrolling-navbar">
            <div class="container  bg-dark text-light">
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

</html>