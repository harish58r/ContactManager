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



							<!-- message box  -->
							<div  class="container">

								<div class="alert alert-danger my-2 text-center" role="alert">

									<span></span>

								</div>

								

							</div>

							<!--  email form -->
							<h3 class="text-center m-3">Your Registered Email</h3>

							<form method="post" action="send-otp" >


								<div class="form-group">


									<input name="email" required="required" type="email"
										placeholder="Enter email here" class="form-control" />



								</div>

								<div class="container text-center">


									<button class="btn btn-warning">Send OTP</button>


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