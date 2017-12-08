<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="resources/js/popper.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>



<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		<a class="navbar-brand" href="#">Student Info System</a>
		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			</ul>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active"><a class="nav-link" href="studentcontroller?actions=student_list">Student
						<span class="sr-only">(current)</span>
				</a></li>
				</ul>
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link" href="#">User
							<span class="sr-only">(current)</span>
					</a></li>
					</ul>
					<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">Welcome</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">${username}</a>
					</li>
					</ul>		
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item"><a class="nav-link disabled"
						href="LoginController">Logout</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						 placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0"  type="submit">Search</button>
				</form>
	</div>
</nav>