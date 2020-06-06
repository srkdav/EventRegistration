<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Good Day!</title>
</head>
<title>Welcome To the Home Page!</title>
</head>
<style>
a, a:focus, a:hover {
	color: #fff;
}

img {
	width: 100%
}
/* Custom default button */
.btn-default, .btn-default:hover, .btn-default:focus {
	color: #333;
	text-shadow: none; /* Prevent inheritence from `body` */
	background-color: #fff;
	border: 1px solid #fff;
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
	/*height: 100%; */ /*min-height: 100%;*/
}

.quote {
	color: #FFFF99;
	font-weight:bold;
	background-color:gray;
	width:40%;
	margin : 0 auto;
	opacity:0.8
}

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
<body style="background-image: url('img/party.jpg')">

	<div class="main">

		<div class="site-wrapper"
			style="background-image: url('img/party.jpg')">

			<div class="site-wrapper-inner">
				<div class="container">

					<div class="masthead clearfix">

						<div class="container inner">

							<nav>
								<ul class="nav masthead-nav">
									<li class="active"><a href="user/login">Admin Login</a></li>
								</ul>
							</nav>
						</div>
					</div>

					<div class="inner cover">

						<h1 class="cover-heading">Welcome!</h1>
						<div class="quote">
							<p>If you want register for the event, hit the button!</p>
						</div>
						<p class="lead">
							<a href="customer/insert"
								class="btn btn-primary btn-rounded btn-lg">Registration</a>
						</p>
					</div>

				</div>

			</div>

		</div>
	</div>
</body>
</html>