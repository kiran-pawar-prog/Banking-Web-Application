function clearErrors() {
	errors = document.getElementsByClassName("errors");
	for (let items of errors) {
		items.innerHTML = "";
	}
}

function validateForm() {
	clearErrors();
	var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,10}$/;
	var password = document.getElementById("password").value;
	var confirmPassword = document.getElementById("confirmPassword").value;
	var currentPass = document.getElementById("currentPass").value;


	if (currentPass.match(password)) {
		document.getElementById("passwordError").innerHTML = "New Password must be different from Current Password !!";
		swal({
			title: "Invalid Password!!",
			text: "Please check the Password.",
			icon: "warning",
		});
		return false
	}
	else if (!(password.match(passw))) {
		document.getElementById("passwordError").innerHTML = "Password must contain atleast 1 capital letter, 1 small letter & 1 number & it should be of 8 to 10 characters.";
		swal({
			title: "Something went wrong!!",
			text: "Please check the Password.",
			icon: "warning",
		});
		return false
	}
	else if (confirmPassword != password) {
		document.getElementById("confirmPassError").innerHTML = "Please provide the same password that you have entered before.";
		swal({
			title: "Invalid Password!!",
			text: "Please check the Confirm Password field.",
			icon: "warning",
		});
		return false
	}
	else {
		return true
	}

}
