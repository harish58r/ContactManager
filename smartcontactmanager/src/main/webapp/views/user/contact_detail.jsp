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
			<div class="card mr-3 ml-3">
				<div class="card-body">
					<div class="container text-center">
						<img style="height: 200px; width: 200px;"
							class="my_profile_picture" src="/img/${contact.image}"
							alt="profile photo" />
						<h3 class="mt-3">
							<span>${contact.name}</span> ( <span>${contact.secondName}</span> )
						</h3>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#ID</th>
									<th scope="col">SCMUSER<span >${contact.cId}</span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">Email</th>
									<td><span>${contact.email}</span></td>
								</tr>
								<tr>
									<th scope="row">Phone</th>
									<td><span >${contact.phone}</span></td>
								</tr>
								<tr>
									<th scope="row">Work</th>
									<td><span>${contact.work}</span></td>
								</tr>
							</tbody>
						</table>
						<div class="description mt-3">
							<th:block>${contact.description}</th:block>
						</div>
						<div class="container mt-3">
							<a href="/user/delete/${contact.cId}"><button 
								class="btn btn-danger btn-sm btn-block"> Delete </button></a>
							<form method="post"
								action="/user/update-contact/${contact.cId}"
								class="mt-2">
								<button type="submit" class="btn btn-block btn-primary btn-sm">Update</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<%-- <h1 class="text-center p-3 bg-danger text-white"
				th:unless="${contact}">You don't have permission to see this
				contact...</h1> --%>
		</section>
	</div>
</body>
</html>