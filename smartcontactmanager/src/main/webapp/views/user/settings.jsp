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
		<%@include file="usernav.jsp"%>
	</header>
	<div class="sidebar mt-2">
		<%@include file="sidebar.jsp"%>
	</div>
	<div class="content mt-5">
		<i onclick="toggleSidebar()" class="fas fa-bars m-3"></i>
		<section>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<h3 class="mb-3">Change password</h3>
								<form action="/user/change-password" method="post">
									<!--old password field -->
									<div class="${message.type}">${message.content}</div>
									<div class="form-group">
										<input name="oldPassword" type="password" class="form-control"
											placeholder="Enter old password" />
									</div>
									<!-- new password field -->
									<div class="form-group">
										<input name="newPassword" type="password" class="form-control"
											placeholder="Enter new password" />
									</div>
									<div class="conainer text-center">
										<button type="submit" class="btn btn-success">Change</button>
										<button type="reset" class="btn btn-warning">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<script>
        $(document).ready(() => {
          $(".item").removeClass("active");
          $("#settings-link").addClass("active");
        });
      </script>
		</section>
	</div>
</body>
</html>