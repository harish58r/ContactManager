<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="base.jsp"%>
</head>
<body>
	<header>
		<%@include file="nav.jsp"%>
	</header>
	<section>
		<div id="login">

			<div class="container">
				<div id="login-row"
					class="row justify-content-center align-items-center">
					<div id="login-column" class="col-md-6">
						<div id="login-box" style="height: 220px;" class="col-md-12">

							<h3 class="mt-4">Enter new password</h3>

							<form method="post" action="change-password" >


								<div class="form-group">


									<input name="newpassword" required="required" type="password"
										placeholder="Enter new password here" class="form-control" />



								</div>

								<div class="container text-center">


									<button class="btn btn-primary">Change Password</button>


								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>