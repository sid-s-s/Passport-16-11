<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%-- <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<c:url value="/resources/css/bootstrap-grid.css"/>"> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<c:url value="/resources/css/bootstrap.css"/>"> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<c:url value="/resources/css/bootstrap-grid.min.css"/>"> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<c:url value="/resources/css/bootstrap-reboot.css"/>"> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<c:url value="/resources/css/bootstrap-reboot.min.css"/>"> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<c:url value="/resources/css/bootstrap.min.css"/>"> --%>

<%-- 	<script src="<c:url value="/resources/js/jquery-3.5.1.min.js"/>"></script> --%>
<%-- 	<script src="<c:url value="/resources/js/popper.min.js"/>"></script> --%>
<%-- 	<script src="<c:url value="/resources/js/bootstrap.bundle.js"/>"></script> --%>
<%-- 	<script src="<c:url value="/resources/js/bootstrap.bundle.min.js"/>"></script> --%>
<%-- 	<script src="<c:url value="/resources/js/bootstrap.js"/>"></script> --%>
<%-- 	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script> --%>


<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/validation.js" />"> </script>          




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
<script>
	$(function() {

		$.validator.setDefaults({
			errorClass : 'help-block',
			highlight : function(element) {
				$(element).closest('.form-group').addClass('has-error');
			},
			unhighlight : function(element) {
				$(element).closest('.form-group').removeClass('has-error');
			},
			errorPlacement : function(error, element) {
				if (element.prop('type') === 'checkbox') {
					error.insertAfter(element.parent());
				} else {
					error.insertAfter(element);
				}
			}
		});
		//age calculator

		$(document).ready(
				function() {
					$("#dob").change(
							function() {
								var start_date = new Date($("#dob").val());
								var date = new Date();
								var end_date = new Date(start_date);
								end_date.setFullYear(date.getFullYear()
										- start_date.getFullYear());
								$("#age").val(end_date.getFullYear());
							});
				})

		$.validator
				.addMethod(
						'strongPassword',
						function(value, element) {
							return this.optional(element) || value.length >= 8
									&& /\d/.test(value) && /[a-z]/i.test(value);
						},
						'Your password must be at least 8 characters long and contain at least one number and one character\'.')

		$.validator.addMethod('select', function(value, element) {
			if (value === 'select') {
				return false;
			} else
				return true;
		}, 'Select an option')

		$("#appForm").validate({
			errorClass : 'errors',

			rules : {

				applicationFor : {
					select : true
				},

				applicationType : {
					select : true
				},

				state : {
					required : true,
					select : true
				},

				maritialStatus : {
					required : true,
					select : true
				},

				firstname : {
					required : true
				},

				lastname : {
					required : true
				},

				dob : {
					required : true
				},
				email : {
					required : true
				},
				mobile : {
					required : true
				},
				password : {
					required : true,
					strongPassword : true
				},
				cnf_password : {
					required : true
				},
				address : {
					required : true
				},
				address2 : {
					required : true
				},
				city : {
					required : true
				},
				zip : {
					required : true
				},
				birthTown : {
					required : true
				},
				aadhar : {
					required : true
				},

				terms : {
					required : true
				}
			},

			messages : {

				state : {
					required : 'select your state'
				},

				maritialStatus : {
					required : 'Select Maritial status'
				},

				terms : {
					required : 'check this box'

				},
				firstname : {
					required : 'Enter a first name'
				},

				lastname : {
					required : 'Enter a last name'
				},

				dob : {
					required : 'Enter your Date of birth'
				},
				email : {
					required : 'Enter your email'
				},
				mobile : {
					required : 'Enter your mobile number'
				},
				password : {
					required : 'Enter a password'
				},
				cnf_password : {
					required : 'Re-enter your password'
				},
				address : {
					required : 'Enter your address'
				},
				address2 : {
					required : 'Enter a secondary address'
				},
				city : {
					required : 'Enter your city'
				},
				zip : {
					required : 'Enter your zip/pin code'
				},
				townBirth : {
					required : 'Enter your birth toown or village'
				},
				aadhar : {
					required : 'Enter your Aadhar number'
				},

			}
		});

	});
</script>

</head>

