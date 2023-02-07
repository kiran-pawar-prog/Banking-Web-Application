<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forgot Password?</title>

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

	<section class="wrapperForget">

		<div class="container text-center h-100">
			<div class="row h-100 align-items-center">
				<div
					class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
					<form action="validate-forget" class="rounded bg-white shadow p-5"
						method="post">
						<c:if test="${status!=null }">
							<div class="alert alert-danger alert-dismissible fade show"
								role="alert">
								<strong style="font-size: 16px"><i
									class="bi bi-exclamation-triangle-fill"></i> ${status }</strong>
								<button type="button" class="btn-close" data-bs-dismiss="alert"
									aria-label="Close"></button>
							</div>
						</c:if>
						<h3 class="text-dark fw-bolder fs-4 mb-2">Forgot Password ?</h3>

						<div class="fw-normal text-muted mb-4" style="font-size: 12px;">
							Enter Your Account Number & Answer of Password Recovery Question
							to Reset Your Password.</div>

						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="accNo"
								placeholder="Account Number" required name="accNo" autocomplete="off"> <label
								for="accNo">Account Number</label>
						</div>

						<div class="mb-3">
							<select class="form-select form-select-md" required
								name="passRecQue">
								<option selected>Password Recovery Question</option>
								<option value="What is your favorite color?">What is
									your favorite color?</option>
								<option
									value="Where did you go on your favorite vacation as a child?">Where
									did you go on your favorite vacation as a child?</option>
								<option
									value="What is the name of the town where you were born?">What
									is the name of the town where you were born?</option>
							</select>
						</div>

						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="ans"
								placeholder="Your Answer" required name="ans" autocomplete="off"> <label
								for="ans">Your Answer</label>
						</div>

						<button type="submit"
							class="btn btn-primary mt-3 py-2 px-4 sub_or_cancel">Submit</button>
						<a href="login"
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
		crossorigin="anonymous">
		
	</script>

</body>
</html>