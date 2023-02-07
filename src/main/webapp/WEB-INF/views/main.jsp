<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<c:if test="${valid!=null }">
		<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		response.setDateHeader("Expires", -1);
		%>
	</c:if>

	<!-- coding area -->

	<!-- start of header -->

	<section class="wrapperMain">

		<form action="logout" method="post">
			<input type="submit" class="btn btn-secondary sub_or_cancel"
				style="position: fixed; top: 20px; right: 20px;" value="Log Out" />
		</form>

		<div class="container text-center h-100">
			<div class="row h-100 align-items-center justify-content-evenly">
				<div class="col-sm-8 offset-sm-1 ">
					<form action="#" class="rounded bg-white shadow p-5 mt-5"
						method="post">
						<c:if test="${success!=null }">
							<div class="alert alert-success alert-dismissible fade show"
								role="alert">
								<strong style="font-size: 16px"><i
									class="bi bi-check-circle-fill" style="font-size: 20px"></i><br>${success }</strong>
								<button type="button" class="btn-close" data-bs-dismiss="alert"
									aria-label="Close"></button>
							</div>
						</c:if>
						<c:if test="${failed!=null }">
							<div class="alert alert-danger alert-dismissible fade show"
								role="alert">
								<i class="bi bi-exclamation-triangle-fill"
									style="font-size: 20px"></i><br>${failed }</strong>
								<button type="button" class="btn-close" data-bs-dismiss="alert"
									aria-label="Close"></button>
							</div>
						</c:if>
						<img
							src="http://localhost:8080/BankingWebApp/assets/images/banklogo-image.jpg"
							style="width: 150px;">
						<h2 class="text-dark fw-bolder fs-14 mt-2 mb-3">Welcome
							${user.fName } ${user.lName }.</h2>

						<a href="add-money" class="btn btn-primary submit_btn w-50 my-3">Add
							Money</a> <a href="withdraw-money"
							class="btn btn-primary submit_btn w-50  my-3">Withdraw Money</a>
						<a href="info" class="btn btn-primary submit_btn w-50  my-3">View
							Profile</a> <a href="update-info"
							class="btn btn-primary submit_btn w-50  my-3">Update Profile</a>
						<a href="update-password"
							class="btn btn-primary submit_btn w-50 my-3">Update Password</a>
						<a href="deactivate" class="btn btn-primary submit_btn w-50 my-3">Deactivate
							Account</a>
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">
		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>

</body>
</html>