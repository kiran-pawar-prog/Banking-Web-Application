function clearErrors() {
    errors = document.getElementsByClassName("errors");
    for (let items of errors) {
        items.innerHTML = "";
    }
}

function validateForm() {
    clearErrors();
    var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,10}$/;
    var fName = document.getElementById("fName").value;
    var mName = document.getElementById("mName").value;
    var lName = document.getElementById("lName").value;
    var contact = document.getElementById("contact").value;
    var email = document.getElementById("email").value;
    var address = document.getElementById("address").value;
    var city = document.getElementById("city").value;
    var zip = document.getElementById("zip").value;
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    var ans = document.getElementById("ans").value;

    if (fName.trim() == "") 
    {
        document.getElementById("fNameError").innerHTML = "First Name should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the First Name.",
            icon: "warning",
          });
        return false
    } 
    else if ((fName.length < 3) || (fName.length > 20)) 
    {
        document.getElementById("fNameError").innerHTML = "First Name should be within 3 to 20 letters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the First Name.",
            icon: "warning",
          });
        return false
    } 
    else if (mName.trim() == "") 
    {
        document.getElementById("mNameError").innerHTML = "Middle Name should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the Middle Name.",
            icon: "warning",
          });
        return false
    } 
    else if ((mName.length < 3) || (mName.length > 20)) 
    {
        document.getElementById("mNameError").innerHTML = "Middle Name should be within 3 to 20 letters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the Middle Name.",
            icon: "warning",
          });
        return false
    }
    else if (lName.trim() == "") 
    {
        document.getElementById("lNameError").innerHTML = "Last Name should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the Last Name.",
            icon: "warning",
          });
        return false
    } 
    else if ((lName.length < 3) || (lName.length > 20)) 
    {
        document.getElementById("lNameError").innerHTML = "Last Name should be within 3 to 20 letters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the Last Name.",
            icon: "warning",
          });
        return false
    }
    else if (contact.trim() == "") 
    {
        document.getElementById("contactError").innerHTML = "Contact Number should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the Contact Number.",
            icon: "warning",
          });
        return false
    }
    else if (isNaN(contact)) 
    {
        document.getElementById("contactError").innerHTML = "Invalid Contact Number, it should be of numbers only.";
        swal({
            title: "Numbers only!!",
            text: "Please check the Contact Number.",
            icon: "warning",
          });
        return false
    }
    else if (contact.length != 10) 
    {
        document.getElementById("contactError").innerHTML = "Contact Number must have 10 numbers.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the Contact Number.",
            icon: "warning",
          });
        return false
    }
    else if (email.length > 40) 
    {
        document.getElementById("emailError").innerHTML = "Email should be of less than 40 letters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the Email.",
            icon: "warning",
          });
        return false
    }
    else if (address.trim() == "") 
    {
        document.getElementById("addressError").innerHTML = "Address should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the Address.",
            icon: "warning",
          });
        return false
    }
    else if (address.length > 255) 
    {
        document.getElementById("addressError").innerHTML = "Address should be of less than 255 letters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the Address.",
            icon: "warning",
          });
        return false
    }
    else if (city.trim() == "") 
    {
        document.getElementById("cityError").innerHTML = "City Name should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the City.",
            icon: "warning",
          });
        return false
    }
    else if (city.length > 15) 
    {
        document.getElementById("cityError").innerHTML = "City Name should be of less than 15 letters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the City.",
            icon: "warning",
          });
        return false
    }
    else if (zip.trim() == "") 
    {
        document.getElementById("zipError").innerHTML = "Zip Code should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the Zip Code.",
            icon: "warning",
          });
        return false
    }
    else if (zip.length > 10) 
    {
        document.getElementById("zipError").innerHTML = "Zip Code should be of less than 10 letters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the Zip Code.",
            icon: "warning",
          });
        return false
    }
    else if (isNaN(zip)) 
    {
        document.getElementById("zipError").innerHTML = "Invalid Zip Code, it should be of numbers only.";
        swal({
            title: "Numbers only!!",
            text: "Please check the Zip Code.",
            icon: "warning",
          });
        return false
    }

    else if (password.trim() == "") 
    {
        document.getElementById("passwordError").innerHTML = "Password should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the Password.",
            icon: "warning",
          });
        return false
    }
    else if (!(password.match(passw))) 
    {
        document.getElementById("passwordError").innerHTML = "Password must contain atleast 1 capital letter, 1 small letter & 1 number & it should be of 8 to 10 characters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the Password.",
            icon: "warning",
          });
        return false
    }
    else if (confirmPassword.trim() == "") 
    {
        document.getElementById("confirmPassError").innerHTML = "Confirm Password field should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the Confirm Password field.",
            icon: "warning",
          });
        return false
    }
    else if (confirmPassword != password) 
    {
        document.getElementById("confirmPassError").innerHTML = "Please provide the same password that you have entered before.";
        swal({
            title: "Invalid Password!!",
            text: "Please check the Confirm Password field.",
            icon: "warning",
          });
        return false
    }
    else if (ans.trim() == "") 
    {
        document.getElementById("answerError").innerHTML = "Answer should not be empty.";
        swal({
            title: "Empty Feild!",
            text: "Please check the Password Recovery Question's Answer.",
            icon: "warning",
          });
        return false
    }
    else if (ans.length > 50) 
    {
        document.getElementById("answerError").innerHTML = "Answer should be of less than 50 letters.";
        swal({
            title: "Something went wrong!!",
            text: "Please check the Password Recovery Question's Answer.",
            icon: "warning",
          });
        return false
    }
    else 
    {
        return true
    }

}
