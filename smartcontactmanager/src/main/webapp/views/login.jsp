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
						<div id="login-box" class="col-md-12">
							<form id="login-form" class="form" action="dologin" method="post">
								<h3 class="text-center text-info">Login</h3>
								<c:if test="${param.error==true}">Invalid username and password</c:if>
								<c:if test="${param.logout==true}"><div class="alert alert-success">You have been logged out</div></c:if>
									
								
								<div class="form-group">
									<label for="username" class="text-info">Username:</label><br>
									<input type="text" name="username" id="username"
										class="form-control">
								</div>
								<div class="form-group">
									<label for="password" class="text-info">Password:</label><br>
									<input type="password" name="password" id="password"
										class="form-control">
								</div>
								<div class="form-group">
									<label for="remember-me" class="text-info"><span>Remember
											me</span> <span><input id="remember-me" name="remember-me"
											type="checkbox"></span></label><br> <input type="submit"
										name="submit" class="btn btn-info btn-md" value="submit">
								</div>
								<div id="register-link" class="text-right">
									<a href="/signup/" class="text-info">Register here</a>
								</div>

								<div class="container text-center">
									<a href="forgot"> Forgot Password ?</a>
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