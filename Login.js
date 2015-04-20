function LoginCheck() {
    var x = document.forms["login"]["logemail"].value;
    var y = document.forms["login"]["logpass"].value;
    if (x == null || x == "") {
        alert("Enter Email Address");
        return false;
    }
	var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
    if (!filter.test(x)) {
    alert("Please input a valid email address!")
    	return false;
    }
	if (y == null || y == "") {
        alert("Enter Password");
        return false;
    }
}