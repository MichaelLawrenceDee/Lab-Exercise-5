function Send() {
    var email = document.forms["contact"]["field2"].value;
    if (email == null || email == "") {
        alert("Email Address is required");
        return false;
    }
    var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	if (!filter.test(email)) {
    	alert("Please input a valid email address!")
        return false;
	}
	var message = document.forms["contact"]["field3"].value;
    if (message == null || message == "") {
		var ans=confirm("Do you want to leave your message blank?");
		if (ans==false) {
			return false;
		}
	}
}