<body>


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
							<li class="nav-item active"><a class="nav-link"
								href="/PassportWeb/p/home">Home <span class="sr-only">(current)</span></a>
							</li>
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
		<div class="myform">
			<form:form action="insert" method="post" id="appForm"
				commandName="appForm">
				<!--service required-->
				<div class=" text-center bg-dark text-light">Service Required</div>
				<br>
				<div class="container service">

					<div class="row">
						<div class="form-group col-md-6">
							<label for="applicationFor">Application For</label>
							<form:select path="applicationFor" id="applicationFor"
								name='applicationFor' class="form-control">
								<form:option value="select">select</form:option>
								<form:option value="reissue">Re-Issue of Passport</form:option>
								<form:option value="fresh">Fresh Passport</form:option>
							</form:select>
						</div>
						<div class="form-group col-md-6">
							<label for="applicationType">Application Type</label>
							<form:select path="applicationType" id="applicationType"
								name='applicationType' class="form-control">
								<form:option value="select">select</form:option>
								<form:option value="normal">Normal</form:option>
								<form:option value="Tatkal">Tatkal</form:option>
							</form:select>
						</div>
					</div>

				</div>
				<br>
				<!--Personal info-->
				<div class="text-center bg-dark text-light">Personal
					Information</div>
				<br>
				<div class="container personal">

					<div class="form-row">
						<div class="form-group col">
							<label for="firstname">First Name</label>
							<form:input type="text" class="form-control" path="firstname"
								name="firstname" id="firstname" placeholder="firstname"></form:input>
						</div>
						<div class="form-group col">
							<label for="lastname">Last Name</label>
							<form:input type="text" class="form-control" path="lastname"
								name="lastname" id="lastname" placeholder="lastname"></form:input>
						</div>
					</div>
					<div class="form-group">
						<label for="gender">Gender</label> <br>
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" path="gender"
								name="gender" id="gender" value="male"></form:radiobutton>
							<label class="form-check-label" for="male">Male</label>
						</div>
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" path="gender"
								name="gender" id="gender" value="female"></form:radiobutton>
							<label class="form-check-label" for="female">Female</label>
						</div>
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" path="gender"
								name="gender" id="gender" value="other"></form:radiobutton>
							<label class="form-check-label" for="other">Other</label>
						</div>
					</div>
					<div class="form-group">
						<label for="dob">D.O.B</label> <br>
						<form:input type="date" path="dob" name="dob" id="dob"></form:input>
					</div>
					<div class="form-group">
						<label for="age">Age</label> <br>
						<form:input type="number" path="age" name="age" id="age"
							readonly="true"></form:input>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="email">Email</label>
							<form:input type="text" class="form-control" path="email"
								name="email" id="email" placeholder="Email"></form:input>
						</div>
						<div class="form-group col-md-6">
							<label for="mobile">Mobile</label>
							<form:input type="text" class="form-control" path="mobile"
								name="mobile" id="mobile" placeholder="mobile number"></form:input>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="password">Password</label>
							<form:input type="password" class="form-control" path="password"
								name='password' id="password" placeholder="Password"></form:input>
						</div>
						<div class="form-group col-md-6">
							<label for="cnf_password">Confirm Password</label>
							<form:input type="password" class="form-control"
								path="cnf_password" name='cnf_password' id="cnf_password"
								placeholder="Confirm Password"></form:input>
						</div>
					</div>
				</div>
				<br>
				<!--Address-->
				<div class="text-center bg-dark text-light">Address Details</div>
				<br>
				<div class="container birth">
					<div class="form-group">
						<label for="address">Address</label>
						<form:input type="text" class="form-control" path="address"
							name='address' id="address" placeholder="door no/street"></form:input>
					</div>
					<div class="form-group">
						<label for="address2">Address 2</label>
						<form:input type="text" class="form-control" path="address2"
							name='address2' id="address2" placeholder="town/village"></form:input>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="city">City</label>
							<form:input type="text" class="form-control" path="address"
								name='city' id="city"></form:input>
						</div>
						<div class="form-group col-md-4">
							<label for="state">State</label>
							<form:select path="state" id="state" name="state"
								class="form-control">
								<form:option value="select">select</form:option>
								<form:option value="Andhra Pradesh">Andhra Pradesh</form:option>
								<form:option value="Andaman and Nicobar Islands">Andaman and
									Nicobar Islands</form:option>
								<form:option value="Arunachal Pradesh">Arunachal Pradesh</form:option>
								<form:option value="Assam">Assam</form:option>
								<form:option value="Bihar">Bihar</form:option>
								<form:option value="Chandigarh">Chandigarh</form:option>
								<form:option value="Chhattisgarh">Chhattisgarh</form:option>
								<form:option value="Dadar and Nagar Haveli">Dadar and Nagar
									Haveli</form:option>
								<form:option value="Daman and Diu">Daman and Diu</form:option>
								<form:option value="Delhi">Delhi</form:option>
								<form:option value="Lakshadweep">Lakshadweep</form:option>
								<form:option value="Puducherry">Puducherry</form:option>
								<form:option value="Goa">Goa</form:option>
								<form:option value="Gujarat">Gujarat</form:option>
								<form:option value="Haryana">Haryana</form:option>
								<form:option value="Himachal Pradesh">Himachal Pradesh</form:option>
								<form:option value="Jammu and Kashmir">Jammu and Kashmir</form:option>
								<form:option value="Jharkhand">Jharkhand</form:option>
								<form:option value="Karnataka">Karnataka</form:option>
								<form:option value="Kerala">Kerala</form:option>
								<form:option value="Madhya Pradesh">Madhya Pradesh</form:option>
								<form:option value="Maharashtra">Maharashtra</form:option>
								<form:option value="Manipur">Manipur</form:option>
								<form:option value="Meghalaya">Meghalaya</form:option>
								<form:option value="Mizoram">Mizoram</form:option>
								<form:option value="Nagaland">Nagaland</form:option>
								<form:option value="Odisha">Odisha</form:option>
								<form:option value="Punjab">Punjab</form:option>
								<form:option value="Rajasthan">Rajasthan</form:option>
								<form:option value="Sikkim">Sikkim</form:option>
								<form:option value="Tamil Nadu">Tamil Nadu</form:option>
								<form:option value="Telangana">Telangana</form:option>
								<form:option value="Tripura">Tripura</form:option>
								<form:option value="Uttar Pradesh">Uttar Pradesh</form:option>
								<form:option value="Uttarakhand">Uttarakhand</form:option>
								<form:option value="West Bengal">West Bengal</form:option>
							</form:select>
						</div>
						<div class="form-group col-md-2">
							<label for="zip">Zip</label>
							<form:input type="text" class="form-control" path="zip"
								name='zip' id="zip"></form:input>
						</div>
					</div>
				</div>
				<br>

				<!--Place of birth/citizenship-->

				<div class="text-center bg-dark text-light ">Place of Birth</div>
				<br>
				<div class="container birth">

					<div class="form-row">
						<div class="form-group col">
							<label>Town/village of Birth</label>
							<form:input type="text" class="form-control" path="townBirth"
								name='townBirth' id="townBirth" placeholder="Town/village"></form:input>
						</div>
						<div class="form-group col-md-4">
							<label for="maritialStatus">Maritial Status</label>
							<form:select id="maritialStatus" class="form-control"
								path="maritialStatus" name='maritialStatus'>
								<form:option value="select">select</form:option>
								<form:option value="married">Married</form:option>
								<form:option value="single">Single</form:option>
								<form:option value="widow/widower">Widow/Widower</form:option>
							</form:select>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="pan">PAN <small>(If available)</small></label>
							<form:input type="text" class="form-control" path="pan"
								name='pan' id="pan" placeholder="pan"></form:input>
						</div>
						<div class="form-group col-md-4">
							<label for="voterId">Voter ID <small>(If
									available)</small></label>
							<form:input type="text" class="form-control" path="voterId"
								name='voterId' id="voterId" placeholder="voterId"></form:input>
						</div>
						<div class="form-group col-md-4">
							<label for="aadhar">Aadhar Number </label>
							<form:input type="text" class="form-control" path="aadhar"
								name='aadhar' id="aadhar" placeholder="aadhar"></form:input>
						</div>
						<div class="form-group  col-md-4">
							<label class="required">Passport Size Photo</label>
							<form:input type="file" id="photo" path="photo" name="photo"
								value="Upload Photo"></form:input>
						</div>
					</div>
				</div>
				<br>
				<div class="container">
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="terms"
								name='terms'> <label class="form-check-label"
								for="terms"> <small>Agree to all terms and
									conditions</small>
							</label>
						</div>
					</div>
					<button type="submit" class="btn btn-danger">Submit</button>
				</div>

			</form:form>
		</div>
	</div>

	<!--footer-->
	<footer>
		<nav
			class="navbar navbar-expand-md navbar-dark bg-dark scrolling-navbar">
			<div class="container py-5 bg-dark text-light">
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
	<script src="js/jquery-2.1.3.min.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/additional-methods.min.js"></script>
	<script src="js/validation.js"></script>
	<script src="js/bootstrap-validate.js"></script>
	<script>
		bootstrapValidate('#firstname', 'alpha:Only alphabets allowed')
		bootstrapValidate('#firstname', 'min:2:Enter a valid name')

		bootstrapValidate('#lastname', 'alpha:Only alphabets allowed')
		bootstrapValidate('#lastname', 'required:Enter a last name')

		bootstrapValidate('#email', 'email:Enter a valid email')

		bootstrapValidate('#mobile', 'integer:Enter a valid mobile number')
		bootstrapValidate('#mobile', 'min:10:Enter a valid mobile number')
		bootstrapValidate('#mobile', 'max:10:Enter a valid mobile number')

		bootstrapValidate('#password', 'min:8:Enter at-least 8 characters')

		bootstrapValidate('#cnf_password',
				'matches:#password:Passwords does not match')

		bootstrapValidate('#address', 'min:7:Enter a valid Address')

		bootstrapValidate('#address2', 'min:7:Enter a valid second Address')

		bootstrapValidate('#city', 'alpha:Enter a valid city name')

		bootstrapValidate('#zip', 'numeric:Enter a valid Zip code')

		bootstrapValidate('#townBirth', 'alpha:Enter a valid Town/village')

		bootstrapValidate('#pan', 'min:10:')
		bootstrapValidate('#pan', 'max:10:Enter a valid PAN number')
		bootstrapValidate('#pan', 'alphanum:No special characters allowed')

		bootstrapValidate('#voterId', 'min:10:')
		bootstrapValidate('#voterId', 'max:10:Enter a valid voter ID')
		bootstrapValidate('#voterId', 'alphanum:No special characters allowed')

		bootstrapValidate('#aadhar', 'min:12:Enter a valid Aadhar ID')
		bootstrapValidate('#aadhar', 'numeric:NO letters allowed in Aadhar ID')
		bootstrapValidate('#aadhar', 'max:12:Enter a valid Aadhar ID')
	</script>
</body>

</html>