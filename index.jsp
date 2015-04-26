<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
window.onload = function(){ 
	//Get submit button
	var submitbutton = document.getElementById("tfq");
	//Add listener to submit button
	if(submitbutton.addEventListener){
		submitbutton.addEventListener("click", function() {
			if (submitbutton.value == 'Search our website'){//Customize this text string to whatever you want
				submitbutton.value = '';
			}
		});
	}
}
</script>
<script src="Login.js" type="text/javascript"></script>
<style type="text/css">
	#tfheader{
		background-color:#ffffff;
		float:right;
		
	}
	#tfnewsearch{
		float:right;
		padding:0px;
	}
	.tftextinput2{
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		color:#666;
		border:1px solid #0076a3; border-right:0px;
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
	.tfbutton2 {
		margin: 0;
		padding: 5px 7px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		font-weight:bold;
		outline: none;
		cursor: pointer;
		text-align: center;
		text-decoration: none;
		color: #ffffff;
		border: solid 1px #0076a3; border-right:0px;
		background: #0095cd;
		background: -webkit-gradient(linear, left top, left bottom, from(#00adee), to(#0078a5));
		background: -moz-linear-gradient(top,  #00adee,  #0078a5);
		border-top-right-radius: 5px 5px;
		border-bottom-right-radius: 5px 5px;
	}
	.tfbutton2:hover {
		text-decoration: none;
		background: #007ead;
		background: -webkit-gradient(linear, left top, left bottom, from(#0095cc), to(#00678e));
		background: -moz-linear-gradient(top,  #0095cc,  #00678e);
	}
	/* Fixes submit button height problem in Firefox */
	.tfbutton2::-moz-focus-inner {
	  border: 0;
	}
	.tfclear{
		clear:both;
	}
	table{
		padding-right: 10px;
		margin: Opx;
		border-spacing:10px;
		margin-left:auto;
		margin-right:auto;
	
	}
	#tfq{
		float:right;
		margin-right:30px

	}
	#tfheader{
		float:left;

	}
	#arrow{
		float:right;
		margin-right:-230px
	
	}
	
	.footer{  
    width: 600px;  
    margin: 30px auto; /* buttons pushed from the top by 100% */  
 }  

.button{  
    margin: 8px;
      
}  

.button a{  
    font-family: impact, sans-serif;
    font-size: 15px;  
    color: #777;
    text-shadow: 1px 1px 0px white;
    background: #ffffff; /* Old browsers */  
    background: -moz-linear-gradient(top, #ffffff 0%, #dfdfdf 100%); /* FF3.6+ */  
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#dfdfdf)); /* Chrome,Safari4+ */  
    background: -webkit-linear-gradient(top, #ffffff 0%,#dfdfdf 100%); /* Chrome10+,Safari5.1+ */  
    background: -o-linear-gradient(top, #ffffff 0%,#dfdfdf 100%); /* Opera11.10+ */  
    background: -ms-linear-gradient(top, #ffffff 0%,#dfdfdf 100%); /* IE10+ */  
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#dfdfdf',GradientType=0 ); /* IE6-9 */  
    background: linear-gradient(top, #ffffff 0%,#dfdfdf 100%); /* W3C */  
    -moz-border-radius: 3px;  
    -webkit-border-radius: 3px;  
    border-radius: 3px;  
    -moz-box-shadow: 0 1px 3px 0px rgba(0,0,0,0.4); 
    -webkit-box-shadow: 0 1px 3px 0px rgba(0,0,0,0.4); 
    box-shadow: 0 1px 3px 0px rgba(0,0,0,0.4);  
    padding: 6px 12px;  
}  

.button a:hover{  
    background: #ffffff; /* Old browsers */  
    background: -moz-linear-gradient(top, #ffffff 0%, #eee 100%); /* FF3.6+ */  
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#eee)); /* Chrome,Safari4+ */  
    background: -webkit-linear-gradient(top, #ffffff 0%,#eee 100%); /* Chrome10+,Safari5.1+ */  
    background: -o-linear-gradient(top, #ffffff 0%,#eee 100%); /* Opera11.10+ */  
    background: -ms-linear-gradient(top, #ffffff 0%,#eee 100%); /* IE10+ */  
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#eee',GradientType=0 ); /* IE6-9 */  
    background: linear-gradient(top, #ffffff 0%,#eee 100%); /* W3C */  
    -moz-box-shadow: 0 1px 3px 0px rgba(0,0,0,0.4); 
    -webkit-box-shadow: 0 1px 3px 0px rgba(0,0,0,0.4); 
    box-shadow: 0 1px 3px 0px rgba(0,0,0,0.4);  
}  

.button a:active{  
    background: #dfdfdf; /* Old browsers */  
    background: -moz-linear-gradient(top, #dfdfdf 0%, #f1f1f1 100%); /* FF3.6+ */  
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#dfdfdf), color-stop(100%,#f1f1f1)); /* Chrome,Safari4+ */  
    background: -webkit-linear-gradient(top, #dfdfdf 0%,#f1f1f1 100%); /* Chrome10+,Safari5.1+ */  
    background: -o-linear-gradient(top, #dfdfdf 0%,#f1f1f1 100%); /* Opera11.10+ */  
    background: -ms-linear-gradient(top, #dfdfdf 0%,#f1f1f1 100%); /* IE10+ */  
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#dfdfdf', endColorstr='#f1f1f1',GradientType=0 ); /* IE6-9 */  
    background: linear-gradient(top, #dfdfdf 0%,#f1f1f1 100%); /* W3C */  

    -webkit-box-shadow: 0px 1px 1px 1px rgba(0,0,0,0.2) inset, 0px 1px 1px 0 rgba(255,255,255,1);
    -moz-box-shadow: 0px 1px 1px 1px rgba(0,0,0,0.2) inset, 0px 1px 1px 0 rgba(255,255,255,1);  
    box-shadow: 0px 1px 1px 1px rgba(0,0,0,0.2) inset, 0px 1px 1px 0 rgba(255,255,255,1);  

}

.button a > img{  
    padding-right: 8px;  
    position: relative;  
    top: 2px;  
    
}  

	
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buy & Sell Site</title>
</head>
<body>
	<div id="wrapperHeader">
    <div id="header">
	<form id="tfnewsearch" method="get" action="">
		        <input type="text" id="tfq" class="tftextinput2" name="q" size="21" maxlength="120" value="Search our website">
				<input id="arrow" type="submit" value=">" class="tfbutton2">
		</form>

		<div id="tfheader">
		<%@ page import="java.io.PrintWriter" %>
		<%
			String user=(String)session.getAttribute("logemail");
			if (user!=null && user!="") {
				out.println(user); %>
				<br><a href="Logout.jsp">Log Out</a><br>
				<%
			}
			else {
		%>
		<div class="tfclear"></div>
		<form name="login" action="Login.jsp" method="post" onsubmit="return LoginCheck()">
		<br>
		<b>Email: </b><input type="text" name="logemail"><br>
		<b>Password: </b><input type="password" name="logpass"><br>
		<input type="submit" value="Log in"/>
		</form>
		<a href="CreateAccount.jsp">Don't have an account?</a><br>
		<%
			}
		%>
		</div>
		<a href="index.jsp"><img src="Untitled-1.png" width="100%" height="250" alt="logo" /></a>
		
    </div> 
</div>
	
	<div id="menu">
		<table><center>
		   <tr>
			<td><a href="baby.html"><img src="ProductLogos/Baby.jpg" alt="Baby" style="width:150px; height:150px; "/></a></td>
			<td><a href="books.html"><img src="ProductLogos/Books.jpg" alt="Books" style="width:150px; height:150px; "/></a></td>
			<td><a href="clothes.html"><img src="ProductLogos/Clothes.jpg" alt="Clothes" style="width:150px; height:150px; "/> </a></td>
			
		  </tr>
		  <tr>
			
			<td><a href="vehicle.html"><img src="ProductLogos/Vehicle.jpg" alt="Vehicle" style="width:150px; height:150px; "/> </a></td>
			<td><a href="pets.html"><img src="ProductLogos/Pets.jpg" alt="Pets" style="width:150px; height:150px; "/> </a></td>
			<td><a href="phones.html"><img src="ProductLogos/Phones.jpg" alt="Phones" style="width:150px; height:150px; "/> </a></td>
		  </tr>
		 
		</center></table>
	</div>
<div class="footer">  
        <span class="button fb">  
            <a href="http://www.facebook.com"><img src="f.png" alt="">Facebook</a>  
        </span>  
  
        <span class="button twit">  
            <a href="http://www.twitter.com"><img src="t.png" alt="">Twitter</a>  
        </span>  
  
        <span class="button mail">  
            <a href="http://www.yahoo.com"><img src="e.png" alt="">Yahoo Mail</a>  
        </span>  

	<span class="button ig">  
            <a href="http://www.instagram.com"><img src="i.png" alt="">Instagram</a>  
        </span>  
    </div>
</body>
</html>