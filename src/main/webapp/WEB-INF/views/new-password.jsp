<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reset Password</title>

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

<style>
.errors {
	color: red;
	text-align: left;
	margin: 0;
	font-size: 12px;
}
</style>

<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>

</head>
<body>

	<!-- coding area -->

	<!-- start of header -->

	<section class="wrapperReset">

		<div class="container text-center h-100">
			<div class="row h-100 align-items-center">
				<div
					class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
					<form action="validate-new-password"
						class="rounded bg-white shadow p-5"
						onsubmit="return validateForm()" method="post">
						<c:if test="${already!=null }">
							<div class="alert alert-danger alert-dismissible fade show"
								role="alert">
								<strong style="font-size: 16px"><i
									class="bi bi-exclamation-triangle-fill" style="font-size: 20px"></i><br>${already }</strong>
								<button type="button" class="btn-close" data-bs-dismiss="alert"
									aria-label="Close"></button>
							</div>
						</c:if>
						<h3 class="text-dark fw-bolder fs-4 mb-3">Reset Your Password</h3>

						<div class="fw-normal text-muted mb-4">
							Already have reset your password? <a href="login"
								class="text-primary fw-bold text-decoration-none">Sign in</a>
						</div>

						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="password"
								placeholder="Password" aria-describedby="passHelp" required
								name="password"> <label for="password">Password</label>
							<div id="passHelp" class="form-text text-start">Use 8-10
								characters with mix of letters, numbers.</div>
							<p id="passwordError" class="errors"></p>
						</div>

						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="confirmPassword"
								placeholder="Confirm Password" required name="confirmPassword">
							<label for="confirmPassword">Confirm Password</label>
							<p id="confirmPassError" class="errors"></p>
						</div>

						<button type="submit"
							class="btn btn-primary submit_btn w-100 my-2">Setup</button>
					</form>
				</div>
			</div>
		</div>

	</section>

	<!-- end of header -->

	<!-- end of coding area -->



	<!-- JS Path -->
	<script
		src="http://localhost:8080/BankingWebApp/assets/js/new-password.js"></script>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>