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
					<div class="card-body my-5">
					<div class="${message.type}">${message.content}</div>
						<div class="container text-center">
							<img src="/img/contact_logo.png" style="height: 200px; width: 200px"
								class="my_profile_picture"
								alt="profile photo" />
						</div>

						<h1
							class="text-center mt-3 text-secondary font-italic font-weight-light">
							Start Adding your contact on cloud...</h1>

						<a href="user/add-contact"
							class="btn btn-primary mt-4 btn-block text-uppercase">Add New
							Contact</a>

						<hr />

						<h3 class="my-3">Donate Us</h3>
						<input id="payment_field" type="text" class="form-control my-2"
							placeholder="Enter amount here" />

						<div class="container text-center mt-3">
							<button onclick="paymentStart()"
								class="btn btn-success btn-block">Checkout</button>
						</div>

					</div>
				</div>
			</div>

			<script>
        $(document).ready(() => {
          $(".item").removeClass("active");
          $("#home-link").addClass("active");
        });
      </script>
			<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
		</section>
	</div>
</body>
</html>