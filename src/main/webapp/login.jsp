<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Login</title>
<style>
	.loginform {
		display: flex;
        justify-content: center;
	}
</style>
</head>
<body>
	
	<div class="loginform">
		<form action="Login" method="post">
			<b>Enter username :</b> <input type="text" name="uname" class="my-3"><br>
			<b> Enter password :</b> <input type="password" name="pass" class="my-1"><br>
			<input class="btn btn-success my-3" type="submit" value="login">
		</form>
	</div>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>