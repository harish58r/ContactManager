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
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="my-card mt-1">
						<div class="${message.type}">
							<b>${message.content}</b>
						</div>
						<div class="container text-center">
							<img class="" style="width: 80px;" src="/img/membership.png"
								alt="" />
						</div>
						<h1 class="text-center">Register Here !!</h1>
						<form novalidate action="/do_register" method="post">
							<!-- name field  -->
							<div class="form-group">
								<label for="name_field">Your Name * <span> <form:errors
											path="user.name" />
								</span>
								</label> <input name="name" type="text" class="form-control "
									id="name_field" aria-describedby="emailHelp"
									placeholder="Enter here" required />
							</div>
							<!-- email field  -->
							<div class="form-group">
								<label for="email_field">Your Email *<span> <form:errors
											path="user.email" />
								</span></label> <input
									name="email" type="email" class="form-control" id="email_field"
									aria-describedby="emailHelp" placeholder="Enter here" required />
							</div>
							<!-- password field  -->
							<div class="form-group">
								<label for="password_field">Your Password *<span> <form:errors
											path="user.password" />
								</span></label> <input
									name="password" type="password" class="form-control"
									id="password_field" aria-describedby="emailHelp"
									placeholder="Enter here" required />
							</div>
							<!-- user about field -->
							<div class="form-group">
								<textarea name="about" placeholder="Enter something yourself"
									rows="6" class="form-control"></textarea>
							</div>
							<!-- terms and condition agreement  -->
							<div class="form-group form-check text-center">
								<input type="checkbox" name="agreement" class="form-check-input"
									id="agreement" /> <label for="agreement">Accept terms
									and conditions</label>
							</div>
							<div class="container text-center">

								<button type="submit" class="btn bg-primary  text-white">
									Submit</button>
								<button type="reset" class="btn btn-warning ">Reset</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>