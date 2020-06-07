<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />

<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css">

<link href="<spring:url value='/css/fresh-bootstrap-table.css'/>"
	rel="stylesheet" />

<link href="<spring:url value='/css/demo.css'/>" rel="stylesheet" />

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link href="http://fonts.googleapis.com/css?family=Roboto:400,700,300"
	rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://unpkg.com/bootstrap-table/dist/bootstrap-table.min.js"></script>


<link rel="apple-touch-icon" sizes="76x76"
	href="<spring:url value='/img/apple-icon.png'/>" />
<link rel="icon" type="image/png"
	href="<spring:url value='/img/favicon.ico'/>" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<!-- CSS Files -->
<link rel="stylesheet"
	href="<spring:url value='/css/bootstrap.min.css"'/>" />
<link rel="stylesheet"
	href="<spring:url value='/css/light-bootstrap-dashboard.css?v=2.0.0 "'/>" />
</head>
<style>
body {
	background-color: #808080;
}

th, td {
	font-size: 15px;
	color: white;
}

.container-fluid {
	float: center;
}
</style>
<body>
	<div class="wrapper"
		style="background-image: url('${pageContext.request.contextPath}/img/party.jpg')">
		<div class="sidebar" data-color="black"
			data-image="<spring:url value='/img/sidebar-5.jpg"'/>">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a class="simple-text">${admin_name}'s Profile ! </a>
				</div>
				<ul class="nav">
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value="/user/home" />"> <i
							class="nc-icon nc-chart-pie-35"></i>
							<p>Dashboard</p>
					</a></li>

					<li><a class="nav-link" href="<c:url value="/user/graph" />">
							<i class="nc-icon nc-notes"></i>
							<p>Charts</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg " color-on-scroll="500">
				<div class="container-fluid">
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<ul class="nav navbar-nav mr-auto">
						</ul>
						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="../"> <span
									class="no-icon">Log out</span>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-8">
							<div class="card ">
								<div class="card-header ">
									<h4 class="card-title">Ticket Statistics-1</h4>
								</div>
								<div class="card-body ">
									<div class="container">
										<h2 align="center">Pie chart</h2>

										<div id="container"
											style="width: 550px; height: 300px; margin: 0 auto;"></div>
									</div>
									<script
										src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
									<!-- Latest compiled and minified JavaScript -->
									<script
										src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
									<script src="https://code.highcharts.com/highcharts.js"></script>
									<script src="https://code.highcharts.com/modules/exporting.js"></script>
									<script th:inline="javascript">
		document.addEventListener('DOMContentLoaded', function() {
			var myChart = Highcharts.chart('container', {
			    chart: {
			        plotBackgroundColor: null,
			        plotBorderWidth: null,
			        plotShadow: false,
			        type: 'pie'
			    },
			    title: {
			        text: 'Ticket Pie Chart'
			    },
			    tooltip: {
			        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			    },
			    accessibility: {
			        point: {
			            valueSuffix: '%'
			        }
			    },
			    plotOptions: {
			        pie: {
			            allowPointSelect: true,
			            cursor: 'pointer',
			            dataLabels: {
			                enabled: true,
			                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
			            }
			        }
			    },
			    series: [{
			        name: 'Brands',
			        colorByPoint: true,
			        data: [{
			            name: 'Self',
			            y: ${surveyMap.self}
			        }, {
			            name: 'Group',
			            y: ${surveyMap.group}
			        }, {
			            name: 'Corp',
			            y:  ${surveyMap.corp}
			        }]
			    }]
			});
		});
	</script>



									<hr>
								</div>
							</div>
							<div class="card ">
								<div class="card-header1 ">
									<h4 class="card-title">Ticket Statistics-2</h4>
								</div>
								<div class="card-body1 ">
									<div class="container2">
										<h2 align="center">Day wise count</h2>

										<div id="container2"
											style="width: 550px; height: 300px; margin: 0 auto;"></div>
									</div>
									<script
										src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
									Latest compiled and minified JavaScript
									<script
										src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
									<script src="https://code.highcharts.com/highcharts.js"></script>
									<script src="https://code.highcharts.com/modules/exporting.js"></script>
									<script th:inline="javascript">
		document.addEventListener('DOMContentLoaded', function() {
			var myChart = Highcharts.chart('container2', {
				title: {
			        text: 'Day Wise ticket analysis'
			    },

			    yAxis: {
			        title: {
			            text: 'Number of Tickets'
			        }
			    },
			    tooltip: {
			        pointFormat: "Value: {point.y:,.1f}"
			    },
			    
			    xAxis: {
			        type: 'datetime',
			        labels: {
			            format: '{value:%m-%d}',
			            rotation: 45,
			            align: 'left'
			        }
			    },

			    series: [{
			        data: ${dateMap.values()},
			        pointStart: Date.UTC(2020, 6, 4),
			        pointInterval: 24 * 36e5
			    }],
			    responsive: {
			        rules: [{
			            condition: {
			                maxWidth: 500
			            },
			            chartOptions: {
			                legend: {
			                    layout: 'horizontal',
			                    align: 'center',
			                    verticalAlign: 'bottom'
			                }
			            }
			        }]
			    }
			    
			});
		});

	</script>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<!--   Core JS Files   -->
<script src="<spring:url value='/js/core/jquery.3.2.1.min.js'/>"
	type="text/javascript"></script>

<script src="<spring:url value='/js/core/popper.min.js'/>"
	type="text/javascript"></script>

<script src="<spring:url value='/js/core/bootstrap.min.js'/>"
	type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="<spring:url value='/js/plugins/bootstrap-switch.js'/>"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="<spring:url value='/js/plugins/chartist.min.js'/>"></script>
<!--  Notifications Plugin    -->
<script src="<spring:url value='/js/plugins/bootstrap-notify.js'/>"></script>
</html>
