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
					<h1 class="text-center">Add Contact</h1>
					<div class="container-fluid mt-1">
					<div class="${message.type}">${message.content}</div>
						<div class="row">
							<div class="col-md-8 offset-md-2">
								<form action="process-contact" 
									enctype="multipart/form-data" method="POST"
									 class="mt-2">
									<!-- First Name  -->
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text ">
												<i class="fa fa-plus"></i>
											</div>
										</div>
										<input required type="text" id="firstName" name="name"
											placeholder="Enter Name here" class="form-control" />

									</div>
									<!-- Second Name  -->
									<div class="input-group mt-3">
										<div class="input-group-prepend">
											<div class="input-group-text ">
												<i class="fas fa-user-alt"></i>
											</div>
										</div>
										<input required type="text" id="secondName" name="secondName"
											placeholder="Enter Nick Name here" class="form-control" />
									</div>
									<!-- Phone Field -->
									<div class="input-group mt-3">
										<div class="input-group-prepend">
											<div class="input-group-text ">
												<i class="fa fa-phone"></i>
											</div>
										</div>
										<input required min="10" type="number" id="phone" name="phone"
											placeholder="Enter Phone Number  here" class="form-control" />
									</div>
									<!-- Email Field  -->
									<div class="input-group mt-3">
										<div class="input-group-prepend">
											<div class="input-group-text ">@</div>
										</div>
										<input required type="email" id="email" name="email"
											placeholder="Enter email here" class="form-control" />
									</div>
									<!--  Work Field -->
									<div class="input-group mt-3">
										<div class="input-group-prepend">
											<div class="input-group-text ">
												<i class="fa fa-briefcase"></i>
											</div>
										</div>
										<input required type="text" id="work" name="work"
											placeholder="Enter work here" class="form-control" />
									</div>
									<!-- Contact Description -->
									<div class="form-group mt-3">
										<textarea id="mytextarea"
											placeholder="Enter contact description" name="description"
											class="form-control" rows="10"></textarea>
									</div>
									<!-- Contact Image  -->
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
        selector: '#mytextarea'
      });
    </script>

			<script>
        $(document).ready(() => {
          $(".item").removeClass("active");
          $("#add-link").addClass("active");
        });
      </script>
		</section>
	</div>
</body>
</html>