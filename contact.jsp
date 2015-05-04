<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="author" content="Paola Dizon" />
	<title>CONTACT</title>
	
<script src="Contact.js" type="text/javascript"></script>        
</head>
<body>

<div id="wrapperHeader">
    <div id="header">
	<form id="tfnewsearch" method="get" action="">
		        <input type="text" id="tfq" class="tftextinput2" name="q" size="21" maxlength="120" value="Search our website">
				<input id="arrow" type="submit" value=">" class="tfbutton2">
		</form>
		
             <a href="index.jsp"><img src="Untitled-1.png" width="1340" height="250" alt="logo" /></a>
		
    </div>

	<div id="hoho">	
	    <div id="navbar">
 		 <a href="index.jsp" class="action-button shadow animate blue">HOME</a>
 		 <a href="About.html" class="action-button shadow animate red">ABOUT</a>
  		 <a href="Menu.html" class="action-button shadow animate green">MENU</a>
 		 <a href="contact.jsp" class="action-button shadow animate yellow">CONTACT</a>
  	    </div>
	</div>
	

<div class="form-style-6">
<h1>CONTACT US</h1>
<form name="contact" action="contact" method="post" onsubmit="return Send()">
<input type="text" name="field1" placeholder="Your Name" 
	<% String fname=(String)session.getAttribute("fname");
		String mname=(String)session.getAttribute("mname");
		String lname=(String)session.getAttribute("lname");
		String user="";
		if (fname!=null && fname!="" && lname!=null && lname!="") {
			if (mname!=null && mname!="") {
				user=fname + " " + mname + " " + lname;
				%>
				value="<%= user %>" <%
			}
			else {
			user=fname + " " + lname;
			%>
				value="<%= user %>" <%
			}
		}
		%>/>
<input type="email" name="field2" placeholder="Email Address"
	<% String email=(String)session.getAttribute("email");
		if (email!=null && email!="") {%>
		value="<%= email %>" <%
			}
		%>
/>
<textarea name="field3" placeholder="Type your Message"></textarea>
<input type="submit" value="SEND" />
</form>
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

<style type="text/css">
	
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
		margin: 0px;
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
	
	td{
	border: 5px solid black;
	
	}
	
	#hehe{
	min-height: 0px;
	width:920px;
	margin-left: auto;
	margin-right: auto;		
	margin-bottom: 20px;
	margin-top: 70px;
	padding: -10px;
 	position: center;
}


#navbar {
position: relative;

top:-25px;
left:40%;

margin-left:-330px;

}


a:hover {
	

	
}



.animate
{
	transition: all 0.1s;
	-webkit-transition: all 0.1s;
}

.action-button
{
	position: relative;
	padding:10px 30px;
        margin: 10px 10px 10px 80px;
  	float: left;
	border-radius: 5px;
	font-family: Impact;
	font-size: 25px;
	color: beige;
	text-decoration: none;	
}

.blue
{
	background-color: #3498DB;
	border-bottom: 5px solid #2980B9;
	text-shadow: 0px -2px #2980B9;
}

.red
{
	background-color: #E74C3C;
	border-bottom: 5px solid #BD3E31;
	text-shadow: 0px -2px #BD3E31;
}

.green
{
	background-color: #82BF56;
	border-bottom: 5px solid #669644;
	text-shadow: 0px -2px #669644;
}

.yellow
{
	background-color: #F2CF66;
	border-bottom: 5px solid #D1B358;
	text-shadow: 0px -2px #D1B358;
}

.action-button:active
{
	transform: translate(0px,5px);
  -webkit-transform: translate(0px,5px);
	border-bottom: 1px solid;
}

.footer{  
    width: 600px;  
    margin: 10px auto; /* buttons pushed from the top by 10% */ 
    padding: 100px; 
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
.action-button:active
{
	transform: translate(0px,5px);
  -webkit-transform: translate(0px,5px);
	border-bottom: 1px solid;
}

a{  
    text-decoration: none;  
    color:#333333;  
}  

.footer{  
    width: 600px;  
    margin: -100px auto; /* buttons pushed from the top by 10% */  
	
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

.form-style-6{
    font: 95% Impact;
    max-width: 400px;
    margin:50px auto;
    padding: 16px;
    background: white;
}
.form-style-6 h1{
    background: #43D1AF;
    padding: 15px 10px;
    font-size: 140%;
    font-weight: 300;
    text-align: center;
    color: #fff;
    margin: 16px -16px 16px -16px;
}
.form-style-6 input[type="text"],
.form-style-6 input[type="date"],
.form-style-6 input[type="datetime"],
.form-style-6 input[type="email"],
.form-style-6 input[type="number"],
.form-style-6 input[type="search"],
.form-style-6 input[type="time"],
.form-style-6 input[type="url"],
.form-style-6 textarea,
.form-style-6 select 
{
    -webkit-transition: all 0.30s ease-in-out;
    -moz-transition: all 0.30s ease-in-out;
    -ms-transition: all 0.30s ease-in-out;
    -o-transition: all 0.30s ease-in-out;
    outline: none;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    width: 100%;
    background: #fff;
    margin-bottom: 4%;
    border: 1px solid #ccc;
    padding: 3%;
    color: #555;
    font: 95% Arial, Helvetica, sans-serif;
}
.form-style-6 input[type="text"]:focus,
.form-style-6 input[type="date"]:focus,
.form-style-6 input[type="datetime"]:focus,
.form-style-6 input[type="email"]:focus,
.form-style-6 input[type="number"]:focus,
.form-style-6 input[type="search"]:focus,
.form-style-6 input[type="time"]:focus,
.form-style-6 input[type="url"]:focus,
.form-style-6 textarea:focus,
.form-style-6 select:focus
{
    box-shadow: 0 0 5px #43D1AF;
    padding: 3%;
    border: 1px solid #43D1AF;
}

.form-style-6 input[type="submit"],
.form-style-6 input[type="button"]{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    width: 100%;
    padding: 3%;
    background: #43D1AF;
    border-bottom: 2px solid #30C29E;
    border-top-style: none;
    border-right-style: none;
    border-left-style: none;    
    color: #fff;
}
.form-style-6 input[type="submit"]:hover,
.form-style-6 input[type="button"]:hover{
    background: #2EBC99;
}