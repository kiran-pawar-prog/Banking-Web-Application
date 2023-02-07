<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Profile</title>

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

</head>
<body>

	<!-- coding area -->

    <!-- start of header -->

    <section class="wrapperUpdate">

        <div class="container text-center h-100">
            <div class="row h-100 align-items-center justify-content-evenly">
                <div class="col-sm-8 offset-sm-1">
                    <form action="update-info-validate" class="rounded bg-white shadow p-5 mt-5 row g-3"
                        onsubmit="return validateForm()" method="post">
                        <h1><i class="bi bi-person-circle text-secondary"></i></h1>
                        <h3 class="text-dark fw-bolder fs-4 mb-3">Update Profile</h3>

                        <div class="form-floating mb-3 col-md-4">
                            <input type="text" class="form-control" id="fName" placeholder="First Name"
                                autocomplete="off" name="fName" value="${user.fName }">
                            <label for="fName">First Name</label>
                            <p id="fNameError" class="errors"></p>
                        </div>

                        <div class="form-floating mb-3 col-md-4">
                            <input type="text" class="form-control " id="mName" placeholder="Middle Name"
                                autocomplete="off" name="mName" value="${user.mName }">
                            <label for="mName">Middle Name</label>
                            <p id="mNameError" class="errors"></p>
                        </div>

                        <div class="form-floating mb-3 col-md-4">
                            <input type="text" class="form-control" id="lName" placeholder="Last Name"
                                autocomplete="off" name="lName" value="${user.lName }">
                            <label for="lName">Last Name</label>
                            <p id="lNameError" class="errors"></p>
                        </div>

                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="contact" placeholder="Contact Number"
                                autocomplete="off" name="contact" value="${user.contact }">
                            <label for="contact">Contact Number</label>
                            <p id="contactError" class="errors"></p>
                        </div>

                        <div class="form-floating mb-3 col-md-6">
                            <input type="date" class="form-control" id="dob" placeholder="Date of Birth"
                                name="dob" value="${user.dob }">
                            <label for="dob">Date of Birth</label>
                        </div>

						
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control col-md-6" id="email" placeholder="Email Address"
                                    autocomplete="off" name="email" value="${user.email }">
                                <label for="email">Email Address</label>
                                <p id="emailError" class="errors"></p>
                            </div>
                        </div>

                        <div class="form-floating mb-3 col-md-6">
							<input type="text" class="form-control" id="gender" name="gender"
								value="${user.gender }"> <label for="gender">Gender</label>
						</div>

                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="address" placeholder="Address" name="address" value="${user.address }">
                            <label for="address">Address</label>
                            <p id="addressError" class="errors"></p>
                        </div>

                        <div class="form-floating mb-3 col-md-5">
                            <input type="text" class="form-control" id="city" placeholder="City" name="city" value="${user.city }">
                            <label for="city">City</label>
                            <p id="cityError" class="errors"></p>
                        </div>

                        <div class="form-floating mb-3 col-md-4">
                            <input type="text" class="form-control" id="state" placeholder="State" value="${user.state }"
                                readonly name="state">
                            <label for="state">State</label>
                        </div>

                        <div class="form-floating mb-3 col-md-3">
                            <input type="text" class="form-control" id="zip" placeholder="Zip" name="zip" value="${user.zip }">
                            <label for="zip">Zip</label>
                            <p id="zipError" class="errors"></p>
                        </div>

                        <div class="mt-4 mb-2 col-md-7">
                            <select class="form-select form-select-md" name="passRecoverQue">
                                <option selected>${user.passRecoverQue }</option>
                                <option value="What is your favorite color?">What is your favorite color?</option>
                                <option value="Where did you go on your favorite vacation as a child?">Where did you go
                                    on your favorite vacation as a child?</option>
                                <option value="What is the name of the town where you were born?">What is the name of
                                    the town where you were born?</option>
                            </select>
                        </div>

                        <div class="form-floating mb-3 col-md-5">
                            <input type="text" class="form-control" id="ans" placeholder="Your Answer"
                                autocomplete="off" name="ans" value="${user.ans }">
                            <label for="ans">Your Answer</label>
                            <p id="answerError" class="errors"></p>
                        </div>

                        <div class="form-floating col-md-6">
                            <input type="text" class="form-control" id="branch" value="${user.branch }"
                                readonly hidden name="branch">
                            <label for="branch"></label>
                        </div>

                        <div class="form-floating col-md-6">
                            <input type="text" class="form-control" id="branchCode" value="${user.branchCode }" readonly hidden
                                name="branchCode">
                            <label for="branchCode"></label>
                        </div>
                        
                        <div class="form-floating col-md-6">
                            <input type="text" class="form-control" id="accountNo" value="${user.accountNo }" readonly hidden
                                name="accountNo">
                            <label for="accountNo"></label>
                        </div>
                        
                        <div class="form-floating col-md-6">
                            <input type="text" class="form-control" id="accountBal" value="${user.accountBal }" readonly hidden
                                name="accountBal">
                            <label for="accountBal"></label>
                        </div>
                        
                        <div class="form-floating col-md-6">
                            <input type="text" class="form-control" id="password" value="${user.password }" readonly hidden
                                name="password">
                            <label for="password"></label>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary mt-3 py-2 px-4 sub_or_cancel">Save</button>
                            <a href="main-page" class="btn btn-secondary mt-3 py-2 px-4 ms-3 sub_or_cancel">Back</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </section>

    <!-- end of header -->

    <!-- end of coding area -->

	<!-- JS Path -->
	<script src="http://localhost:8080/BankingWebApp/assets/js/update-info.js"></script>
	
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous">
		
	</script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>
</html>