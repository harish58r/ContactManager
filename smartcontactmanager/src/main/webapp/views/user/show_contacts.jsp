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
					<h1 class="text-center">Your Contacts</h1>
					<div class="table-responsive">
						<table class="table table-hover ">
							<thead class="thead-light ">
								<tr>
									<th scope="col">#ID</th>
									<th scope="col">Name</th>
									<th scope="col">Email</th>
									<th scope="col">Phone</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="contacts" items="${contacts}">
									<tr>
										<th> <span>SCMUSER</span>${contacts.cId}</th>
										<td><img src="/img/${contacts.image}"
											class="my_profile_picture" alt="profile photo" /> <span>${contacts.name}</span></td>
										<td> <a href="/user/${contacts.cId}/contact">${contacts.email}</a> </td>
										<td>${contacts.phone}</td>
										<td><a href="/user/delete/${contacts.cId}"
											class="btn btn-danger btn-sm">Delete</a>
											<form method="post" class="mt-2"
												action="/user/update-contact/${contacts.cId}">
												<button type="submit" class="btn btn-primary btn-sm">Update</button>
											</form></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<nav aria-label="...">
						<ul class="pagination">
							<c:if test="${currentPage != 0}">
								<li class="page-item"><a class="page-link"
									href="/user/show-contacts/${currentPage-1}">Previous</a></li>
							</c:if>

							<c:forEach var="i" begin="1" end="${totalPages}">
								<li class="${currentPage==i-1?'active':''} page-item"><a
									href="/user/show-contacts/${i-1}" class="page-link" href="#"><span>${i}</span></a>
								</li>

							</c:forEach>

							<c:if test="${currentPage+1 != totalPages}">
								<li class="page-item"><a class="page-link"
									href="/user/show-contacts/${currentPage+1}">Next</a></li>
							</c:if>
						</ul>
					</nav>

				</div>
			</div>
			<script>
        $(document).ready(() => {
          $(".item").removeClass("active");
          $("#contacts-link").addClass("active");
        });
      </script>

		</section>
	</div>
</body>
</html>