<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="admin-header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">All Ambulance</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<!--    Context Classes  -->
				<div class="panel panel-default">

					<div class="panel-heading">All Ambulance</div>

					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>#</th>
										<th>Ambulance Vehicle No</th>
										<th>Ambulance Type</th>
										<th>Driver Name</th>
										<th>Mobile No</th>
										<th>License No</th>
										<th>State</th>
										<th>City</th>
										<th>Created At</th>
										<th>Updated At</th>
										<th>Vehicle Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<%
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblambulance");
								while (resultset.next()) {
								%>
								<tbody>
									<tr class="default">
										<td><%=resultset.getString("id")%></td>
										<td><%=resultset.getString("ambulance_vehicle_no")%></td>
										<td><%=resultset.getString("ambulance_type")%></td>
										<td><%=resultset.getString("driver_name")%></td>
										<td><%=resultset.getString("driver_mobile")%></td>
										<td><%=resultset.getString("driver_lincense_no")%></td>
										<td><%=resultset.getString("state")%></td>
										<td><%=resultset.getString("city")%></td>
										<td><%=resultset.getString("created_at")%></td>
										<td><%=resultset.getString("updated_at")%></td>
										<%
											if (resultset.getString("status").equals("Pending")) {
										%>
										<td><span class="label label-danger"><%=resultset.getString("status")%></span></td>

										<%
											} else {
										%><td><span class="label label-success"><%=resultset.getString("status")%></span></td>

										<%
											}
										%>
										<td><a href="admin-check-ambulance.jsp?id=<%=resultset.getString("id")%>">Check It</a></td>
									</tr>
								</tbody>
								<%
									}
								%>
							</table>
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
	<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>