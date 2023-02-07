<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign In</title>

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

	<section class="wrapper">

		<div class="container text-center h-100">
			<div class="row h-100 align-items-center">
				<div
					class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
					<form action="validate" class="rounded bg-white shadow p-5"
						method="post">
						<c:if test="${status!=null }">
							<div class="alert alert-danger alert-dismissible fade show"
								role="alert">
								<strong style="font-size: 16px"><i class="bi bi-exclamation-triangle-fill"></i>  ${status }</strong>
								<button type="button" class="btn-close" data-bs-dismiss="alert"
									aria-label="Close"></button>
							</div>
						</c:if>
						<c:if test="${success!=null }">
							<div class="alert alert-success alert-dismissible fade show"
								role="alert">
								<strong style="font-size: 16px"><i class="bi bi-check-circle-fill" style="font-size: 20px"></i><br>${success }</strong>
								<button type="button" class="btn-close" data-bs-dismiss="alert"
									aria-label="Close"></button>
							</div>
						</c:if>
						<h1>
							<i class="bi bi-person-circle text-secondary"></i>
						</h1>
						<h3 class="text-dark fw-bolder fs-4 mb-2">Sign In</h3>

						<div class="fw-normal text-muted mb-4">
							New User? <a href="register"
								class="text-primary fw-bold text-decoration-none">Create an
								Account</a>
						</div>

						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="accNo"
								placeholder="Account Number" required name="accNo" autocomplete="off"> <label
								for="accNo">Account Number</label>
						</div>

						<div class="form-floating">
							<input type="password" class="form-control" id="password"
								placeholder="Password" required name="password"> <label
								for="password">Password</label>
						</div>

						<div class="mt-2 text-end">
							<a href="forget-password"
								class="text-primary fw-bold text-decoration-none">Forget
								Password?</a>
						</div>

						<button type="submit"
							class="btn btn-primary mt-3 py-2 px-4 sub_or_cancel">Continue</button>
						<a href="${pageContext.request.contextPath }"
							class="btn btn-secondary mt-3 py-2 px-4 ms-3 sub_or_cancel">Cancel</a>
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
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>
</html>