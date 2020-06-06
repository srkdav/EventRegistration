<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Good Day!</title>
</head>
<title>Preview your details</title>
</head>
<style>
a, a:focus, a:hover {
	color: #fff;
}

.button-container form, .button-container form div {
	display: inline;
}

.button-container input {
	display: inline;
	vertical-align: middle;
	
}

.card1 {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	padding: 40px;
	background-color: grey;
	font-size: 20px;
	color: white;
	opacity:0.8;
	font-weight:bold;
}

.title {
	color: grey;
	font-size: 18px;
}

button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

.block2 {
	color: blue;
	width: 300px;
	height: 200px;
	border: 2px solid black;
	position: absolute;
	top: 20px;
	right:0px;

}

a {
	text-decoration: none;
	font-size: 22px;
	color: black;
}

button:hover, a:hover {
	opacity: 0.7;
}
/* Custom default button */
.btn-default, .btn-default:hover, .btn-default:focus {
	color: #333;
	text-shadow: none; /* Prevent inheritence from `body` */
	background-color: #fff;
	border: 1px solid #fff;
	margin: 20px;
	data-inline
	="true";
}

/*
 * Base structure
 */
html, body {
	height: 100%;
	background-color: #fff;
}

body {
	color: #fff;
	text-align: center;
	text-shadow: 0 1px 3px rgba(0, 0, 0, .5);
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
	display: table;
	width: 100%;
	height: 600px;
	background-color: #333;
	/*height: 100%; */
	/*min-height: 100%;*/
}

]
.site-wrapper-inner {
	display: table-cell;
	vertical-align: top;
}

.cover-container {
	margin-right: auto;
	margin-left: auto;
}

/* Padding for spacing */
.inner {
	padding: 30px;
}

/*
 * Header
 */
.masthead-brand {
	margin-top: 10px;
	margin-bottom: 10px;
	font-weight:bold;
}

.masthead-nav>li {
	display: inline-block;
}

.masthead-nav>li+li {
	margin-left: 20px;
}

.masthead-nav>li>a {
	padding-right: 0;
	padding-left: 0;
	font-size: 16px;
	font-weight: bold;
	color: #fff; /* IE8 proofing */
	color: rgba(255, 255, 255, .75);
	border-bottom: 2px solid transparent;
}

.masthead-nav>li>a:hover, .masthead-nav>li>a:focus {
	background-color: transparent;
	border-bottom-color: #a9a9a9;
	border-bottom-color: rgba(255, 255, 255, .25);
}

.masthead-nav>.active>a, .masthead-nav>.active>a:hover, .masthead-nav>.active>a:focus
	{
	color: #fff;
	border-bottom-color: #fff;
}

@media ( min-width : 768px) {
	.masthead-brand {
		float: left;
	}
	.masthead-nav {
		float: right;
	}
}

/*
 * Cover
 */
.cover {
	padding: 0 20px;
}

.cover .btn-lg {
	padding: 10px 20px;
	font-weight: bold;
}

/*
 * Affix and center
 */
@media ( min-width : 768px) {
	/* Pull out the header and footer */
	.masthead {
		position: fixed;
		top: 0;
	}
	/* Start the vertical centering */
	.site-wrapper-inner {
		vertical-align: middle;
	}
}
</style>
<body background="${pageContext.request.contextPath}/img/party.jpg">

	<div class="site-wrapper"
		style="background-image: url('${pageContext.request.contextPath}/img/party.jpg')">

		<div class="site-wrapper-inner">

			<div class="container">

				<div class="masthead clearfix">
					<div class="container inner">
						<nav>
							<ul class="nav masthead-nav">
								<h3 style="font-weight:bold">Welcome, ${fullName} !
								</h3>
							</ul>
						</nav>
					</div>
				</div>
				<div class="card1">
					<p >Please confirm your details :</p>
					<h1>${fullName}</h1>
					<p>Email : ${email}</p>
					<p>Mobile : ${mobile}</p>
					<p>Email : ${email}</p>
					<p>Type : ${type}</p>
					<p>Tickets : ${tickets}</p>

				</div>
				<div class="block2">
					<div class="pic_block">
						<img src="/WebAssignment1/images/${mobile}">
					</div>
				</div>
				<div class="button-container">
					<sp:form method="post">
						<div>
							<input type="submit" class="btn btn-primary btn-lg"
								name="register" value="Register" />
						</div>
					</sp:form>
					<sp:form method="post">
						<div>
							<input type="submit" class="btn btn-primary btn-lg" name="cancel"
								value="Cancel" />
						</div>
					</sp:form>
				</div>
			</div>

		</div>

	</div>

</body>
</html>
