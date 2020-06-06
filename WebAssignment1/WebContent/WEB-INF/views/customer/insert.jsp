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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Good Day!</title>
</head>
<title>Welcome To the Home Page!</title>
</head>
<style>
.card-body {
	background-color: #696969;
	color: #FFFF99;
}

.card-header {
	font-weight: bold;
	color: #FFFF99;
}

.card-title {
	text-align: center;
}

.content {
	width: 100%;
	margin: 0 auto;
	padding: 20px;
}

.form-group {
	font-weight: bold;
}

.card {
	background-color: #696969;
	width: 50%;
	margin: auto;
	left: 260px;
	font-weight: bold;
	opacity: 0.9;
}

.clearfix {
	transform: translateX(34%);
}
</style>
<body background="${pageContext.request.contextPath}/img/party.jpg">
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-7 col-md-offset-1">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Registration Form</h4>
						</div>
						<div class="card-body">
							<sp:form method="post" modelAttribute="customer">
								<div class="row">
									<div class="col-md-10 pr-1">
										<div class="form-group">
											<label>Email</label>
											<sp:input path="email" name="email" value="${email}"
												type="email" class="form-control" placeholder="xyz@gmail.com" required="required"/>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-10 pr-1">
										<div class="form-group">
											<label for="fullName">Full Name</label>
											<sp:input path="fullName" name="fullName" type="text"
												class="form-control" placeholder="Mike Smith"
												value="${fullName}" required="required"/>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-10 pr-1">
										<div class="form-group">
											<label>Mobile</label>
											<sp:input path="mobile" name="mobile" value="${mobile}"
												type="text" class="form-control" placeholder="9717 12 1212" required="required"/>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-10 pr-1">
										<div class="form-check">
											<div class="col-md-4 pr-1">
												<sp:radiobutton path="type" value="self" />
												<label class="form-check-label" id="type" for="type"> Self </label>
											</div>
										</div>
										<div class="form-check">
											<div class="col-md-4 pr-1">
												<sp:radiobutton path="type" value="group" />
												<label class="form-check-label" id="type"  for="type"> Group </label>
											</div>
										</div>
										<div class="form-check">
											<div class="col-md-4 pr-1">

												<sp:radiobutton path="type" value="corp" />
												<label class="form-check-label" id="type"  for="type">
													Corporate</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-10 pr-1">
										<div class="form-group">
											<label>Tickets</label>
											<sp:input path="countTickets" name="countTickets"
												value="${tickets}" type="text" class="form-control"
												placeholder="1" required="required"/>
										</div>
									</div>
								</div>
								<div class="clearfix">
									<input type="submit" value="Sign Up!"
										class="btn btn-info btn-fill pull-right">
								</div>
							</sp:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>