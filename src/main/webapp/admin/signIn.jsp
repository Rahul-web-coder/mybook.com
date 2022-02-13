<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>mybook.com | Admin SignIn</title>
	<link rel="stylesheet" href="css/signIn.css">
	
</head>
<body>
	
    <nav class="navbar">
      <div class="container">
    
        <div class="navbar-header">
          
          <a href="#">
            <img style="border-radius: 20%;margin-left: 10px" alt=""  src="../images/favicon_io/favicon-32x32.png"><b style="font-size: 35px">mybook<span style="color:brown;">.com</span></b>
          </a>
        </div>
    
      </div>
    </nav>



    <div class="main">
      <p class="sign" align="center">Sign in</p>
      <form action="../adminLoginServ" method="post" class="form1">
        <input class="un" name="email" type="text" align="center" placeholder="Useremail">
        <input class="pass" name="password" type="password" align="center" placeholder="Password">
        <button class="submit" align="center" href="#">Sign in</button>
        <p class="forgot" align="center"><a href="#">Forgot Password?</p>
      </form>        
                  
    </div>
	

</body>
</html>