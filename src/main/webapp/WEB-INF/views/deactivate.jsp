<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Deactivate Account</title>

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

	<section class="wrapperDeactive">

		<div class="container text-center h-100">
			<div class="row h-100 align-items-center">
				<div
					class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
					<form action="deactivate-validate"
						class="rounded bg-white shadow p-5" method="post">
						<h3 class="text-dark fw-bolder fs-4 mb-4">Deactivate Account</h3>

						<div class="form-check d-flex align-items-center p-3">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault" required> <label
								class="form-check-label ms-2" for="flexCheckDefault">Are
								You Sure? </label>
						</div>

						<button type="submit"
							class="btn btn-primary mt-3 py-2 px-4 sub_or_cancel">Submit</button>
						<a href="main-page"
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