


<nav class=" fixed-top navbar navbar-expand-lg navbar-dark  bg-primary">
	<a class="navbar-brand" href="#">Contact Manager</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="search-container m3-5">
		<input onkeyup="search()" id="search-input" type="text"
			class="form-control" placeholder="Search your contacts" />
		<div class="search-result">
			<!--  result goes here -->
		</div>
	</div>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto text-uppercase">

			<li class="nav-item active"><a class="nav-link"
				href="/user/index"><b>Home</b> <span class="sr-only">(current)</span>
			</a></li>

			<li class="nav-item"><a class="nav-link " href="/user/profile"
				tabindex="-1" aria-disabled="true"><i class="fas fa-user-circle"></i><span>${user.name}</span></a></li>
			<li class="nav-item"><a class="nav-link " href="/logout"
				tabindex="-1" aria-disabled="true">Logout</a></li>
		</ul>
	</div>
</nav>