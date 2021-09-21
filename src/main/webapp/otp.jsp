<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.*"%>


<%
HttpSession ht = request.getSession(false);

String email = (String) ht.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OTP</title>
<link rel="stylesheet" href="css/otp.css">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/grid.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

<!--  NAvbar -->
	<%@ include file="navbar.jsp" %>
<form action="userregisterservlet" method="post">
<div class="container height-100 d-flex justify-content-center align-items-center">
    <div class="position-relative">
        <div class="card p-2 text-center">
            <h6>Please enter the one time otp <br> to verify your account</h6>
            <div> <span>A code has been sent to </span> <small><%=email %></small> </div>
            <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2">
               <input class="m-2 text-center form-control rounded" type="text" id="first" name="first" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="second" name="second" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="third" name="third" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="fourth" name="fourth" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="fifth" name="fifth" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="sixth" name="sixth" maxlength="1" />
            </div>
            <div class="mt-4"> <button class="btn btn-danger px-4 validate">Validate</button> </div>
        </div>
        <div class="card-2">
            <div class="content d-flex justify-content-center align-items-center"> 
            <span>Didn't get the code</span> 
            <a href="#" class="text-decoration-none ms-3">Resend(1/3)</a>
             </div>
        </div>
    </div>
</div>
</form>
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function(event) {

	function OTPInput() {
	const inputs = document.querySelectorAll('#otp > *[id]');
	for (let i = 0; i < inputs.length; i++) { inputs[i].addEventListener('keydown', function(event) { if (event.key==="Backspace" ) { inputs[i].value='' ; if (i !==0) inputs[i - 1].focus(); } else { if (i===inputs.length - 1 && inputs[i].value !=='' ) { return true; } else if (event.keyCode> 47 && event.keyCode < 58) { inputs[i].value=event.key; if (i !==inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } else if (event.keyCode> 64 && event.keyCode < 91) { inputs[i].value=String.fromCharCode(event.keyCode); if (i !==inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } } }); } } OTPInput(); });
</script>

</body>
</html>