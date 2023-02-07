<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bank of Nashik</title>

<!-- Bootstap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- CSS Path -->
<link rel="stylesheet"
	href="http://localhost:8080/BankingWebApp/assets/css/style.css">

<!-- Bootstrap icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">


<!-- Font Awesome Path -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap"
	rel="stylesheet">

</head>

<body>

	<!-- coding area -->

	<section id="home"></section>

	<!-- start of navbar -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand" href="#"><img
				src="http://localhost:8080/BankingWebApp/assets/images/logo.png"
				class="logo"><span class="p-2" style="font-weight: 700;">BANK
					OF NASHIK</span><span style="font-size: x-small;">A partner for
					life.</span></a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link active" href="#home">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="#services">Services</a></li>
					<li class="nav-item"><a class="nav-link active" href="#about">About
							Us</a></li>
					<li class="nav-item"><a class="nav-link active" href="#faq">FAQs</a>
					</li>
				</ul>
			</div>
		</div>
		<form class="form-inline my-2 my-lg-0 pe-3" action="login">
			<button class="btn btn-primary my-2 my-sm-0"
				style="background-color: rgb(59, 13, 244);" type="submit">Login</button>
		</form>
	</nav>

	<!-- end of navbar -->

	<!-- start of header -->

	<header class="header">

		<div class="container text-center h-100">
			<div class="row h-100 align-items-center">
				<div class="col-md-12">

					<h1>WELCOME TO BANK OF NASHIK</h1>
					<h4>A PARTNER FOR LIFE.</h4>

				</div>
			</div>
		</div>

	</header>

	<!-- end of header -->

	<!-- start of services -->

	<section id="services">
		<div class="container-fluid">

			<div class="row">
				<div class="col-12 text-center mt-5 mb-2">
					<h3 class="ff">Services</h3>
				</div>
			</div>
			<hr width="90%"
				style="margin-left: 5% !important; margin-right: 5% !important;">

			<div class="row justify-content-evenly pt-3 pb-3">
				<div class="col-md-3 text-center mt-3">
					<h1>
						<i class="bi bi-cash-coin text-warning"></i>
					</h1>
					<h5 class="ff">Withdraw Money</h5>
					<p>You can withdraw amount by providing proper credentials by
						using this app.</p>
				</div>
				<div class="col-md-3 text-center mt-3">
					<h1>
						<i class="fa-sharp fa-solid fa-piggy-bank text-danger"></i>
					</h1>
					<h5 class="ff">Add Money</h5>
					<p>You can Add amount by providing proper credentials by using
						this app.</p>
				</div>
				<div class="col-md-3 text-center mt-3">
					<h1>
						<i class="bi bi-info-circle-fill text-primary"></i>
					</h1>
					<h5 class="ff">Check Profile</h5>
					<p>You can check or update your information by using this app.
					</p>
				</div>
			</div>


		</div>
	</section>

	<!-- end of services -->

	<!-- start of about us -->

	<section id="about">

		<div class="row">
			<div class="col-12 text-center mt-5 mb-2">
				<h3 class="ff">About Us</h3>
			</div>
		</div>
		<hr width="90%"
			style="margin-left: 5% !important; margin-right: 5% !important;">

		<div class="row justify-content-evenly pt-3 pb-3">
			<div class="col-md-3 text-center">
				<h3 class="ff">Who We Are</h3>
				<p>Bank of Nashik is one of India’s newly started leading
					private banks and was among the first to receive approval from the
					Reserve Bank of India (RBI) to set up a private sector bank in
					2021.</p>
			</div>
			<div class="col-md-7 text-center">
				<h3 class="ff">Our Core Values</h3>
				<div class="row justify-content-evenly mt-3">
					<div class="col-4">
						<h1>
							<i class="fa-solid fa-award text-warning"></i>
						</h1>
						<p class="ff">Excellence</p>
					</div>
					<div class="col-4">
						<h1>
							<i class="bi bi-people-fill text-secondary"></i>
						</h1>
						<p class="ff">Customer Focus</p>
					</div>
					<div class="col-4">
						<h1>
							<i class="fa-sharp fa-solid fa-recycle text-primary"></i>
						</h1>
						<p class="ff">Sustainability</p>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- end of about us -->

	<!-- start of FAQ -->

	<section id="faq">

		<div class="row pt-5 pb-5 justify-content-evenly">
			<div class="col-md-10">
				<div>
					<h3 class="text-center pb-5 ff">Most Common Questions</h3>
				</div>

				<div class="accordion accordion-flush border"
					id="accordionFlushExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingOne">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
								aria-expanded="false" aria-controls="flush-collapseOne">
								How to update password?</button>
						</h2>
						<div id="flush-collapseOne" class="accordion-collapse collapse"
							aria-labelledby="flush-headingOne"
							data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								If you forgot your password then you can reset your password by
								clicking on forget password and by providing password recovery
								information properly.<br>If you want to update password
								then first you have to login to your account and then you can
								update your password by clicking on update password and
								providing required information properly.
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
								aria-expanded="false" aria-controls="flush-collapseTwo">
								Can I update my personal information?</button>
						</h2>
						<div id="flush-collapseTwo" class="accordion-collapse collapse"
							aria-labelledby="flush-headingTwo"
							data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">Yes you can. If you want to
								update your profile then you need to login to your account first
								and then you can update your profile by clicking o update
								profile.</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingThree">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
								aria-expanded="false" aria-controls="flush-collapseThree">
								What is the transaction limit?</button>
						</h2>
						<div id="flush-collapseThree" class="accordion-collapse collapse"
							aria-labelledby="flush-headingThree"
							data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">
								You can add Rs.50000 at once.<br>You can withdraw Rs.30000
								at once.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!-- end of FAQ -->

	<!-- start of footer -->

	<div class="row justify-content-evenly bg-dark text-white pt-2 pb-5">
		<div class="col-md-3 pt-4">
			<h5 class="pb-2">Bank of Nashik</h5>
			<p>Bank of Nashik is one of India’s newly started leading private
				banks and was among the first to receive approval from the Reserve
				Bank of India (RBI) to set up a private sector bank in 2021.</p>
		</div>
		<div class="col-md-3 pt-4">
			<h5 class="pb-2">Important Links</h5>
			<p>
				<a href="#home" class="text-light text-decoration-none">Home</a><br>
				<a href="#services" class="text-light text-decoration-none">Services</a><br>
				<a href="#about" class="text-light text-decoration-none">About
					Us</a><br>
			</p>
		</div>
		<div class="col-md-3 pt-4">
			<h5 class="pb-2">Contact Us</h5>
			<p>
				1180 Laxmi Complex, <br> Trimurti Chowk, <br> Nashik,
				422008. <br> <i class="bi bi-telephone"></i> : 2372515823.
			</p>
		</div>
	</div>

	<!-- end of footer -->

	<!-- copyright -->
	<div class="row">
		<div class="col-12 bg-dark text-center text-light p-3">
			<small><i class="bi bi-c-circle"></i> Copyright Bank of
				Nashik. All Rights Reserved.</small>
		</div>
	</div>

	<!-- end of coding area -->


	<!-- JS Path -->


	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>

</html>