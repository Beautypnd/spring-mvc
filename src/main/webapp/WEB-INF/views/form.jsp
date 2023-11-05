<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
<style type="text/css">
*{
margin: 0%;
padding: 0%;
box-sizing: border-box;
}
body{
display:flex;
justify-content:center;
align-items: center;
flex-direction: column;
}
form {
	height: 400px;
	width: 300px;
	background: gray;
	line-height:50px;
}

</style>
</head>
<body>
	<form action="regi">
		Name:<input type="text" name="name" placeholder="Enter name"><br>
		Email:<input type="email" name="email" placeholder="Enter email"><br>
		Phone:<input type="tel" name="phone" placeholder="Enter phonee"><br>
		Age:   <input type="number" name="age" placeholder="Enter age"><br>
	    Gender:Male<input type="radio" name="gender" value="male"> Female<input
			type="radio" name="gender" value="female"><br>
		Password:<input type="password" name="password"
			placeholder="Enter password"><br> <input type="submit"
			value="Register">

	</form>
</body>
</html>