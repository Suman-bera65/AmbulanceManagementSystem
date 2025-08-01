<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.connection.*" %>
<!DOCTYPE html>
<html lang="en">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Site Metas -->
<title>AMS</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body class="host_version">
	<jsp:include page="header.jsp"></jsp:include><br>
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">Driver Login</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="images/driver-login.jpg" style="width:500px;height:200px;">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">Driver Login</div>
					<div class="panel-body">
					<%
						String credential = (String) session.getAttribute("credential");
						if (credential != null) {
						session.removeAttribute("credential");
					%>
					<div class="alert alert-danger" id="danger">You have enter
						wrong credentials.</div>
					<%
						}
					%>
					<%
						String captchaCode = (String) session.getAttribute("verificationCode");
						if (captchaCode != null) {
						session.removeAttribute("verificationCode");
					%>
					<div class="alert alert-info" id="info">You have enter wrong verification code.</div>
					<%
						}
					%>
						<form action="DriverLogin" method="post">
							<div class="form-group">
								<label>User Name</label> <input class="form-control"
									type="text" name="uname"/>
							</div>
							<div class="form-group">
								<label>Password</label> <input class="form-control"
									type="password" name="upass"/>
							</div>
							<%
								String captcha = null;
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select captcha from tblcaptcha");
								if (resultset.next()) {
								captcha = resultset.getString(1);
								}
							%>
							<div class="form-group">
								<label>Enter Verification Code</label>
								<input type="text" name="vercode" class="form-control"
									 placeholder="Enter Verification Code Here" />
							</div>
							<div class="form-group">
								<label>Verification Code</label>
								<input type="text" value="<%=captcha%>" class="form-control" style="width: 180px;" readonly />
							</div>
							<button type="submit" class="btn btn-info">Login
							</button>
							<a class="for-pwd" href="driver-register.jsp">New Driver Register</a><a class="for-pwd" href="driver-forgot-password.jsp">Forgot your password?</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#info').delay(3000).show().fadeOut('slow');
	});
</script>
</html>