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
	background-color: 	#808080;
}

th, td {
	font-size: 15px;
	color: white;
}
</style>
<body>
	<div class="wrapper" style="background-image: url('${pageContext.request.contextPath}/img/party.jpg')">
		<div class="sidebar" data-color="black"
			data-image="<spring:url value='/img/sidebar-5.jpg"'/>">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a  class="simple-text">
						${admin_name}'s Profile ! </a>
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
						<ul class="navbar-nav ml-auto">
									<li class="nav-item"><a class="nav-link" href="../">
									<span class="no-icon">Log out</span>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<!-- <div class="row"> -->
					<div class="container">
						<div class="row">
							<div class="col-md-10 col-md-offset-1">
								<div class="description">
									<h2>Customer Details</h2>
								</div>
								<div class="fresh-table full-color-azure">
									<table id="fresh-table" class="table">
										<thead bgcolor="white"">
											<th data-field="id" data-sortable="true">ID</th>
											<th data-field="name">Name</th>
											<th data-field="email">Email</th>
											<th data-field="mobile">Mobile</th>
											<th data-field="type">Type</th>
											<th data-field="tickets" data-sortable="true">Tickets</th>
											<th data-field="generatedDate" data-sortable="true">Date</th>

										</thead>
										<tbody>
											<c:forEach var="c" items="${requestScope.customerList}">
												<tr>
													<td>${c.id}</td>
													<td>${c.fullName}</td>
													<td>${c.email}</td>
													<td>${c.mobile}</td>
													<td>${c.type}</td>
													<td>${c.countTickets}</td>
													<td>${c.generatedDate}</td>

												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
			<!-- </div> -->
		</div>
	</div>
	</div>

</body>
<script type="text/javascript">
	var $table = $('#fresh-table')
	var $alertBtn = $('#alertBtn')

	window.operateEvents = {
		'click .like' : function(e, value, row, index) {
			alert('You click like icon, row: ' + JSON.stringify(row))
			console.log(value, row, index)
		},
		'click .edit' : function(e, value, row, index) {
			alert('You click edit icon, row: ' + JSON.stringify(row))
			console.log(value, row, index)
		},
		'click .remove' : function(e, value, row, index) {
			$table.bootstrapTable('remove', {
				field : 'id',
				values : [ row.id ]
			})
		}
	}

	function operateFormatter(value, row, index) {
		return [
				'<a rel="tooltip" title="Like" class="table-action like" href="javascript:void(0)" title="Like">',
				'<i class="fa fa-heart"></i>',
				'</a>',
				'<a rel="tooltip" title="Edit" class="table-action edit" href="javascript:void(0)" title="Edit">',
				'<i class="fa fa-edit"></i>',
				'</a>',
				'<a rel="tooltip" title="Remove" class="table-action remove" href="javascript:void(0)" title="Remove">',
				'<i class="fa fa-remove"></i>', '</a>' ].join('')
	}

	$(function() {
		$table.bootstrapTable({
			classes : 'table table-hover table-striped',
			toolbar : '.toolbar',

			search : true,
			showRefresh : true,
			showToggle : true,
			showColumns : true,
			pagination : true,
			striped : true,
			sortable : true,
			pageSize : 8,
			pageList : [ 8, 10, 25, 50, 100 ],

			formatShowingRows : function(pageFrom, pageTo, totalRows) {
				return ''
			},
			formatRecordsPerPage : function(pageNumber) {
				return pageNumber + ' rows visible'
			}
		})
	})
</script>

<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga')

	ga('create', 'UA-46172202-1', 'auto')
	ga('send', 'pageview')
</script>

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
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script
	src="<spring:url value='/js/light-bootstrap-dashboard.js?v=2.0.0 '/>"
	type="text/javascript"></script>

<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->


</html>
