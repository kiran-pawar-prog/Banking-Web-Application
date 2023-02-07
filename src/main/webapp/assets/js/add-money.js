function validateForm() {
    var amount = document.getElementById("amount").value;

    if (amount > 50000) 
    {    
        swal({
            title: "Sorry!!",
            text: "You can not add more than Rs.50000 at once.",
            icon: "warning",
          });
        return false
    } 
    else if (amount < 0) 
    {    
        swal({
            title: "Invalid!!",
            text: "",
            icon: "warning",
          });
        return false
    }
    else if (isNaN(amount)) 
    {
        swal({
            title: "Invalid",
            text: "Dont use alphabets.",
            icon: "warning",
          });
        return false
    }
    else 
    {
        return true
    }

}
