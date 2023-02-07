function validateForm() {
    var amount = document.getElementById("amount").value;

    if (amount > 30000) 
    {    
        swal({
            title: "Sorry!!",
            text: "You can not withdraw more than Rs.30000 at once.",
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