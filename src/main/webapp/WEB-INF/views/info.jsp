<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile</title>

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

	<!-- start of header -->

	<section class="wrapperInfo">

		<div class="container text-center h-100">
			<div class="row h-100 align-items-center justify-content-evenly">
				<div class="col-sm-8 offset-sm-1">
					<form action="#" class="rounded bg-white shadow p-5 mt-5 row g-3">
						<h1>
							<i class="bi bi-person-circle text-secondary"></i>
						</h1>
						<h3 class="text-dark fw-bolder fs-4 mb-3">Your Profile</h3>

						<div class="form-floating mb-3 col-md-6">
							<input type="text" class="form-control" id="accNo" name="accNo"
								value="${user.accountNo }" readonly> <label for="accNo">Account
								Number</label>
						</div>

						<div class="form-floating mb-3 col-md-6">
							<input type="text" class="form-control" id="accBal" name="accBal"
								value="Rs. ${user.accountBal }" readonly> <label
								for="accBal">Available Balance</label>
						</div>

						<div class="form-floating mb-3">
							<input type="text" class="form-control " id="name" name="name"
								value="${user.fName } ${user.mName } ${user.lName }" readonly>
							<label for="name">Account Holder Name</label>
						</div>

						<div class="form-floating mb-3 col-md-5">
							<input type="text" class="form-control" id="contact"
								name="contact" value="${user.contact }" readonly> <label
								for="contact">Contact Number</label>
						</div>
		
		
						<div class="form-floating mb-3 col-md-7">
							<input type="text" class="form-control col-md-7" id="email"
								name="email" value="${user.email }" readonly> <label
								for="email">Email Address</label>
						</div>


						<div class="form-floating mb-3 col-md-6">
							<input type="text" class="form-control" id="dob" name="dob"
								value="${user.dob }" readonly> <label for="dob">Date
								of Birth</label>
						</div>

						<div class="form-floating mb-3 col-md-6">
							<input type="text" class="form-control" id="gender" name="gender"
								value="${user.gender }" readonly> <label for="gender">Gender</label>
						</div>

						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="address"
								name="address" value="${user.address }" readonly> <label
								for="address">Address</label>
						</div>

						<div class="form-floating mb-3 col-md-5">
							<input type="text" class="form-control" id="city" name="city"
								value="${user.city }" readonly> <label for="city">City</label>
						</div>

						<div class="form-floating mb-3 col-md-4">
							<input type="text" class="form-control" id="state"
								value="${user.state }" name="state" readonly> <label
								for="state">State</label>
						</div>

						<div class="form-floating mb-3 col-md-3">
							<input type="text" class="form-control" id="zip" name="zip"
								value="${user.zip }" readonly> <label for="zip">Zip</label>
						</div>

						<div class="form-floating col-md-6">
							<input type="text" class="form-control" id="branch"
								value="${user.branch }" name="branch" readonly> <label
								for="branch">Branch</label>
						</div>

						<div class="form-floating col-md-6">
							<input type="text" class="form-control" id="branchCode"
								value="${user.branchCode }" name="branchCode" readonly>
							<label for="branchCode">Branch Code</label>
						</div>

						<div class="text-center">
							<a href="update-info"
								class="btn btn-primary mt-3 py-2 px-4 sub_or_cancel">Update
								Profile</a> <a href="main-page"
								class="btn btn-secondary mt-3 py-2 px-4 ms-3 sub_or_cancel">Back</a>
						</div>
					</form>
				</div>
			</div>
		</div>

	</section>

	<!-- end of header -->

	<!-- end of coding area -->



	<!-- JS Path -->


	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous">
		
	</script>

</body>
</html>