<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.final_id {
	color: #FFFF99;
	font-weight:bold;
	background-color:gray;
	width:40%;
	margin : 0 auto;
	opacity:0.9
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
<body background="${pageContext.request.contextPath}/img/party.jpg">

	<div class="site-wrapper"
		style="background-image: url('${pageContext.request.contextPath}/img/party.jpg')">

		<div class="site-wrapper-inner">

			<div class="container">
				<div class="inner cover">
					<h1 class="cover-heading">Congrats! You have successfully
						registered!</h1>
					<div class="final_id">
						<p class="lead">Please note down the Registration Id :"${id}"
							for future reference.</p>
					</div>
					<p class="lead">
						<a href="/WebAssignment1/" class="btn btn-primary btn-lg">Click
							Here for Home Page</a>
					</p>
					<div class="gif">
						<img src="https://media.giphy.com/media/upg0i1m4DLe5q/source.gif"
							alt="this slowpoke moves" width=250 />
					</div>
				</div>

			</div>

		</div>

	</div>
</body>
</html>