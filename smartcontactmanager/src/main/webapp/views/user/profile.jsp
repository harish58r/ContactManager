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
				<div class="card">
					<div class="card-body">
						<div class="container text-center">
							<img src="img/'+${user.imageUrl}" style="height: 200px; width: 200px;"
								class="my_profile_picture" 
								alt="profile photo" />
						</div>
						<h1 class="text-center mt-3" >${user.name}</h1>
						<table class="table text-center">
							<thead>
								<tr>
									<th scope="col">#USERID</th>
									<th scope="col">SCMUSER<span >${user.id}</span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">Email</th>
									<td><span >${user.email}</span></td>

								</tr>
								<tr>
									<th scope="row">Role</th>
									<td><span>${user.role}</span></td>

								</tr>
								<tr>
									<th scope="row">Acccount Active</th>
									<td><span >${user.enabled}</span></td>

								</tr>
								</tr>
								<tr>
									<th scope="row">About you</th>
									<td><span >${user.about}</span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<script>
        $(document).ready(() => {
          $(".item").removeClass("active");
          $("#profile-link").addClass("active");
        });
      </script>

		</section>
	</div>
</body>
</html>