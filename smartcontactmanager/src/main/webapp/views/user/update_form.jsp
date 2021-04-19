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

					<h1 class="text-center">Update your Contact</h1>

					<div class="container-fluid mt-1">

						<div class="row">

							<div class="col-md-8 offset-md-2">

								<form action="/user/process-update" enctype="multipart/form-data"
									method="POST" class="mt-2">

									<input type="hidden" value="${contact.cId}" name="cId" />


									<!-- First Name  -->

									<div class="input-group">

										<div class="input-group-prepend">

											<div class="input-group-text ">

												<i class="fa fa-plus"></i>

											</div>

										</div>

										<input value="${contact.name}" required type="text"
											id="firstName" name="name" placeholder="Enter Name here"
											class="form-control" />

									</div>


									<!-- Second Name  -->

									<div class="input-group mt-3">

										<div class="input-group-prepend">

											<div class="input-group-text ">

												<i class="fas fa-user-alt"></i>

											</div>

										</div>

										<input value="${contact.secondName}" required type="text"
											id="secondName" name="secondName"
											placeholder="Enter Nick Name here" class="form-control" />

									</div>
									<!-- Phone Field -->
									<div class="input-group mt-3">

										<div class="input-group-prepend">

											<div class="input-group-text ">

												<i class="fa fa-phone"></i>

											</div>

										</div>

										<input value="${contact.phone}" required min="10"
											type="number" id="phone" name="phone"
											placeholder="Enter Phone Number  here" class="form-control" />

									</div>


									<!-- Email Field  -->

									<div class="input-group mt-3">

										<div class="input-group-prepend">

											<div class="input-group-text ">@</div>

										</div>

										<input value="${contact.email}" required type="email"
											id="email" name="email" placeholder="Enter email here"
											class="form-control" />

									</div>


									<!--  Work Field -->

									<div class="input-group mt-3">

										<div class="input-group-prepend">

											<div class="input-group-text ">

												<i class="fa fa-briefcase"></i>

											</div>

										</div>

										<input value="${contact.work}" required type="text" id="work"
											name="work" placeholder="Enter work here"
											class="form-control" />

									</div>

									<!-- Contact Description -->

									<div class="form-group mt-3">

										<textarea id="mytextarea"
											placeholder="Enter contact description" name="description"
											class="form-control" rows="20">${contact.description}</textarea>

									</div>

									<!-- Contact Image  -->

									<div class="container text-center">
										<img style="width: 250px; height: 250px;"
											class="img-fluid my_profile_picture"
											src="/img/${contact.image}" alt="" />
									</div>

									<p class="text-secondary">Choose new profile pic</p>

									<div class="custom-file">
										<input type="file" name="profileImage" />

									</div>

									<div class="container text-center">

										<button class="btn btn-outline-primary">Save Contact</button>

									</div>




								</form>


							</div>


						</div>

					</div>


				</div>

			</div>

			<script
				src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js"
				referrerpolicy="origin"></script>

			<script>
				tinymce.init({
					selector : '#mytextarea'
				});
			</script>


		</section>
	</div>
</body>
</html>