function CreateVal() {
    var reguname = document.forms["reg"]["reguname"].value;
    if (reguname == null || reguname == "") {
        alert("User Name is required");
        return false;
    }
    var regemail = document.forms["reg"]["regemail"].value;
    if (regemail == null || regemail == "") {
        alert("Email Address is required");
        return false;
    }
    var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	if (!filter.test(regemail)) {
    	alert("Please input a valid email address!")
        return false;
	}
	var regnum = document.forms["reg"]["regnum"].value;
    if (regnum == null || regnum == "") {
        alert("Phone Number is required");
        return false;
    }
	var pre=regnum.substring(0, 2);
    if (isNaN(regnum) || regnum.length!=7 && (regnum.length!=11 || pre!="09")) {
    	alert("Not a Valid Phone Number");
        return false;
    }
	var regpass = document.forms["reg"]["regpass"].value;
    if (regpass == null || regpass == "") {
        alert("Password is required");
        return false;
    }
    var conpass = document.forms["reg"]["conpass"].value;
    if (conpass == null || conpass == "" || conpass!=regpass) {
        alert("Passwords should be the same");
        return false;
    }
    var re = /^[A-Za-z]+$/;
    var regfname = document.forms["reg"]["regfname"].value;
    if (regfname == null || regfname == "") {
        alert("First Name is required");
        return false;
    }
	if (!re.test(regfname)) {
		alert("First Name is invalid");
        return false;
	}
    var reglname = document.forms["reg"]["reglname"].value;
    if (reglname == null || reglname == "") {
        alert("Last Name is required");
        return false;
    }
	if (!re.test(reglname)) {
		alert("Last Name is invalid");
        return false;
	}
}