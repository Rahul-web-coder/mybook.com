<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>mybook.com | Sign In</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/grid.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="css/NewFile.css">

<script type="text/javascript">
	function validateUser() {
		var d1 = document.getElementById("Email");
		var d2 = document.getElementById("Password");
		var e1 = document.getElementById("er1");
		var e2 = document.getElementById("er2");
		e1.textContent = "";
		e2.textContent = "";
		ret_value = true;
		if (!d1.value || d1.value.lenght === 0) {
			//alert("User id must be entered...");
			e1.textContent = "*This field is required";
			ret_value = false;
		}

		const regex = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;

		if (d1.value && !regex.test(d1.value)) {
			//alert("User id must be entered...");
			e1.textContent = "*This email is invalid";
			ret_value = false;
		}

		if (!d2.value || d2.value.lenght === 0) {
			//alert("Password must be entered...");
			e2.textContent = "*This field is required";
			ret_value = false;
		}
		return ret_value;
	}
</script>
</head>
<body>


	<%@
		include file="navbar.jsp"
	%>

 <form action="../login" method="post">
	<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
		<div class="card card0 border-0">
			<div class="row d-flex">
				<div class="col-lg-6">
					<div class="card1 pb-5">
						<div class="row">
							<img src="https://i.imgur.com/CXQmsmF.png" class="logo">
						</div>
						<div class="row px-3 justify-content-center mt-4 mb-5 border-line">
							<img src="https://i.imgur.com/uNGdWHi.png" class="image">
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card2 card border-0 px-4 py-5">
						<div class="row mb-4 px-3">
							<h6 class="mb-0 mr-4 mt-2">Sign in with</h6>
							<div class="facebook text-center mr-3">
								<div class="fa fa-facebook"></div>
							</div>
							<div class="twitter text-center mr-3">
								<div class="fa fa-twitter"></div>
							</div>
							<div class="linkedin text-center mr-3">
								<div class="fa fa-linkedin"></div>
							</div>
						</div>
						<div class="row px-3 mb-4">
							<div class="line"></div>
							<small class="or text-center">Or</small>
							<div class="line"></div>
						</div>
						<div class="row px-3">
							<label class="mb-1">
								<h6 class="mb-0 text-sm">Email Address</h6>
							</label> <input class="mb-4" type="text" name="Email" id="Email"
								placeholder="Enter a valid email address">
							<span style='color:red' id='er1'></span>
						</div>
						<div class="row px-3">
							<label class="mb-1">
								<h6 class="mb-0 text-sm">Password</h6>
							</label> <input type="password" name="Password" id="Password"
								placeholder="Enter password">
							<span style='color:red' id='er2'></span>
						</div>
						<div class="row px-3 mb-4">
							<div class="custom-control custom-checkbox custom-control-inline">
								<input id="chk1" type="checkbox" name="chk"
									class="custom-control-input"> <label for="chk1"
									class="custom-control-label text-sm">Remember me</label>
							</div>
							<a href="#" class="ml-auto mb-0 text-sm">Forgot Password?</a>
						</div>
						<div class="row mb-3 px-3">
							<button type="submit" class="btn btn-blue text-center" onclick='return validateUser()'>Login</button>
						</div>
						<div class="row mb-4 px-3">
							<small class="font-weight-bold">Don't have an account? <a
								class="text-danger " href="staffSignUp.jsp">Register</a></small>
						</div>
					</div>
				</div>
			</div>
			<div class="bg-blue py-4">
				<div class="row px-3">
					<small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2019. All
						rights reserved.</small>
					<div class="social-contact ml-4 ml-sm-auto">
						<span class="fa fa-facebook mr-4 text-sm"></span> <span
							class="fa fa-google-plus mr-4 text-sm"></span> <span
							class="fa fa-linkedin mr-4 text-sm"></span> <span
							class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>	


</body>
</html>